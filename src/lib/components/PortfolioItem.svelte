<script>


	const { size = "1x1", color = 'bg-apb-b', className='', content} = $props();
</script>

<!-- Compute grid span based on size -->
<div class={`flex items-center justify-center text-2xl font-bold h-200 ${color} ${className}
		${size === "2x2" ? "col-span-2 row-span-2" : ""}
		${size === "1x2" ? "row-span-2" : ""}
		${size === "2x1" ? "col-span-2" : ""}
	`}>
	<!-- Slot for content -->
	{content}
</div>
