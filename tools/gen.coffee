ajv = require('ajv')()
fs = require 'fs'
Path = require 'path'
yaml = require 'js-yaml'

schemas = []
text = ""

walkIndexLevel = (name, obj, level=0) ->
  text += "#{'  '.repeat(level)}- **[#{name}](Reference.md##{name.toLowerCase()})** ([json](schema/#{obj.src}))\n"
  schemas.push
    name: name
    src: obj.src
    level: level
  if obj.subs
    for sName, sObj of obj.subs
      walkIndexLevel sName, sObj, level+1

index = yaml.safeLoad(fs.readFileSync(Path.resolve(__dirname, '../schemas.yaml')))
for name, obj of index
  walkIndexLevel name, obj, 0

console.log schemas
console.log text

orig = fs.readFileSync(Path.resolve(__dirname, '../src/README.md')).toString()
orig = orig.replace('{{{SCHEMAS_INDEX}}}', text)
fs.writeFileSync(Path.resolve(__dirname, '../README.md'), orig)

