/**
 * First we will load all of this project's JavaScript dependencies which
 * includes Vue and other libraries. It is a great starting point when
 * building robust, powerful web applications using Vue and Laravel.
 */
import Vue from "vue";

// Devise requires a bus, vue-router and vuex. We initialize these in your application
// so that both apps can share the same store and router. All devise vuex
// is namespaced under the "devise" namespace.
import { sync } from "vuex-router-sync";

// Inclue Devise Interface
import Devise from "devisephp-interface";

// Vuex, Router, Bus
import store from "./store";
import router from "./router";
import EventBus from "./event-bus";

// Ugh... Reveal requires this for plugins to work
window.Reveal = require("reveal.js/js/reveal");

/**
 * Import any global components that we need
 * You'll need to name the tag, provide the chunk name, and point it to the
 * single file component file
 */
// eslint-disable-next-line max-len
Vue.component("reveal-presentation", () =>
    import(
        /* webpackChunkName: "app-presentation" */ "./components/RevealPresentation.vue"
    )
);
Vue.component("side-gradient", () =>
    import(
        /* webpackChunkName: "app-presentation" */ "./components/SideGradient.vue"
    )
);
Vue.component("three-d-logos", () =>
    import(/* webpackChunkName: "app-presentation" */ "./components/Logos.vue")
);
Vue.component("three-d-scene", () =>
    import(/* webpackChunkName: "app-presentation" */ "./components/Scene.vue")
);

// Load axios for http requests and add the Laravel CSRF token to the headers
window.axios = require("axios");

window.axios.defaults.headers.common["X-Requested-With"] = "XMLHttpRequest";
const token = document.head.querySelector('meta[name="csrf-token"]');
if (token) {
    window.axios.defaults.headers.common["X-CSRF-TOKEN"] = token.content;
} else {
    // eslint-disable-next-line no-console
    console.error(
        "CSRF token not found: https://laravel.com/docs/csrf#csrf-x-csrf-token"
    );
}

Vue.config.productionTip = false;

window.bus = EventBus;
sync(store, router);
Vue.use(Devise, {
    store,
    router,
    bus: window.bus,
    options: {
        adminClass: ""
    }
});

// eslint-disable-next-line no-unused-vars
const app = new Vue({
    el: "#app",
    router,
    mounted() {
        this.appLoaded();
    },
    methods: {
        appLoaded() {
            window.deviseSettings.$bus.$on("devise-loaded", () => {});
        }
    }
});
