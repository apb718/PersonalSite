import { sveltekit } from '@sveltejs/kit/vite';
import { defineConfig } from 'vite';
<<<<<<< HEAD

export default defineConfig({
	plugins: [sveltekit()]
});
=======
import tailwindcss from '@tailwindcss/vite';


export default defineConfig({
	plugins: [
		tailwindcss(),
		sveltekit(),
	],
});
>>>>>>> origin/main
