'use strict';

// import sayName from "./modules/alert";
// sayName('steve')

const menuItems = [
  'portfolio',
  'about',
  'blog',
  'contact'
];
const menu = document.querySelector('.Nav ul');
const list = menuItems.map(item => `<li><a href="#${item}">${item}</a></li>`)
menu.innerHTML += list.join('');

/**
 * Apply a class to the html that is the Browser
 * and the Version to use within CSS to target.
 */
import browser from "./modules/browser-detect";
const html = document.getElementsByTagName('html')[0]
html.classList.add(`${navigator.browserDetect}`);


/**
 * Register Wervice Worker
 * @param  {object} !navigator.serviceWorker.controller checks if your browser supports service workers
 * @return {object}                                     console log output
 */
if (!navigator.serviceWorker.controller) {
  navigator.serviceWorker.register('service-worker.js', { scope: './' }).then(reg => console.log(reg));
}


// EOF
