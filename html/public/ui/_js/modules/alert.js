'use strict'

const sayName = (name='allan') => {
  let greeting = `${name} hello`
  alert(greeting)
}

const yellName = () =>
  alert('dick!')

export {sayName, yellName}
