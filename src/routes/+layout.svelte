<script lang="ts">
	import '../app.css';
	import Navbar from '$lib/Components/Navbar.svelte';
	import Footer from '$lib/Components/Footer.svelte';
	import 'iconify-icon';
	let { children } = $props();
</script>



<Navbar />

{@render children()}

<Footer />
