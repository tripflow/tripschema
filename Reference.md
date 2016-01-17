# Tripschema Reference

 * [Place](#Place)
 * [Transport Structure](#Transport Structure)
 * [Airport](#Airport)
 * [Flight](#Flight)
 * [Booking](#Booking)

## Place

Place schema

* [Place](#Place)
  * [Place.website](#Place.website)
  * [Place.website.languages](#Place.website.languages)
  * [Place.refs](#Place.refs)

Property | Type | Description | Example
---- | ---- | ---- | ---- | ----
**name** | *String* | Name - Name of place. | `"Example tavern"`
**coords** | *Array [number]* | Coordinates - Coordinates of place. | `null`
**website** | *String or Object [Place.website](#Place.website)* | Website - Airport website. | `null`
**refs** | *Array [Object [Place.refs](#Place.refs)]* | References | `null`

#### Example
```javascript
{
  "name": "Example tavern"
}
```

### Place.website

Property | Type | Description | Example
---- | ---- | ---- | ---- | ----
**url** | *String* | URL | `null`
**url_mobile** | *String* | Mobile URL - URL to mobile version of web. | `null`
**mobile_ready** | *Boolean* | Mobile ready? | `null`
**languages** | *Array [Object [Place.website.languages](#Place.website.languages)]* | Languages - Website languages. | `null`
**features** | *Array [string]* | Features - Website features. | `null`


#### Example
```javascript
null
```
### Place.website.languages

Property | Type | Description | Example
---- | ---- | ---- | ---- | ----
**lang** | *String* |  | `null`
**url** | *String* |  | `null`
**url_mobile** | *String* |  | `null`
**primary** | *Boolean* |  | `null`


#### Example
```javascript
null
```
### Place.refs

Property | Type | Description | Example
---- | ---- | ---- | ---- | ----
**type** | *String* | Type - Type of reference. | `null`
**value** | *String or Number* | Reference value | `null`
**url** | *String* | URL of reference | `null`


#### Example
```javascript
null
```

## Transport Structure

Transport Structure Schema

* [Transport Structure](#Transport Structure)

Property | Type | Description | Example
---- | ---- | ---- | ---- | ----

#### Example
```javascript
{
  "name": "Mystical platform"
}
```


## Airport

Airport schema

* [Airport](#Airport)

Property | Type | Description | Example
---- | ---- | ---- | ---- | ----

#### Example
```javascript
{
  "ident": {
    "icao": "LKPR",
    "iata": "PRG",
    "geonames": 6299654
  },
  "name": "Václav Havel Airport Prague",
  "domain": "prg.aero",
  "elevation": 1247,
  "continent": "EU",
  "region": "CZ-PR",
  "country": "CZE",
  "timezone": "Europe/Prague",
  "coords": [
    50.100833,
    14.26
  ],
  "served": [
    {
      "name": "Prague",
      "geonames": 3067696
    }
  ],
  "aliases": [
    {
      "lang": "en",
      "value": "Václav Havel Airport Prague",
      "preferred": true
    },
    {
      "lang": "cs",
      "value": "Letiště Václava Havla Praha"
    },
    {
      "lang": "cs",
      "value": "Mezinárodní letiště Praha-Ruzyně",
      "historical": true
    }
  ],
  "features": [
    "free-wifi",
    "open-nonstop"
  ],
  "security": {
    "rffs_cat": 10
  },
  "terminals": [
    {
      "name": "Terminal 1",
      "alias": "T1",
      "public": true
    },
    {
      "name": "Terminal 2",
      "alias": "T2",
      "public": true
    },
    {
      "name": "Terminal 3",
      "alias": "T3",
      "public": false
    },
    {
      "name": "Terminal 4",
      "alias": "T4",
      "public": false
    }
  ],
  "runways": [
    {
      "direction": "06/24",
      "size": "12191x197",
      "surface": "concrete",
      "active": true
    },
    {
      "direction": "12/30",
      "length": 10665,
      "surface": "concrete",
      "active": true
    },
    {
      "direction": "04/22",
      "length": 6955,
      "surface": "asphaltic-concrete",
      "active": false
    }
  ],
  "helipads": [
    {
      "number": "H2",
      "length": 11.2,
      "surface": "asphalt"
    }
  ],
  "website": {
    "url": "http://www.prg.aero/en/",
    "url_mobile": "http://m.prg.aero/en/",
    "languages": [
      {
        "lang": "cs",
        "url": "http://www.prg.aero/cs/",
        "url_mobile": "http://m.prg.aero/cs/",
        "primary": true
      },
      {
        "lang": "en",
        "url": "http://www.prg.aero/en/",
        "url_mobile": "http://m.prg.aero/en/"
      },
      {
        "lang": "ru",
        "url": "http://www.prg.aero/ru/",
        "url_mobile": "http://m.prg.aero/ru/"
      }
    ],
    "features": [
      "sms-info",
      "webcam",
      "map"
    ]
  },
  "refs": [
    {
      "type": "wikipedia/en",
      "value": 296099,
      "url": "http://en.wikipedia.org/wiki/V%C3%A1clav_Havel_Airport_Prague"
    },
    {
      "type": "wikipedia/cs",
      "value": 13630,
      "url": "http://cs.wikipedia.org/wiki/Leti%C5%A1t%C4%9B_V%C3%A1clava_Havla_Praha"
    },
    {
      "type": "foursquare",
      "value": "4adcdaa8f964a520824f21e3",
      "url": "https://foursquare.com/v/leti%C5%A1t%C4%9B-v%C3%A1clava-havla--v%C3%A1clav-havel-airport-prg/4adcdaa8f964a520824f21e3"
    }
  ],
  "waiting_times": {
    "security": [
      {
        "terminal": "T1",
        "time": "<10"
      },
      {
        "terminal": "T2",
        "area": "left",
        "time": 2
      },
      {
        "terminal": "T2",
        "area": "right",
        "time": "<15"
      }
    ]
  },
  "webcams": [
    {
      "terminal": "T1",
      "fps": 0.33,
      "resolution": "704x480",
      "raw_url": "http://apollo.prg.aero/kamera/image.jpg",
      "url": "http://www.prg.aero/en/prague-airport/webcam/"
    }
  ],
  "apps": [
    {
      "platform": "android",
      "id": "cz.sw.upis.upisand",
      "url": "https://play.google.com/store/apps/details?id=cz.sw.upis.upisand"
    },
    {
      "platform": "ios",
      "id": 581517376,
      "url": "https://itunes.apple.com/us/app/prague-airport-letiste-praha/id581517376"
    }
  ],
  "opening_hours": [
    {
      "days": "all",
      "times": "00:00-24:00"
    }
  ]
}
```


## Flight

Flight schema

* [Flight](#Flight)
  * [Flight.ident](#Flight.ident)
  * [Flight.airline](#Flight.airline)
  * [Flight.airport](#Flight.airport)
  * [Flight.times](#Flight.times)
  * [Flight.aircraft](#Flight.aircraft)
  * [Flight.status](#Flight.status)
  * [Flight.params](#Flight.params)
  * [Flight.stats](#Flight.stats)
  * [Flight.rt](#Flight.rt)

Property | Type | Description | Example
---- | ---- | ---- | ---- | ----
**ident** | *String or Object [Flight.ident](#Flight.ident)* | Flight ID - Flight identification. | `"DY1502"`
**date** | *String* | Departure date - ISO 8601 format: &#x60;YY-MM-DDDD&#x60;. | `"2015-03-27"`
**date_arrival** | *String* | Arrival date - Only if its overnight night. ISO 8601 format: &#x60;YY-MM-DDDD&#x60;. | `"2015-03-28"`
**airline** | *Object [Flight.airline](#Flight.airline)* | Airline | `{"iata":"DY","icao":"NAX","name":"Norwegian"}`
**orig** | *Object [Flight.airport](#Flight.airport)* | Origin - Information about origin airport. | `{"icao":"ENGM","name":"Oslo"}`
**dest** | *Object [Flight.airport](#Flight.airport)* | Destination - Information about destination airport. | `{"iata":"PRG","name":"Prague"}`
**times** | *Object [Flight.times](#Flight.times)* | Flight times - All times are in local time in ISO 8601 format, for example: &quot;03:33:01&quot; or less specific &quot;03:33&quot;. | `{"std":"19:00","atd":"19:08"}`
**aircraft** | *Object [Flight.aircraft](#Flight.aircraft)* | Aircraft - Info about aircraft. | `{"model":"73H"}`
**status** | *String or Object [Flight.status](#Flight.status)* | Flight status | `{"code":"departed","delay":8}`
**status_history** | *Array [Object [Flight.status](#Flight.status)]* | Status history - Flight status history. | `null`
**params** | *Object [Flight.params](#Flight.params)* | Flight parameters - Basic flight parameters. | `{"flying":true,"soldout":false}`
**stats** | *Object [Flight.stats](#Flight.stats)* | Statistics - Common statistics. | `null`
**rt** | *Object [Flight.rt](#Flight.rt)* | Real-time data - Current real-time information - flight position, track and other. | `{"coords":[50.532,19.231],"speed":560}`
**rt_history** | *Array [Object [Flight.rt](#Flight.rt)]* | Real-time history - Flight real-time data history. | `null`
**time** | *String* | Time of generation - Datetime in ISO 8601. | `"2015-03-27T01:38:05.419"`

#### Example
```javascript
{
  "ident": "DY1502",
  "date": "2015-03-27",
  "date_arrival": "2015-03-28",
  "airline": {
    "iata": "DY",
    "icao": "NAX",
    "name": "Norwegian"
  },
  "orig": {
    "icao": "ENGM",
    "name": "Oslo"
  },
  "dest": {
    "iata": "PRG",
    "name": "Prague"
  },
  "times": {
    "std": "19:00",
    "atd": "19:08"
  },
  "aircraft": {
    "model": "73H"
  },
  "status": {
    "code": "departed",
    "delay": 8
  },
  "params": {
    "flying": true,
    "soldout": false
  },
  "rt": {
    "coords": [
      50.532,
      19.231
    ],
    "speed": 560
  },
  "time": "2015-03-27T01:38:05.419"
}
```

### Flight.ident

Flight identification.

Property | Type | Description | Example
---- | ---- | ---- | ---- | ----
**no** | *Number* | Flight number - Flight number without airline code. | `null`
**no_full** | *String* | Full flight number - Full flight number with airline code. | `null`


#### Example
```javascript
"DY1502"
```
### Flight.airline

Property | Type | Description | Example
---- | ---- | ---- | ---- | ----
**iata** | *String* | IATA code - 2-letter airline IATA code. | `"DY"`
**icao** | *String* | ICAO code - 3-letter airline ICAO code. | `"NAX"`
**name** | *String* | Airline name | `"Norwegian"`


#### Example
```javascript
{
  "iata": "DY",
  "icao": "NAX",
  "name": "Norwegian"
}
```
### Flight.airport

Information about origin airport.

Property | Type | Description | Example
---- | ---- | ---- | ---- | ----
**iata** | *String* | IATA code - 3-letter IATA code of airport. | `null`
**icao** | *String* | ICAO code - 4-letter ICAO code of airport. | `"ENGM"`
**name** | *String* | Airport name - Name of airport. | `"Oslo"`
**terminal** | *String* | Terminal - Airport terminal. | `null`
**gate** | *String* | Gate - Airport gate. | `null`
**belt** | *String* | Baggage belt - Baggage belt. | `null`
**exit** | *String* | Exit section | `null`


#### Example
```javascript
{
  "icao": "ENGM",
  "name": "Oslo"
}
```
### Flight.times

All times are in local time in ISO 8601 format, for example: &quot;03:33:01&quot; or less specific &quot;03:33&quot;.

Property | Type | Description | Example
---- | ---- | ---- | ---- | ----
**std** | *String* | Scheduled time of departure | `"19:00"`
**sta** | *String* | Scheduled time of arrival | `null`
**etd** | *String* | Estimated time of departure | `null`
**eta** | *String* | Estimated time of arrival | `null`
**atd** | *String* | Actual time of departure | `"19:08"`
**ata** | *String* | Actual time of arrival | `null`
**rtd** | *String* | Runway time of departure - Take-off | `null`
**rta** | *String* | Runway time of arrival - Touch down. | `null`
**gtd** | *String* | Gate time of departure - Aircraft doors closed. | `null`
**gta** | *String* | Gate time of arrival - Aircraft doors open. | `null`
**xtd** | *String* | Radar time of departure | `null`
**xta** | *String* | Radar time of arrival | `null`


#### Example
```javascript
{
  "std": "19:00",
  "atd": "19:08"
}
```
### Flight.aircraft

Info about aircraft.

Property | Type | Description | Example
---- | ---- | ---- | ---- | ----
**model** | *String* | Model - Model of aircraft. | `"73H"`
**reg** | *String* | Registration - Aircraft registration number. | `null`


#### Example
```javascript
{
  "model": "73H"
}
```
### Flight.status

Property | Type | Description | Example
---- | ---- | ---- | ---- | ----
**code** | *String* | Status code - Code of status, see below. | `"departed"`
**msg** | *String* | Message - Status message. | `null`
**delay** | *Number* | Delay - Delay in minutes. | `8`
**time** | *String* | Time - Datetime of current status in ISO 8601. | `null`

#### Enum `code`
* checkin
* gateopen
* gatechange
* boarding
* lastcall
* finalcall
* gateclose
* taxiing
* departed
* approaching
* landing
* landed
* cancelled
* diverted
* delayed

#### Example
```javascript
{
  "code": "departed",
  "delay": 8
}
```
### Flight.params

Basic flight parameters.

Property | Type | Description | Example
---- | ---- | ---- | ---- | ----
**soldout** | *Boolean* | Sold out - If the flight is sold out. | `false`
**cancelled** | *Boolean* | Cancelled - Cancelled flight. | `null`
**diverted** | *Boolean* | Diverted - Diverted flight. | `null`
**delayed** | *Boolean* | Delayed - If the flight is delayed more than 15 minutes. | `null`
**flying** | *Boolean* | Flying - If the flight is in air. | `true`


#### Example
```javascript
{
  "flying": true,
  "soldout": false
}
```
### Flight.stats

Common statistics.

Property | Type | Description | Example
---- | ---- | ---- | ---- | ----
**seats_sold** | *Number* | Sold seats - Number of sold seats. | `null`
**seats_available** | *Number* | Available seats - Number of available seats. | `null`
**load_factor** | *Number* | Load factor - Load factor in percents. | `null`
**pax** | *Number* | Passengers - Number of passengers boarded on aircraft. | `null`
**pilots** | *Number* | Pilots - Number of pilots. | `null`
**crew** | *Number* | Crew - Number of crew without pilots. | `null`
**crew_all** | *Number* | All crew - Number of all crew including pilots. | `null`


#### Example
```javascript
null
```
### Flight.rt

Current real-time information - flight position, track and other.

Property | Type | Description | Example
---- | ---- | ---- | ---- | ----
**coords** | *Array [number]* | Coordinates - Coordinates in latitude and longitude. | `[50.532,19.231]`
**alt** | *Number* | Altitude - Altitude in feets. | `null`
**speed** | *Number* | Speed - Speed in knots. | `560`
**track** | *Number* | Track - Current track. | `null`
**squawk** | *Number* | Squawk code - Current [Squawk code](http:&#x2F;&#x2F;en.wikipedia.org&#x2F;wiki&#x2F;Squawk_code). | `null`


#### Example
```javascript
{
  "coords": [
    50.532,
    19.231
  ],
  "speed": 560
}
```

## Booking

Booking or reservation

* [Booking](#Booking)
  * [Booking.ident](#Booking.ident)
  * [Booking.price](#Booking.price)
  * [Booking.payments](#Booking.payments)
  * [Booking.contacts](#Booking.contacts)
  * [Booking.contacts.name](#Booking.contacts.name)
  * [Booking.contacts.phones](#Booking.contacts.phones)

Property | Type | Description | Example
---- | ---- | ---- | ---- | ----
**ident** | *Object [Booking.ident](#Booking.ident)* | Booking IDs - Booking identificators | `{"pnr":"LSSK8E"}`
**status** | *String* | Booking status | `"confirmed"`
**price** | *Object [Booking.price](#Booking.price)* | Price summary | `{"value":12088,"currency":"HUF"}`
**payments** | *Array [Object [Booking.payments](#Booking.payments)]* | Payments | `null`
**contacts** | *Array [Object [Booking.contacts](#Booking.contacts)]* | Contacts | `{"email":"jan.stransky@arnal.cz"}`

#### Example
```javascript
{
  "ident": {
    "pnr": "LSSK8E"
  },
  "flights": {
    "0": {
      "flight": "FR2620",
      "date": "03-02-2016",
      "airline": {
        "iata": "FR"
      },
      "orig": {
        "iata": "MLA"
      },
      "dest": {
        "iata": "TRN"
      },
      "times": {
        "std": 770,
        "sta": 895
      }
    },
    "1": {
      "flight": "FR2621",
      "date": "06-02-2016",
      "airline": {
        "iata": "FR"
      },
      "orig": {
        "iata": "TRN"
      },
      "dest": {
        "iata": "MLA"
      },
      "times": {
        "std": 920,
        "sta": 1030
      }
    }
  },
  "passengers": {
    "0": {
      "firstname": "Zuzana",
      "lastname": "Vlckova"
    }
  },
  "return": true,
  "paid": true,
  "status": "confirmed",
  "price": {
    "value": 12088,
    "currency": "HUF"
  },
  "payment": {
    "type": "card",
    "card_type": "Mastercard Debit",
    "card_suffix": 4790
  },
  "contacts": {
    "email": "jan.stransky@arnal.cz"
  },
  "created": "2015-11-08T21:30+2"
}
```

### Booking.ident

Booking identificators

Property | Type | Description | Example
---- | ---- | ---- | ---- | ----
**pnr** | *String* | PNR code - Standart six char code | `"LSSK8E"`


#### Example
```javascript
{
  "pnr": "LSSK8E"
}
```
### Booking.price

Property | Type | Description | Example
---- | ---- | ---- | ---- | ----
**value** | *Number* | Price value | `12088`
**currency** | *String* | Currency | `"HUF"`


#### Example
```javascript
{
  "value": 12088,
  "currency": "HUF"
}
```
### Booking.payments

Property | Type | Description | Example
---- | ---- | ---- | ---- | ----
**type** | *String* | Payment type | `null`
**value** | *Number* | Payment value | `null`
**curreny** | *String* | Payment currency | `null`
**card_no** | *String* | Payment card number | `null`
**account_name** | *String* | Payment account name | `null`
**status** | *String* | Payment status | `null`
**dcc** | *Boolean* | Payment use DCC? | `null`
**dcc_rate** | *Number* | DCC Rate | `null`
**dcc_currency** | *String* | DCC Currency | `null`

#### Enum `type`
* card
* bank_transfer
#### Enum `status`
* approved
* declined
* pending

#### Example
```javascript
null
```
### Booking.contacts

Property | Type | Description | Example
---- | ---- | ---- | ---- | ----
**type** | *String* | Type of contact | `null`
**email** | *String* | Email | `null`
**name** | *Object [Booking.contacts.name](#Booking.contacts.name)* | Name | `null`
**phones** | *Array [Object [Booking.contacts.phones](#Booking.contacts.phones)]* | Phones | `null`
**city** | *String* | City | `null`
**zip** | *String* | Postal code | `null`
**country** | *String* | Country | `null`
**locale** | *String* | Contact locale | `null`

#### Enum `type`
* private
* business

#### Example
```javascript
null
```
### Booking.contacts.name

Property | Type | Description | Example
---- | ---- | ---- | ---- | ----
**title** | *String* | Name title | `null`
**first** | *String* | Name first | `null`
**middle** | *String* | Name middle | `null`
**last** | *String* | Name last | `null`
**suffix** | *String* | Name suffix | `null`


#### Example
```javascript
null
```
### Booking.contacts.phones

Property | Type | Description | Example
---- | ---- | ---- | ---- | ----
**type** | *String* | Type of phone | `null`
**value** | *Number* | Phone number | `null`

#### Enum `type`
* home
* work

#### Example
```javascript
null
```


