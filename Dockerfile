# syntax=docker/dockerfile:1

# --- Build stage ---
FROM node:24-slim AS build
WORKDIR /app

# Pin pnpm to match the packageManager field
RUN npm i -g pnpm@12.15.0

COPY . .

RUN --mount=type=cache,id=pnpm-store,target=/root/.local/share/pnpm/store \
    pnpm i --frozen-lockfile
RUN pnpm build

# --- Runtime stage ---
FROM node:24-slim
WORKDIR /app
ENV NODE_ENV=production

COPY --from=build /app/.output ./.output

EXPOSE 3000
# node -e fetch instead of curl/wget: node:24-slim ships neither, and Coolify
# needs an in-image HEALTHCHECK to report container health
HEALTHCHECK --interval=30s --timeout=5s --start-period=10s --retries=3 \
  CMD node -e "fetch('http://localhost:3000/').then(r => process.exit(r.ok ? 0 : 1)).catch(() => process.exit(1))"
CMD ["node", ".output/server/index.mjs"]
