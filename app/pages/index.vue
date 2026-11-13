<script setup lang="ts">
const heroLinks = [
  {
    label: 'Follow on GitHub',
    to: 'https://github.com/jkeel-ai',
    target: '_blank',
    icon: 'i-simple-icons-github',
    size: 'xl' as const
  },
  {
    label: 'See what is coming',
    to: '#template',
    color: 'neutral' as const,
    variant: 'subtle' as const,
    trailingIcon: 'i-lucide-arrow-down',
    size: 'xl' as const
  }
]

const problems = [
  {
    icon: 'i-lucide-zap',
    title: 'Agents act fast',
    description: 'An AI coding agent can delete files, push to main or open a secrets file in seconds, long before anyone reviews it.'
  },
  {
    icon: 'i-lucide-scroll-text',
    title: 'Rules are only advice',
    description: 'A rules file tells the agent what you want. Nothing stops it when it gets that wrong. A harness adds checks that do.'
  },
  {
    icon: 'i-lucide-circle-help',
    title: 'Skills are unproven',
    description: 'Skills are instruction packs you add to an agent. They are free everywhere, but almost nobody measures whether one helps.'
  }
]

const templateParts = [
  {
    icon: 'i-lucide-scroll-text',
    title: 'Team rules',
    description: 'Ready-made rules files (CLAUDE.md and AGENTS.md) written for Java and Spring Boot projects.'
  },
  {
    icon: 'i-lucide-shield-check',
    title: 'Safety hooks',
    description: 'Small scripts that check each agent action before it runs. They block deleting files outside the project, pushing to main, touching secrets and editing CI or build credentials.'
  },
  {
    icon: 'i-lucide-lock-keyhole',
    title: 'Safe permissions',
    description: 'A safe default: the agent starts read-only. Guarded edits are the second step, when your team is ready.'
  },
  {
    icon: 'i-lucide-git-pull-request',
    title: 'Review check',
    description: 'A CI check that flags AI-written changes, so a person always reviews them before they merge.'
  },
  {
    icon: 'i-lucide-flask-conical',
    title: 'One tested skill',
    description: 'One skill, plus a simple way to test it: run the same tasks with and without the skill and compare the results.'
  }
]

const principles = [
  {
    icon: 'i-lucide-house',
    title: 'Nothing leaves your environment',
    description: 'The template is plain files in your own repository. It runs inside your own AI agent and sends nothing to us.'
  },
  {
    icon: 'i-lucide-book-open',
    title: 'Open source',
    description: 'Read every rule and every hook before you use it. No black box between your team and your code.'
  },
  {
    icon: 'i-lucide-coffee',
    title: 'Made for Java teams',
    description: 'Java 21 and up, Spring Boot and Maven first. Gradle support comes later.'
  },
  {
    icon: 'i-lucide-life-buoy',
    title: 'Honest about limits',
    description: 'Hooks are a seatbelt, not a sandbox. We say what they catch, what they miss and what you still need, such as branch protection.'
  }
]
</script>

<template>
  <div>
    <UPageHero
      description="The safe AI harness for Java teams: the rules, permissions, automatic checks and review steps that let you use an AI coding agent on a real codebase without lowering quality."
      :links="heroLinks"
    >
      <template #headline>
        <UBadge
          label="Open source · in the works"
          variant="subtle"
          size="lg"
          class="rounded-full"
        />
      </template>

      <template #title>
        <span class="font-display">AI makes waves.<br><span class="text-primary">jKeel keeps you steady.</span></span>
      </template>
    </UPageHero>

    <svg
      viewBox="0 0 1440 120"
      preserveAspectRatio="none"
      aria-hidden="true"
      class="h-24 w-full fill-none stroke-primary stroke-2"
    >
      <path
        class="opacity-30"
        vector-effect="non-scaling-stroke"
        d="M0,25 C120,-5 240,55 360,25 S600,-5 720,25 S960,55 1080,25 S1320,-5 1440,25"
      />
      <path
        class="opacity-60"
        vector-effect="non-scaling-stroke"
        d="M0,65 C120,50 240,80 360,65 S600,50 720,65 S960,80 1080,65 S1320,50 1440,65"
      />
      <path
        vector-effect="non-scaling-stroke"
        d="M0,105 L1440,105"
      />
    </svg>

    <UPageSection
      title="Your team wants AI. Your organisation is careful."
      description="Government, banks and insurers have good reasons to be cautious. The answer is not to ban AI agents, but to put a keel under them."
      :features="problems"
    />

    <USeparator />

    <UPageSection
      id="template"
      headline="First release · free"
      title="A template repo you can copy"
      description="We are building the first piece now: a free, open-source template with everything a team needs to start safely."
    >
      <UPageGrid>
        <UPageCard
          v-for="part in templateParts"
          :key="part.title"
          v-bind="part"
          variant="subtle"
        />
      </UPageGrid>
    </UPageSection>

    <USeparator />

    <UPageSection
      title="Steady, not slow"
      description="A keel keeps a boat on course without slowing it down. That is the idea behind every choice we make."
      :features="principles"
    />

    <UPageCTA
      title="Nothing to install yet"
      description="The template is being built in the open. Follow the GitHub organisation to see it land."
      variant="subtle"
      :links="[heroLinks[0]!]"
      class="rounded-none"
    />
  </div>
</template>
