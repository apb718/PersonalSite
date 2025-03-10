<script lang="ts">
	import '../app.css';
	import Navbar from '$lib/components/Navbar.svelte';
	import Footer from '$lib/components/Footer.svelte';
	import 'iconify-icon';
	import Banner from '$lib/components/Banner.svelte';

	let { children } = $props();
</script>

<Navbar />
<!--<div id="big" class="h-10000" style="height: 1000vh">e</div>-->
<Banner imageUrl="images/mountain-top.webp" alt="Welcome Banner" text="Welcome" />

{@render children()}

<Footer />
