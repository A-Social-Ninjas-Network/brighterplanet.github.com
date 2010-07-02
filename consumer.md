---
title: Consumer
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
