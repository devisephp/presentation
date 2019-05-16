<template>
    <div id="app">
        <!-- <img src="./assets/logo.png">
    <HelloWorld msg="Welcome to Your Vue.js App"/> -->
        <div class="reveal">
            <div class="slides">
                <section>Single Horizontal Slide</section>
                <section>
                    <section>Vertical Slide 1</section>
                    <section>Vertical Slide 2</section>
                </section>
            </div>
        </div>
    </div>
</template>

<script>
// import HelloWorld from './components/HelloWorld.vue'
import Reveal from "reveal.js/js/reveal";
export default {
    name: "app",
    components: {
        // HelloWorld
    },
    mounted() {
        Reveal.initialize();
    }
};
</script>
