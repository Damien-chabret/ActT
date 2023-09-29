<script>
    let test = "caca";

    function handleInput(e){
        test = e.target.value; // e.target = valeur de l'input
    }
</script>

<div>
    <input type="text" id="inp" on:input={handleInput} value={test} > 
    <p> { test }</p>
</div>

<style>
    
</style>