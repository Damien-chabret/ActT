<script>
    import { destroy_each } from "svelte/internal";
    import Example from "./Model/example.svelte";
    import Activites from "./Model/activites/activites.svelte";
</script>

<main>
	<h1> {name} </h1>

	<!-- <Activites></Activites> -->

	<Example></Example>
</main>

<style>
	main {
		text-align: center;
		padding: 1em;
		max-width: 240px;
		margin: 0 auto;
	}

	h1 {
		color: #ff3e00;
		text-transform: uppercase;
		font-size: 4em;
		font-weight: 100;
	}

	@media (min-width: 640px) {
		main {
			max-width: none;
		}
	}
</style>