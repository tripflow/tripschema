COFFEEC = coffee
SCHEMA = $(SRC:src/%.coffee=lib/%.js)

doc:
	./node_modules/mdschema/bin/mdschema -o Reference.md

all: scripts
