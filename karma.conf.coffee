# Karma configuration
# Generated on Thu Jun 15 2017 16:06:19 GMT+0200 (CEST)

module.exports = (config) ->
  config.set

    # base path that will be used to resolve all patterns (eg. files, exclude)
    basePath: '.'


    # frameworks to use
    # available frameworks: https://npmjs.org/browse/keyword/karma-adapter
    frameworks: ['mocha', 'chai']


    # list of files / patterns to load in the browser
    files: [
      'bower_components/jquery/dist/jquery.js'
      'bower_components/underscore/underscore.js'
      'bower_components/backbone/backbone.js'
      'bower_components/backbone-forms/distribution/backbone-forms.js'
      'bower_components/chosen/chosen.jquery.js'
      'src/*.coffee'
      'spec/*.spec.coffee'
      'spec/*.spec.js'
    ]


    # list of files to exclude
    exclude: [
    ]


    # preprocess matching files before serving them to the browser
    # available preprocessors: https://npmjs.org/browse/keyword/karma-preprocessor
    preprocessors:
      'spec/*.coffee': ['coffee']
      'src/*.coffee': ['coffee', 'coverage']


    # test results reporter to use
    # possible values: 'dots', 'progress'
    # available reporters: https://npmjs.org/browse/keyword/karma-reporter
    reporters: ['progress', 'coverage']


    coverageReporter:
      type: 'lcov'
      dir: 'coverage'
      subdir: '.'


    # web server port
    port: 9876


    # enable / disable colors in the output (reporters and logs)
    colors: yes


    # level of logging
    # possible values: config.LOG_DISABLE || config.LOG_ERROR || config.LOG_WARN || config.LOG_INFO || config.LOG_DEBUG
    logLevel: config.LOG_INFO


    # enable / disable watching file and executing tests whenever any file changes
    autoWatch: no


    # start these browsers
    # available browser launchers: https://npmjs.org/browse/keyword/karma-launcher
    browsers: ['PhantomJS']


    # Continuous Integration mode
    # if true, Karma captures browsers, runs the tests and exits
    singleRun: yes

    # Concurrency level
    # how many browser should be started simultaneous
    concurrency: Infinity
