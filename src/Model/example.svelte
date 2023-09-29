<script>
    let test = "caca";
    let firstName = "damien";
    let lastName = "chabret";

    // reactive value
    $: fullname = `${firstName} ${lastName}`;

    // Gère l'input
    function handleInput(e){
        test = e.target.value; // e.target = valeur de l'input
    }
</script>

<div>
    <input type="text" id="inp" on:input={handleInput} value={test} > 
    <input type="text" bind:value={firstName} >
    <input type="text" bind:value={lastName} >
    <p> { test }</p>
    <p> { fullname }</p>
</div>

<style>
    
</style>