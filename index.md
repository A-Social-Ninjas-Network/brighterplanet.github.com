---
title: Brighter Planet Developer Hub
layout: default
---

**Science as a service.** Technology for carbon information and climate change.

## Getting started (developer keys) ##

Most Brighter Planet web service requests require the use of a developer (API) key. Some requests will require you to have a credit card on file associated with your key.

[Get a developer key](#FIXME)
{:cta}

## Web services

Brighter Planet maintains four web services. They are provided through standard HTTP queries and strictly adhere to REST conventions. 

### Emission estimates ###

Retrieve emission estimates in real time for real-world emitters like automobiles and flights.

{% highlight text %}
GET http://carbon.brighterplanet.com/flights.txt?origin_airport[iata_code]=JFK&destination_airport[iata_code]=LAX
↳ 1657.0246135528 # kg CO2e
{% endhighlight %}

[Emission estimates service homepage](http://carbon.brighterplanet.com)
{:cta}

[Documentation](http://carbon.brighterplanet.com/*/use/options)
{:cta}
    
### Climate data ###

Fetch normalized climate and lifestyle datasets in a variety of formats.
    
{% highlight text %}
GET http://data.brighterplanet.com/airlines.json
↳ # 1,517 records in JSON
{% endhighlight %}

[Climate data service homepage](http://data.brighterplanet.com)
{:cta}
    
### Emission envelopes ###

Retrieve emission estimates for complex emission agents like people by populating footprints with emission sources.

*Coming soon*
    
### Offset provision ###

Provision and assign carbon offsets in arbitrary sizes in real time.

*Coming soon*

## Collaboration ##

Developers with science backgrounds are invited to improve Brighter Planet's carbon models and data spiders.

### Emitters ###

The carbon models used by the emission estimate service are all open source:

* [Automobile](http://github.com/brighterplanet/automobile)
* [Bus trip](http://github.com/brighterplanet/bus_trip)
* [Diet](http://github.com/brighterplanet/diet)
* [Flight](http://github.com/brighterplanet/flight)
* [Motorcycle](http://github.com/brighterplanet/motorcycle)
* [Pet](http://github.com/brighterplanet/pet)
* [Rail trip](http://github.com/brighterplanet/rail_trip)
* [Residence](http://github.com/brighterplanet/residence)

Each emitter consists of two parts:

* A *characterization* which defines a curation strategy to reduce all of the emitter's attributes to a meaningful subset. Characterizations are written in a domain-specific language provided by the [characterizable](http://github.com/seamusabshere/characterizable) Ruby library.
* A *carbon model* which defines a set of calculation pathways to produce an emission estimate from an emitter's characteristics. Carbon models are described using a domain-specific language provided by the [leap](http://github.com/rossmeissl/leap) Ruby library.

Each emitter also includes a comprehensive test suite designed to be run using the [sniff](http://github.com/brighterplanet/sniff) sandbox which simulates the Brighter Planet production environment. All improvements to emitters must include new tests and not cause previous tests to fail.

To submit improvements, fork the relevant repository on GitHub, commit and push your changes, and submit a pull request to brighterplanet.
{:cta}

### Data spiders ###

*Coming soon*
    
{:cta: .cta}