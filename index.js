var addon = require('bindings')('gnparser');
const data = require('./test-data')

function parse(names) {
  let res
  if (Array.isArray(names) && names.every(n => (typeof n === "string"))) {
    res = addon.parseArrayToString(names)
  } else if(typeof names === "string") {
    res = addon.parseToString(names)
  } else {
    throw("Argument must be a string or array of strings")
  }
  return JSON.parse(res)
}

let arr = []
for (var record of data) {
  arr.push(record.name)
}
console.time("parse")
//const res = parse(arr)
//for (var record of arr) {
//  parse(record)
//}
console.log(parse("Drosera intermedia"))
console.timeEnd("parse")

module.exports = {
  parse
}