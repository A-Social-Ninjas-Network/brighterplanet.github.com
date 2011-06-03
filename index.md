---
title: Brighter Planet developer site
layout: default
class: index
---

## [CM1](http://carbon.brighterplanet.com) ##

On-demand carbon calculations. Requires an [API key](http://keys.brighterplanet.com).

{% highlight console %}
$ curl http://carbon.brighterplanet.com/flights.json -d "airline=United&origin_airport=LAX&destination_airport=JFK&key=abc123"
{"timeframe":"2011-01-01/2012-01-01","emission":1593.227527657828 ... }
{% endhighlight %}

## [Reference data](http://data.brighterplanet.com) ##

Normalized datasets like airports and zipcodes, pulled transparently from authoritative sources.

{% highlight console %}
$ curl -s http://data.brighterplanet.com/airlines.csv | head -n 2
iata_code,name,dot_airline_id_code,international,seats,distance,distance_units,load_factor,freight_share,payload,payload_units
02Q,Titan Airways,21040,1,184.51,5754.37,,0.738538,0,27068.7,
{% endhighlight %}
