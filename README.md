# Stoke API

This repository stores the back-end code for the StokeTech website.

## Introduction

This application is built on Rails 7 and Ruby 3.1. It uses Postgresql for the database. A `postman_requests.json` file is included to import into an API client.

## Setup

1. Clone the repo
2. `cd` into `stoke-api`
3. Set `DATABASE_USER` and `DATABASE_PASSWORD` as environment variables. These should be the data you authenticate into your local Postgresql instance with.
4. Run `bundle install`
5. Run `rails s`