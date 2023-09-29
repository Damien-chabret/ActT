<script>
    export let name;
    export let description;
    let colorSc = "red";
    let activityTimer = 0.0;
    let activityTimerFormat = "00:00";
    let activityBool = false;

    var interval;
    /**
     * Function that start a timer 
     */
    function startActivity(){
        interval = setInterval(addSeconds, 1000);
        
    };

    /**
     * Rajoute des secondes à l'activité
    */
    function addSeconds(){
        activityTimer++;
        getTimer();
    }

    /**
     * Function that stop the timer
     */
    function stopActivity(){
        activityBool = false;
        clearInterval(interval);
    };

    /**
     * Affiche correctement le timer
     */
    const getTimer = () => {
        let minutes = parseInt(activityTimer / 60, 10);
        let seconds = parseInt(activityTimer % 60, 10);
        if(minutes < 10){
            minutes = "0" + minutes;
        }
        if(seconds < 10){
            seconds = "0" + seconds;
        }
        activityTimerFormat = minutes + ":" + seconds;
    }

</script>

<div class="activity">
    <h1> { name } </h1>
    <p> { description }</p>

    <button on:click={startActivity}> Start </button>
    <button on:click={stopActivity}> Stop </button>

    <p> {activityTimerFormat} </p>
</div>

<style scoped>
h1 {
    color: red;
}

.activity{
    background-color: wheat;
    width: 200px;
    height: 200px;

}
</style>