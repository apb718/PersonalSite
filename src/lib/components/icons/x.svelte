<script lang="ts">
	import Lucide from './lucide.svelte';
	const { ...rest } = $props();
</script>

<Lucide {...rest}>
	<line x1="18" y1="6" x2="6" y2="18" />
	<line x1="6" y1="6" x2="18" y2="18" />
</Lucide>