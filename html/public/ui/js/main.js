/******/ (function(modules) { // webpackBootstrap
/******/ 	// The module cache
/******/ 	var installedModules = {};

/******/ 	// The require function
/******/ 	function __webpack_require__(moduleId) {

/******/ 		// Check if module is in cache
/******/ 		if(installedModules[moduleId])
/******/ 			return installedModules[moduleId].exports;

/******/ 		// Create a new module (and put it into the cache)
/******/ 		var module = installedModules[moduleId] = {
/******/ 			exports: {},
/******/ 			id: moduleId,
/******/ 			loaded: false
/******/ 		};

/******/ 		// Execute the module function
/******/ 		modules[moduleId].call(module.exports, module, module.exports, __webpack_require__);

/******/ 		// Flag the module as loaded
/******/ 		module.loaded = true;

/******/ 		// Return the exports of the module
/******/ 		return module.exports;
/******/ 	}


/******/ 	// expose the modules object (__webpack_modules__)
/******/ 	__webpack_require__.m = modules;

/******/ 	// expose the module cache
/******/ 	__webpack_require__.c = installedModules;

/******/ 	// __webpack_public_path__
/******/ 	__webpack_require__.p = "";

/******/ 	// Load entry module and return exports
/******/ 	return __webpack_require__(0);
/******/ })
/************************************************************************/
/******/ ([
/* 0 */
/***/ function(module, exports, __webpack_require__) {

	'use strict';

	// import sayName from "./modules/alert";
	// sayName('steve')

	var _browserDetect = __webpack_require__(1);

	var _browserDetect2 = _interopRequireDefault(_browserDetect);

	function _interopRequireDefault(obj) { return obj && obj.__esModule ? obj : { default: obj }; }

	var menuItems = ['portfolio', 'about', 'blog', 'contact'];
	var menu = document.querySelector('.Nav ul');
	var list = menuItems.map(function (item) {
	  return '<li><a href="#' + item + '">' + item + '</a></li>';
	});
	menu.innerHTML += list.join('');

	/**
	 * Apply a class to the html that is the Browser
	 * and the Version to use within CSS to target.
	 */

	var html = document.getElementsByTagName('html')[0];
	html.classList.add('' + navigator.browserDetect);

	/**
	 * Register Wervice Worker
	 * @param  {object} !navigator.serviceWorker.controller checks if your browser supports service workers
	 * @return {object}                                     console log output
	 */
	if (!navigator.serviceWorker.controller) {
	  navigator.serviceWorker.register('service-worker.js', { scope: './' }).then(function (reg) {
	    return console.log(reg);
	  });
	}

	// EOF

/***/ },
/* 1 */
/***/ function(module, exports) {

	'use strict';

	navigator.browserDetect = function () {
	  var ua = navigator.userAgent,
	      tem,
	      M = ua.match(/(opera|chrome|safari|firefox|msie|trident(?=\/))\/?\s*(\d+)/i) || [];
	  if (/trident/i.test(M[1])) {
	    tem = /\brv[ :]+(\d+)/g.exec(ua) || [];
	    return 'IE ' + (tem[1] || '');
	  }
	  if (M[1] === 'Chrome') {
	    tem = ua.match(/\b(OPR|Edge)\/(\d+)/);
	    if (tem != null) return tem.slice(1).join(' ').replace('OPR', 'Opera');
	  }
	  M = M[2] ? [M[1], M[2]] : [navigator.appName, navigator.appVersion, '-?'];
	  if ((tem = ua.match(/version\/(\d+)/i)) != null) M.splice(1, 1, tem[1]);
	  // return { 'browser': M[0], 'version': M[1] };
	  return M.join('');
	}();

	// EOF

/***/ }
/******/ ]);