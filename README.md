# flockbot.api

## Description

The Flockbot.api project is a simple Rails application that wraps the
[Flockbot](https://github.com/setonparish/flockbot) gem and expose endpoints
so that [Flocknote](https://www.flocknote.com/) can finally work with
[Zapier](https://www.zapier.com).

Note that the Zapier integration is private and only exposed to Seton Parish.
This project is being shared for anyone that might have similar needs.

## End Points Exposed

* `GET /ping` - returns an http `200` status
* `GET /api/groups` - returns list of Flocknote groups
* `POST /api/group_participation` - adds user to a specific Flocknote group
