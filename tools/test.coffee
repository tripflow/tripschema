ajv = require('ajv')()
fs = require 'fs'
Path = require 'path'

schema = JSON.parse(fs.readFileSync(Path.resolve(__dirname, '../schema/airport.json')))
ajv.addSchema JSON.parse(fs.readFileSync(Path.resolve(__dirname, '../schema/place.json'))), 'http://tripschema.org/schema/place#'
ajv.addSchema JSON.parse(fs.readFileSync(Path.resolve(__dirname, '../schema/transport-structure.json'))), 'http://tripschema.org/schema/transport-structure#'

validate = ajv.compile schema
data =
  id: 1
  name: 'test'
  aliases: 11
  
console.log validate(data)
console.log validate.errors
