<script lang="ts">
	import '../app.css';
	import Navbar from '$lib/Components/Navbar.svelte';
	import Footer from '$lib/Components/Footer.svelte';
	import 'iconify-icon';
	import Banner from '$lib/Components/Banner.svelte';
	import BannerImg from '$lib/assets/images/mountain-top.jpeg';
	let { children } = $props();
</script>

<Navbar />
<Banner imageUrl={BannerImg} alt="Welcome Banner" text="Welcome" />

{@render children()}

<Footer />
