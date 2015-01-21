[![Build Status](https://secure.travis-ci.org/intuit/jetty-cookbook.png)](http://travis-ci.org/intuit/jetty-cookbook)

**!!! This project has been deprecated.  We recommend you search the [Chef Supermarket ](https://supermarket.chef.io/) for a supported alternative !!!**

## The jetty Cookbook

This cookbook installs and configures the version of Jetty that Intuit has
packaged as an RPM. This allows Intuit to work with whatever version of
Jetty it prefers and not be held back by the Opscode Jetty cookbook.

### Differences between our version and the Opscode version

* We need more flexibility in the version of Jetty we use than the Opscode one allowed
* We prefer to RPM Jetty into our repos for deployments and the Opscode one
  pulled it down from the Internet
* We had no need for the Cargo dependency in the Opscode one
