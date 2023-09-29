<script>
    import Activity from "./Model/activity/activity.svelte";
    import Example from "./Model/example.svelte";

	let name = "Act Time"
</script>

<main>
	<h1> {name} </h1>

	<Activity name="Skateboard" description="Pratique du skateboard"></Activity>
	<Activity name="Cuisine" description="Pratique de la cuisine"></Activity>
	<Activity name="Jeux-vidéos" description="Jouer aux jeux-vidéos"></Activity>

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