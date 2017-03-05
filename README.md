PetsHuggy
====

## Overview
ペットシッターをネットで掲載・発見・予約できるサービス

## Tables

### Users
|email |password|provider|uid   |image |name  |phone_number|description|publishable_key|secret_key|stripe_user_id|stripe_user_id|currency|stripe_account_type|
|:----:|:------:|:------:|:----:|:----:|:----:|:----------:|:---------:|:-------------:|:--------:|:------------:|:------------:|:------:|:----:|
|string|sting   |string  |string|string|string|string      |string     |string         |string    |string        |string        |string  |string|

### Listings
|home_type|pet_type|pet_size|breeding_years|address|listing_title|listing_content|price_pernight|active |user      |latitude|ongitude|not_checked|
|:-------:|:------:|:------:|:------------:|:-----:|:-----------:|:-------------:|:------------:|:-----:|:--------:|:------:|:------:|:---------:|
|string   |string  |string  |integer       |string |string       |text           |integer       |boolean|references|float   |float   |integer    |

## Author
[daijiromaeyama](https://github.com/daijiromaeyama)
