const { src, dest, series } = require('gulp');
const cssimport = require('gulp-cssimport');
const uglifycss = require('gulp-uglifycss');
const autoprefixer = require('gulp-autoprefixer');
const sourcemaps = require('gulp-sourcemaps');
const rename = require('gulp-rename');
const uglifyjs = require('gulp-uglify-es').default;
const concat = require('gulp-concat');
const include = require('gulp-include');
const replace = require('gulp-replace');
const babel = require('gulp-babel');
const appendPrepend = require('gulp-append-prepend');
const htmlmin = require('gulp-htmlmin');


function html() {
  return src('./dev/*.php')
    .pipe(htmlmin({
      collapseWhitespace: true,
      ignoreCustomFragments: [ /<%[\s\S]*?%>/, /<\?[=|php]?[\s\S]*?\?>/ ],
      removeComments: true
    }))
    .pipe(dest('./'));
}

function css() {
  return src(['./assets/css/src/style.css', '!./assets/css/src/critical.css'])
    // .pipe(sourcemaps.init())
      .pipe(cssimport({}))
      .pipe(autoprefixer({ overrideBrowserslist: ["last 10 version"] }))
      .pipe(uglifycss())
      .pipe(replace('../../fonts/', '../fonts/'))
      .pipe(rename('style.bundle.min.css'))
    // .pipe(sourcemaps.write('./'))
    .pipe(dest('./assets/css'))
}

function babelify() {
  return src('./assets/js/src/main.js')
    .pipe(babel({
      presets: ['@babel/env']
    }))
    .pipe(rename('babelify.js'))
    .pipe(dest('./assets/js/src'))
}

function js() {
  return src(['./assets/js/src/**/*.js', '!./assets/js/src/main.js', '!./assets/js/src/babelify.js'])
    // .pipe(sourcemaps.init())
      .pipe(concat('main.bundle.min.js'))
      .pipe(appendPrepend.appendFile('./assets/js/src/babelify.js'))
      .pipe(uglifyjs())
    // .pipe(sourcemaps.write('.'))
    .pipe(dest('./assets/js'))
}


module.exports.html = html;
module.exports.css = css;
module.exports.js = js;
module.exports.babelify = babelify;

module.exports.build = series(html, css, babelify, js);
