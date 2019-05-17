/* eslint-disable import/no-extraneous-dependencies */
/* eslint-disable global-require */
const purgecss = require("@fullhuman/postcss-purgecss");
const glob = require("glob-all");
const path = require("path");

module.exports = {
    plugins: [
        require("tailwindcss")("tailwind.js"),
        require("autoprefixer")(),
        process.env.NODE_ENV === "production"
            ? purgecss({
                  content: ["./src/**/*.vue", "./../resources/**/*.blade.php"],
                  extractors: [
                      {
                          extractor: class {
                              static extract(content) {
                                  return (
                                      content.match(/[a-zA-Z0-9-:_/]+/g) || []
                                  );
                              }
                          },
                          extensions: ["vue", "html", "php"]
                      }
                  ],

                  // Example of when you have a package dependency that may have styles
                  // that you don't want to cut out. Purge will scan these files and prevent
                  // them from being purged.
                  paths: glob.sync([
                      path.join(__dirname, "node_modules/tiny-slider/**/*.js"),
                      path.join(__dirname, "node_modules/tiny-slider/**/*.css")
                  ]),

                  // Leave mobile, tablet, desktop, largeDesktop, and ultraWideDesktop as
                  // Those are Devise breakpoints. In this example "/tns-*/" is just an
                  // example for tinyslider and can be removed
                  whitelistPatterns: [
                      /mobile/,
                      /tablet/,
                      /desktop/,
                      /largeDesktop/,
                      /ultraWideDesktop/,
                      /tns-*/
                  ]
              })
            : ""
    ]
};
