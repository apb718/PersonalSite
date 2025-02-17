<script lang="ts">
	import PortfolioItem from '$lib/Components/PortfolioItem.svelte';
</script>

<!--Chevrons that slide from side to side -->
<!--Grid with elements that are 1x1, 2x2, 1x2 for projects-->
<div id="portfolio" class="flex justify-center">
	<div class="grid grid-cols-3 grid-rows-3 gap-4 w-full xl:w-3/4  p-4">
		<PortfolioItem size="1x2" color="bg-apb-y" content="Chicago Raw Food"></PortfolioItem>
		<PortfolioItem size="2x2" color="bg-apb-b" content="CME Group" className="text-white"></PortfolioItem>
		<PortfolioItem size="2x1" color="bg-apb-y" content="Theta Tau Website"></PortfolioItem>
		<PortfolioItem size="1x1" color="bg-apb-g" content="Course Work"></PortfolioItem>
	</div>
</div>