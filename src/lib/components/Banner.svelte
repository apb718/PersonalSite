<script>
	const { imageUrl = '', text = '', alt = ''} = $props();
</script>

<div id="banner" class="relative h-[40vh] overflow-hidden">
	<img
		src="{imageUrl}"
		alt="{alt}"
		class="absolute top-1 left-1/2 transform -translate-x-1/2 -translate-y-1/2 w-screen min-h-[30vh] object-cover object-center"
	/>
	<div class="absolute top-1/2 left-1/2 transform -translate-x-1/2 -translate-y-1/2
	 					text-white text-4xl font-bold text-center  [text-shadow:_0_4px_8px_rgba(0,0,0,0.7)]">
		{text}
	</div>
</div>