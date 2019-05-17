<template>
    <div id="presentation">
        <div class="reveal">
            <div class="slides">
                <slot></slot>
            </div>
        </div>
    </div>
</template>

<script>
export default {
    name: "app",
    components: {},
    mounted() {
        Reveal.initialize({
            hash: true,
            dependencies: [
                // Interpret Markdown in <section> elements
                {
                    src: "/js/reveal.js/plugin/markdown/marked.js",
                    condition: function() {
                        return !!document.querySelector("[data-markdown]");
                    }
                },
                {
                    src: "/js/reveal.js/plugin/markdown/markdown.js",
                    condition: function() {
                        return !!document.querySelector("[data-markdown]");
                    }
                },

                // Syntax highlight for <code> elements
                {
                    src: "/js/reveal.js/plugin/highlight/highlight.js",
                    async: true
                },

                // Zoom in and out with Alt+click
                { src: "/js/reveal.js/plugin/zoom-js/zoom.js", async: true },

                // Speaker notes
                { src: "/js/reveal.js/plugin/notes/notes.js", async: true }
            ]
        });
    }
};
</script>

<style lang="scss">
@import url("../../node_modules/reveal.js/css/reveal.css");
@import url("../../node_modules/reveal.js/css/theme/white.css");
@import url("../../node_modules/reveal.js/lib/css/monokai.css");

#presentation {
    font-family: "Avenir", Helvetica, Arial, sans-serif;
    -webkit-font-smoothing: antialiased;
    -moz-osx-font-smoothing: grayscale;
    text-align: center;
    color: #2c3e50;
    /* margin-top: 60px; */
    height: 100vh;
}
</style>
