# Tripschema
**Open Trip Schema Specification** (draft-0)

## Introduction
Main goal is to create a unified schemas for exchange passengers-oriented trip data. Recommended transport format is JSON or [msgpack](http://msgpack.org) and all schemas are defined in [JSON Schema](http://json-schema.org) format.

This project is open source, so any suggestions and improvements are welcome.

**Warning: This schema are under development and not suitable for production use. Use at your own risk.**

### Docs
- [Tripschema Reference (draft-0)](Reference.md)

## Summary

### Schemas
All schemas are defined in [JSON Schema](http://json-schema.org) format and can also be used separately (stored in [`schema/`](/schema) directory).

- **[Place](Reference.md#place)** ([json](schema/place.json))
  - **[Gateway](Reference.md#gateway)** ([json](schema/gateway.json))
    - **[Airport](Reference.md#airport)** ([json](schema/airport.json))
    - **[RailwayStation](Reference.md#railwaystation)** ([json](schema/railway-station.json))
    - **[BusTerminal](Reference.md#busterminal)** ([json](schema/bus-terminal.json))
  - **[Accomodation](Reference.md#accomodation)** ([json](schema/accomodation.json))
    - **[Hotel](Reference.md#hotel)** ([json](schema/hotel.json))
    - **[Hostel](Reference.md#hostel)** ([json](schema/hostel.json))
    - **[Apartment](Reference.md#apartment)** ([json](schema/apartment.json))
  - **[Target](Reference.md#target)** ([json](schema/target.json))
- **[Organization](Reference.md#organization)** ([json](schema/organization.json))
  - **[Operator](Reference.md#operator)** ([json](schema/operator.json))
    - **[Airline](Reference.md#airline)** ([json](schema/airline.json))
    - **[TaxiOperator](Reference.md#taxioperator)** ([json](schema/taxi-operator.json))
  - **[Broker](Reference.md#broker)** ([json](schema/broker.json))
- **[Event](Reference.md#event)** ([json](schema/event.json))
  - **[Action](Reference.md#action)** ([json](schema/action.json))
  - **[Segment](Reference.md#segment)** ([json](schema/segment.json))
    - **[Flight](Reference.md#flight)** ([json](schema/flight.json))
  - **[Incident](Reference.md#incident)** ([json](schema/incident.json))
- **[Document](Reference.md#document)** ([json](schema/document.json))
  - **[Reservation](Reference.md#reservation)** ([json](schema/reservation.json))
  - **[BoardingPass](Reference.md#boardingpass)** ([json](schema/boarding-pass.json))
- **[Vehicle](Reference.md#vehicle)** ([json](schema/vehicle.json))
  - **[Aircraft](Reference.md#aircraft)** ([json](schema/aircraft.json))
  - **[Watercraft](Reference.md#watercraft)** ([json](schema/watercraft.json))
  - **[Train](Reference.md#train)** ([json](schema/train.json))
  - **[Bus](Reference.md#bus)** ([json](schema/bus.json))
  - **[Taxi](Reference.md#taxi)** ([json](schema/taxi.json))
- **[Seating](Reference.md#seating)** ([json](schema/seating.json))
- **[Statistics](Reference.md#statistics)** ([json](schema/undefined))


## Resources

### Specifications

#### Air transport

* [IATA Delay Codes (IATA AHM730)](https://www.eurocontrol.int/sites/default/files/content/documents/official-documents/facts-and-figures/coda-reports/standard-iata-delay-codes-ahm730.pdf)
* [IATA Delay Sub-Codes (IATA AHM731)](https://www.eurocontrol.int/sites/default/files/content/documents/official-documents/facts-and-figures/coda-reports/iata_delay_sub_code_list_ahm731.pdf)
* [AIP - Aeronautical Information Publication](http://en.wikipedia.org/wiki/Aeronautical_Information_Publication)

### Datasets

#### Airlines
* [IATA Airline Members](http://www.iata.org/about/members/pages/airline-list.aspx?All=true) - All IATA Member Airlines (2-letter IATA designator and 3-digit code)

#### Regional aviation databases
* [Eurocontrol - Useful links for statistics data](https://www.eurocontrol.int/articles/useful-links-statistics-data) - Links to statistics data in EU region.
* [UK Civil Aviation Authority](http://www.caa.co.uk/default.aspx?catid=80&pagetype=90) - UK Airline/Airport statistics

#### Airports data
* [PHL Flight Information API](http://flightinfo.phlapi.com/) - A REST and WebSocket API for PHL Flight Information Data

#### Geography
- [mledoze/countries](https://github.com/mledoze/countries) - World countries in JSON
- [GeoNames](http://www.geonames.org/) - Geographical database

## TODO
- geojson for airports/route?

## Credits

[Jan Stránský](https://github.com/burningtree) &lt;<jan.stransky@arnal.cz>&gt;

## LICENCE

<a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by-sa/4.0/88x31.png" /></a><br /><span xmlns:dct="http://purl.org/dc/terms/" property="dct:title">Tripschema</span> is licensed under a <a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/">Creative Commons Attribution-ShareAlike 4.0 International License</a>.

