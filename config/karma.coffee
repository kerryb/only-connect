module.exports = (config) ->
  config.set
    basePath: ".."
    frameworks: ["jasmine"]

    files: [
      "src/js/angular.min.js",
      "src/js/angular-animate.js",
      "src/js/angular-route.js",
      "spec/support/angular-mocks.js",
      "src/coffeescript/onlyConnectApp.coffee",
      "src/coffeescript/controllers/**/*.coffee",
      "src/coffeescript/services/**/*.coffee",
      "spec/**",
    ]
    exclude: []

    reporters: ["progress"]
    port: 9876
    runnerPort: 9100
    colors: true
    logLevel: config.LOG_INFO
    autoWatch: true
    browsers: ["PhantomJS"]
    captureTimeout: 60000
    singleRun: false
