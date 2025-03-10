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
				description: "A website for a Chicago-based raw food company. Features include online ordering, nutritional information, and a backend to support order management and changes.",
				technologies: ["Sveltekit", "Full-Stack Development", "Shadcn", "HTML/CSS/JS/TS", "Vercel", "tailwind", "Stripe", "MySQL"],
				imageUrl: "src/lib/assets/images/raw.webp",
				link: "https://chicago-raw-food.vercel.app/",
			}
		},
		{
			content: "CME Group",
			size: "2x2",
			color: "bg-apb-b",
			className: "text-white",
			itemData: {
				title: "CME Group",
				description: "Worked on a team of field engineers who manage and maintain servers for CME Group's high-frequency trading servers.  Companies included are 3Red, Jump, Akuna Capital, and international clients.",
				technologies: ["Hardware Troubleshooting", "HFT Server Management", "Linux CLI", "Customer Service", "Networking"],
				imageUrl: "src/lib/assets/images/CME.webp",
				// link: "#",
			}
		},
		{
			content: "Theta Tau Website",
			size: "2x1",
			color: "bg-apb-b",
			className: "text-white",
			itemData: {
				title: "Theta Tau Website",
				description: "Redesigned and developed the website for Theta Tau, the professional engineering fraternity at my university. Implemented CI/CD pipelines for preview, and focused on modifying to make site more maintainable. This primarly regarding rebuilding towrads a component architecture.",
				technologies: ["HTML/CSS/JS", "Firebase", "Github Actions", "Code Quality Assurance"],
				imageUrl: "src/lib/assets/images/thetatau.webp",
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
				description: "A collection of projects developed during my 3 years at Miami University.  Includes projects in C++, Python, and Java often revolving around creating maintainable code that is easy to read and understand.  Core ideas include OOP, data structures, algorithms, and data representation.",
				technologies: ["Java", "Python", "C++", "OOP", "Scikit-learn", "HPC", "Distributed Computing", "Networking", "Troubleshooting", "SDLC", "Docker", "DLV/Prolog" ],
				link: "#",
				imageUrl: "src/lib/assets/images/miami.webp",
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
					imageUrl={item.imageUrl || null}
				/>
			{/each}
		</div>
	</div>
</div>