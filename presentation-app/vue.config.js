// eslint-disable-next-line import/no-extraneous-dependencies
const webpack = require("webpack");
// Creates a manifest file
const WebpackAssetsManifest = require("webpack-assets-manifest");
// Public can be anything you want. We typically put ours in "app"
// because we work on multiple projects and it makes less confusion about where
// things should be living.
const publicDirectory = "app";

// Development url should match your Laravel Valet url
const developmentUrl = "http://devise-presentation.test";

const developmentPort = "8080";

const PagesObject = require("./buildpages.js");

module.exports = {
    outputDir: `../public/${publicDirectory}`,
    runtimeCompiler: true,
    filenameHashing: false,

    // Be sure to match "app" with whatever you set above and change
    publicPath:
        process.env.NODE_ENV === "production"
            ? `/${publicDirectory}`
            : `${developmentUrl}:${developmentPort}/${publicDirectory}/`,

    devServer: {
        disableHostCheck: true,
        useLocalIp: false,
        proxy: `http://localhost:${developmentPort}`,
        publicPath: `${developmentUrl}:${developmentPort}/${publicDirectory}/`,
        port: 8080,
        headers: { "Access-Control-Allow-Origin": "*" }
    },

    configureWebpack: {
        plugins: [
            new webpack.ProvidePlugin({
                $: "jquery",
                jquery: "jquery",
                "window.jQuery": "jquery",
                jQuery: "jquery"
            }),
            new WebpackAssetsManifest()
        ]
    },

    indexPath: undefined,
    pages: PagesObject,
    chainWebpack: config => {
        config.plugins.delete("prefetch");
        // TODO: Remove this workaround once https://github.com/vuejs/vue-cli/issues/2463 is fixed
        // Remove preload plugins for multi-page build to prevent infinite recursion
        Object.keys(PagesObject).forEach(page => {
            config.plugins.delete(`preload-${page}`);
            config.plugins.delete(`prefetch-${page}`);
        });
    },

    css: {
        extract: true
    }
};
