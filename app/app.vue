<script setup lang="ts">
const title = 'jKeel: the safe AI harness for Java teams'
const description = 'AI makes waves. jKeel keeps you steady. Rules, safety hooks, permissions and review steps that let Java teams use an AI coding agent without lowering quality.'
const githubUrl = 'https://github.com/jkeel-ai'

useHead({
  htmlAttrs: { lang: 'en' },
  link: [{ rel: 'icon', type: 'image/svg+xml', href: '/favicon.svg' }]
})

useSeoMeta({
  title,
  description,
  ogTitle: title,
  ogDescription: description,
  twitterCard: 'summary'
})
</script>

<template>
  <UApp>
    <UHeader :toggle="false">
      <template #title>
        <span class="flex items-center gap-2 font-display text-xl font-bold">
          <AppLogo class="size-8 text-primary" />
          <span><span class="text-primary">j</span>Keel</span>
        </span>
      </template>

      <template #right>
        <UColorModeButton />
        <UButton
          :to="githubUrl"
          target="_blank"
          icon="i-simple-icons-github"
          color="neutral"
          variant="ghost"
          aria-label="jKeel on GitHub"
        />
      </template>
    </UHeader>

    <UMain>
      <NuxtPage />
    </UMain>

    <UFooter>
      <template #left>
        <p class="text-sm text-muted">
          © 2026 jKeel. Java is a trademark of Oracle. Spring and Spring Boot are trademarks of Broadcom. jKeel is not affiliated with either.
        </p>
      </template>

      <template #right>
        <UButton
          :to="githubUrl"
          target="_blank"
          icon="i-simple-icons-github"
          color="neutral"
          variant="ghost"
          aria-label="jKeel on GitHub"
        />
      </template>
    </UFooter>
  </UApp>
</template>
