---
title: Collaborator
layout: default
---

# Collaboration at Brighter Planet #

Developers with science backgrounds are invited to improve Brighter Planet's carbon models and data spiders.

## Emitters ##

The carbon models used by the emission estimate service are all open source:

* [Automobile](http://github.com/brighterplanet/automobile){.automobile}
* [Bus trip](http://github.com/brighterplanet/bus_trip){.bus_trip}
* [Diet](http://github.com/brighterplanet/diet){.diet}
* [Flight](http://github.com/brighterplanet/flight){.flight}
* [Motorcycle](http://github.com/brighterplanet/motorcycle){.motorcycle}
* [Pet](http://github.com/brighterplanet/pet){.pet}
* [Rail trip](http://github.com/brighterplanet/rail_trip){.rail_trip}
* [Residence](http://github.com/brighterplanet/residence){.residence}
{.emitters}

Each emitter consists of two parts:

### Characterization ###

The emitter's *characterization* defines a curation strategy to reduce its attributes to a meaningful subset.

Characterizations are written in a domain-specific language provided by the [characterizable](http://github.com/seamusabshere/characterizable) Ruby library.

### Carbon model ###

The emitter's *carbon model* defines a set of calculation pathways to produce an emission estimate from its characteristics.

Carbon models are described using a domain-specific language provided by the [leap](http://github.com/rossmeissl/leap) Ruby library.

---

Each emitter also includes a comprehensive test suite designed to be run using the [sniff](http://github.com/brighterplanet/sniff) sandbox which simulates the Brighter Planet production environment. All improvements to emitters must include new tests and not cause previous tests to fail.

To submit improvements, fork the relevant repository on GitHub, commit and push your changes, and submit a pull request to brighterplanet.

[Brighter Planet GitHub account](http://github.com/brighterplanet)
{:cta}

## Data spiders ##

*Coming soon*
    
{:cta: .cta}
