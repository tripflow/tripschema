COFFEEC = coffee
SCHEMA = $(SRC:src/%.coffee=lib/%.js)

doc:
	grunt
	coffee tools/gen.coffee
	./node_modules/mdschema/bin/mdschema -o Reference.md

all: scripts
