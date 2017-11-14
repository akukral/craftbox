/**
 * Apply a class to the html that is the Browser
 * and the Version to use within CSS to target.
 */
import browser from "./modules/browser-detect";

const html = document.getElementsByTagName('html')[0];
html.classList.add(`${navigator.browserDetect}`);

const menuItems = [
  'portfolio',
  'about',
  'blog',
  'contact',
];
const menu = document.querySelector('.Nav ul');
const list = menuItems.map(item => `<li><a href="#${item}">${item}</a></li>`);
menu.innerHTML += list.join('');

// EOF
