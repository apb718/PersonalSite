<script lang="ts">
	import PortfolioItem from "$lib/components/PortfolioItem.svelte";

	// Portfolio data for each project
	const portfolioData = [
		{
			content: "Chicago Raw Food",
			size: "1x2",
			color: "bg-apb-y",
			className: "",
			itemData: {
				title: "Chicago Raw Food",
				description: "A web application for a Chicago-based raw food delivery service. Features include online ordering, subscription management, and nutritional information.",
				technologies: ["React", "Node.js", "Express", "MongoDB", "Stripe"],
				link: "#",
			}
		},
		{
			content: "CME Group",
			size: "2x2",
			color: "bg-apb-b",
			className: "text-white",
			itemData: {
				title: "CME Group",
				description: "Worked as part of the team developing financial market data visualization tools and trading platforms for CME Group, one of the world's leading derivatives marketplaces.",
				technologies: ["TypeScript", "Angular", "D3.js", "Java", "Spring Boot"],
				link: "#",
			}
		},
		{
			content: "Theta Tau Website",
			size: "2x1",
			color: "bg-apb-y",
			className: "",
			itemData: {
				title: "Theta Tau Website",
				description: "Redesigned and developed the website for Theta Tau, the professional engineering fraternity at my university. Implemented member management and event scheduling features.",
				technologies: ["Svelte", "SvelteKit", "TailwindCSS", "Supabase"],
				link: "#",
			}
		},
		{
			content: "Course Work",
			size: "1x1",
			color: "bg-apb-g",
			className: "",
			itemData: {
				title: "Course Work",
				description: "A collection of academic projects completed during my computer science program, including assignments in data structures, algorithms, machine learning, and web development.",
				technologies: ["Python", "Java", "C++", "TensorFlow", "React"],
				link: "#",
			}
		}
	];
</script>

<div id="portfolio" class="py-16 px-4">
	<h2 class="text-3xl font-bold text-center mb-12">Portfolio</h2>

	<div class="flex justify-center">
		<div class="grid grid-cols-3 grid-rows-3 gap-4 w-full xl:w-3/4 h-[40vh] p-4 transition-all duration-500 ease-in-out">
			{#each portfolioData as item}
				<PortfolioItem
					size={item.size}
					color={item.color}
					content={item.content}
					className={item.className}
					itemData={item.itemData}
				/>
			{/each}
		</div>
	</div>
</div>