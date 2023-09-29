<script>
    import { destroy_each } from "svelte/internal";
    import Activite from "./activite/activite.svelte";
    

	let activities = [
		{name : "Skateboard", description : "Pratique du skateboard"},
		{name : "Cuisine", description : "Pratique de la cuisine"},
		{name : "Cuisine", description : "Jouer aux jeux videos"}
	]
</script>

<main>
	
	{#each activities as activite}  <!-- Présence d'activités -->
        <Activite name={activite.name} description={activite.description}> </Activite>
	{:else}  <!-- Aucune activités -->
		<p> No activity </p>
	{/each}
    
</main>

<style>
	
</style>