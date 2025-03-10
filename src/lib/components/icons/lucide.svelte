<script lang="ts">
	import type { IconNode } from 'lucide-svelte';
	import { cn } from '$lib/utils';

	const {
		strokeWidth = 2,
		size = 24,
		class: className = '',
		...rest
	} = $props<{
		strokeWidth?: number;
		size?: number;
		class?: string;
		[key: string]: any;
	}>();

	let svgWidth: string;
	let svgHeight: string;
	let viewBox: string;
	let icon: IconNode;
	let componentName: string;

	$effect(() => {
		if (typeof size === 'number') {
			svgWidth = `${size}px`;
			svgHeight = `${size}px`;
		} else {
			svgWidth = size;
			svgHeight = size;
		}
		viewBox = `0 0 24 24`;
	});
</script>

<svg
	xmlns="http://www.w3.org/2000/svg"
	width={svgWidth}
	height={svgHeight}
	viewBox={viewBox}
	fill="none"
	stroke="currentColor"
	stroke-width={strokeWidth}
	stroke-linecap="round"
	stroke-linejoin="round"
	class={cn('lucide-icon', className)}
	{...rest}
>
	{#if icon}
		{@html icon?.toString()}
	{/if}
	<slot />
</svg>