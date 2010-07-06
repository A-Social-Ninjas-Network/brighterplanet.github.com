---
title: Integrator
layout: default
---

# Carbon middleware #

Brighter Planet is now delivering its enterprise-grade climate software as a suite of open web services.

## API keys ##

Most Brighter Planet web service requests require the use of an API key. Some requests will require you to have a credit card on file associated with your key.

[Get an API key](http://keyring.brighterplanet.com)
{:cta .key}

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

{:cta: .cta}

## Libraries ##

Brighter Planet is developing libraries for several popular programming languages to streamline the integration of our web services into youur application.

### Ruby ###

An early version of the official Ruby library for the emission estimates services is available in the [carbon](http://github.com/brighterplanet/carbon) gem:

{% highlight console %}
$ gem install carbon
{% endhighlight %}

*Libraries for other languages coming soon.*

## Sample applications ##

Brighter Planet has prepared and open-sourced several sample applications to demonstrate the integration of the carbon middleware web services.

### Careplane ###

[![Careplane](/images/careplane.png)](http://banjo.brighterplanet.com/andy/careplane.swf)

[Careplane](http://careplane.org) mashes up [Kayak](http://kayak.com)'s flight booking API with Brighter Planet's emission estimate service to display flight footprint estimates in search results.

Unfortunately, the Kayak API is rate-limited, so your search may not work. We recorded [a screencast of Careplane in action](http://banjo.brighterplanet.com/andy/careplane.swf) in case this happens.

Careplane's source code is [available on GitHub](http://github.com/brighterplanet/kayak1) to assist you in developing your own applications.

### gr.eenerpastur.es ###

[![gr.eenerpastur.es](/images/greener_pastures.png)](http://gr.eenerpastur.es)

[gr.eenerpastur.es](http://gr.eenerpastur.es) mashes up [Zillow](http://zillow.com) real estate listings with Brighter Planet's emission estimate service to provide a daily-updated ranking of America's greenest cities.

gr.eenerpastur.es's source code is also [available on Github](http://github.com/brighterplanet/zillow1).


