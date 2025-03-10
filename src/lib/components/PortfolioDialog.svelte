<script lang="ts">
	import * as Dialog from '$lib/components/ui/dialog';

	// Portfolio item details props
	let {
		open = false,
		onOpenChange,
		title = "",
		description = "",
		imageUrl = "",
		technologies = [],
		link = ""
	} = $props();
</script>

<Dialog.Root bind:open {onOpenChange}>
	<Dialog.Portal>
		<Dialog.Overlay />
		<Dialog.Content class="max-w-3xl overflow-hidden bg-white dark:bg-gray-800">
			<!-- Close button - with increased z-index and more visible styling -->
			<div class="relative w-full">
			</div>

			<div class="grid grid-cols-1 md:grid-cols-2 pt-12 md:pt-0">
				<!-- Image section -->
				<div class="relative h-64 md:h-auto">
					{#if imageUrl}
						<img
							src={imageUrl}
							alt={title}
							class="h-full w-full object-cover"
						/>
					{:else}
						<div class="flex items-center justify-center h-full w-full bg-apb-b text-apb-y">
							<span class="text-xl font-bold">{title}</span>
						</div>
					{/if}
				</div>

				<!-- Content section -->
				<div class="p-6 bg-white dark:bg-gray-800">
					<Dialog.Header>
						<Dialog.Title class="text-2xl font-bold text-apb-b dark:text-apb-y">
							{title}
						</Dialog.Title>
					</Dialog.Header>

					<Dialog.Description class="mt-4 text-base text-gray-700 dark:text-gray-300">
						{description}
					</Dialog.Description>

					{#if technologies.length > 0}
						<div class="mt-6">
							<h3 class="text-sm font-semibold text-gray-900 dark:text-gray-100">Technologies</h3>
							<div class="mt-2 flex flex-wrap gap-2">
								{#each technologies as tech}
                  <span class="inline-flex items-center px-2.5 py-0.5 rounded-full text-xs font-medium bg-blue-100 text-blue-800 dark:bg-blue-800 dark:text-blue-100">
                    {tech}
                  </span>
								{/each}
							</div>
						</div>
					{/if}

					{#if link}
						<Dialog.Footer class="mt-6">
							<a
								href={link}
								target="_blank"
								rel="noopener noreferrer"
								class="inline-flex items-center justify-center px-4 py-2 border border-transparent text-sm font-medium rounded-md text-white bg-apb-b hover:bg-apb-g focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-apb-y"
							>
								View Project
							</a>
						</Dialog.Footer>
					{/if}
				</div>
			</div>
		</Dialog.Content>
	</Dialog.Portal>
</Dialog.Root>