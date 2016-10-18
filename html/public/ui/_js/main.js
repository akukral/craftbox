'use strict'

// import sayName from "./modules/alert";
// sayName('steve')

const menuItems = [
  'portfolio',
  'about',
  'blog',
  'contact'
];

// (()=>{
//   const menuItems = [];
//   alert(menuItems)
// })()

const menu = document.querySelector('.Nav ul');

let list = menuItems.map(item=>`<li><a href="#${item}">${item}</a></li>`)

menu.innerHTML += list.join('');

// EOF
