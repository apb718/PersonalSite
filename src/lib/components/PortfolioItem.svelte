<script lang="ts">
	import PortfolioDialog from './PortfolioDialog.svelte';

	// Define the item data type
	type PortfolioItemData = {
		title: string;
		description: string;
		imageUrl?: string;
		technologies: string[];
		link?: string;
	};

	const {
		size = "1x1",
		color = 'bg-apb-b',
		className = '',
		content = "",
		// Add the portfolio item details
		itemData = {} as PortfolioItemData
	} = $props();

	// State for dialog
	let dialogOpen = $state(false);

	// Handler for opening dialog
	function handleOpenDialog() {
		dialogOpen = true;
	}

	// Handler for closing dialog
	function handleCloseDialog(value: boolean) {
		dialogOpen = value;
	}
</script>

<!-- Compute grid span based on size -->
<div
	class={`flex items-center justify-center text-center text-2xl font-bold cursor-pointer
    hover:opacity-90 transition-opacity duration-300 ${color} ${className}
    ${size === "2x2" ? "col-span-2 row-span-2" : ""}
    ${size === "1x2" ? "row-span-2" : ""}
    ${size === "2x1" ? "col-span-2" : ""}
  `}
	on:click={handleOpenDialog}
	on:keydown={(e) => e.key === 'Enter' && handleOpenDialog()}
	tabindex="0"
	role="button"
	aria-label={`View details for ${content}`}
>
	<!-- Content displayed in the grid -->
	{content}
</div>

<!-- Portfolio Dialog for this item -->
<PortfolioDialog
	open={dialogOpen}
	onOpenChange={handleCloseDialog}
	title={itemData.title || content}
	description={itemData.description || ""}
	imageUrl={itemData.imageUrl || ""}
	technologies={itemData.technologies || []}
	link={itemData.link || ""}
/>