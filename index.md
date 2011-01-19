---
title: Brighter Planet developer site
layout: default
class: index
---

# Our web services #

+--
 +--
  [API key required](http://keys.brighterplanet.com)
 =--
 {.key}
 
[Documentation](http://carbon.brighterplanet.com/documentation)
{.documentation}
 
## [Brighter Planet CM1](http://carbon.brighterplanet.com) ##

On-demand carbon calculations for real-world emission sources like automobiles and flights
{.description}

Example query (response in XML) [Visualize this with Hurl](#)
{.example}

<pre>POST http://carbon.brighterplanet.com/flights.xml?airline=united&amp;origin_airport=lax&amp;destination_airport=jfk&amp;seat_class=economy&key=YOUR_KEY
</pre>

**½–1¢ per query** for commercial use
{.pricing}

CM1 supports both synchronous and asynchronous operation, server- and client-side execution, and various caching techniques. See the [documentation](http://carbon.brighterplanet.com/documentation) for details.

A [Ruby library and CLI](http://github.com/brighterplanet/carbon) is available. More language bindings to come---in the meantime, use your language's generic REST client.

=--
{.service .cm1}

+--
[Documentation](http://data.brighterplanet.com/documentation)
{.documentation}

## [Reference data](http://data.brighterplanet.com) ##

Normalized datasets like airports and zipcodes, pulled transparently from authoritative sources
{.description}

Example query (response in XML) [Visualize this with Hurl](#)
{.example}

<pre>GET http://data.brighterplanet.com/airlines.json
</pre>

**No charge** for all users
{.pricing}

Our reference data service provides useful datasets in four convenient formats. The service also supports the Taps protocol popularized by Heroku.

A [Ruby library](http://github.com/brighterplanet/earth) is available.

=--
{.service .data}

+--
*  ### Getting support ###
   Find us in #brighterplanet on [freenode](http://freenode.net), 9-5 ET, for help with Brighter Planet web services: integration, API questions, and more

   [More details](/support.html)

*  ### Open source ###
   Brighter Planet maintains and actively supports open source projects, including [data_miner](http://github.com/seamusabshere/data_miner), [leap](http://github.com/rossmeissl/leap), [tronprint](http://github.com/brighterplanet/tronprint), and many more

   [More details](/projects.html)
{.features}

+--
### [Developer fellowship program](/fellowship.html) ###
Brighter Planet uses dozens of open source software packages in the process of delivering carbon calculations to its users. Our developer fellowship program provides sponsorship funding to accelerate the ongoing development of these tools and kickstart other applications---especially projects that make use of Brighter Planet web services. Interested? [Apply today](/fellowship.html)
=--
{.fellowship}
=--
{.extras}
