'use strict';

import gulp from 'gulp';

import babel from 'gulp-babel';
import webpack from 'webpack';
import webpackstream from 'webpack-stream';

import sass from 'gulp-sass';
import postcss from 'gulp-postcss';
import cssnext from 'postcss-cssnext';
import cssnano from 'cssnano';

import notify from 'gulp-plumber-notifier';

import imagemin from 'gulp-imagemin';

import broswersync from 'browser-sync';

broswersync.create();

const jsSources = ['./html/public/ui/_js/main.js'];
const styleSources = ['./html/public/ui/_scss/main.scss'];
const templateSources = ['./html/**/*.html', '.html/**/*.twig'];

const jsPublic = './html/public/ui/js';
const cssPublic = './html/public/ui/css';

const rootPublic = './html/';

gulp.task('javascript', () => {
  gulp.src(jsSources)
    .pipe(notify())
    .pipe(webpackstream({
      module: {
        loaders: [{
          test: /\.js$/,
          exclude: /(node_modules)/,
          loader: 'babel',
          query: {
            presets: ['es2015'],
          },
        }],
      },
      output: {
        filename: 'main.js',
      },
    }))
    .pipe(gulp.dest(jsPublic))
    .pipe(broswersync.reload({ stream: true }));
});

gulp.task('javascriptBuild', () => {
  gulp.src(jsSources)
    .pipe(notify())
    .pipe(webpackstream({
      module: {
        loaders: [{
          test: /\.js$/,
          exclude: /(node_modules)/,
          loader: 'babel',
          query: {
            presets: ['es2015'],
          },
        }],
      },
      output: {
        filename: 'main.js',
      },
      plugins: [new webpack.optimize.UglifyJsPlugin()],
    }))
    .pipe(gulp.dest(jsPublic))
    .pipe(broswersync.reload({ stream: true }));
});

gulp.task('styles', () => {
  const processors = [
    cssnext({browsers: ['last 4 version']}),
  ];

  gulp.src(styleSources)
    .pipe(notify())
    .pipe(sass())
    .pipe(postcss(processors))
    .pipe(gulp.dest(cssPublic))
    .pipe(broswersync.reload({ stream: true }));
});

gulp.task('stylesBuild', () => {
  const processors = [
    cssnext({browsers: ['last 5 version']}),
    cssnano(),
  ];

  gulp.src(styleSources)
    .pipe(notify())
    .pipe(sass())
    .pipe(postcss(processors))
    .pipe(gulp.dest(cssPublic))
    .pipe(broswersync.reload({ stream: true }));
});

gulp.task('html', () => {
  gulp.src(templateSources)
    .pipe(broswersync.reload({ stream: true }));
});

gulp.task('imagemin', () => {
  gulp.src(rootPublic + 'public/**/*')
  .pipe(imagemin())
    // .pipe(gulp.dest(rootPublic))
  });

gulp.task('sync', () => {
  broswersync({
    proxy: '192.168.33.10',
    injectChanges: true,
    ghostMode: true,
    // https: true
  });
});

gulp.task('watch', () => {
  gulp.watch('html/public/ui/_js/**/*.js', ['javascript']);
  gulp.watch('html/public/**/*.scss', ['styles']);
  gulp.watch(templateSources, ['html']);
});

gulp.task('default', ['javascript', 'styles', 'html', 'watch', 'sync']);

gulp.task('build', ['javascriptBuild', 'stylesBuild', 'imagemin']);
