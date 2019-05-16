module.exports = {
    app: {
        // Styles coming from style tags in your components
        // if you wish to do that
        entry: "src/main.js",
        template: "public/index.html",
        filename: "index.html",
        title: "App"
    },
    global: {
        // Styles generated from globals.scss THROUGH globals.js
        entry: "src/styles/globals.js",
        template: "public/index.html",
        filename: "index.html",
        title: "App"
    },
    essentials: {
        // Styles generated from essentials.scss THROUGH essentials.js
        entry: "src/styles/essentials.js",
        template: "public/index.html",
        filename: "index.html",
        title: "Essential"
    }
};
