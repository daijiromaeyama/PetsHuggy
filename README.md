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
|home_type|pet_type|pet_size|breeding_years|address|listing_title|listing_content|price_pernight|active |user_id   |latitude|ongitude|not_checked|
|:-------:|:------:|:------:|:------------:|:-----:|:-----------:|:-------------:|:------------:|:-----:|:--------:|:------:|:------:|:---------:|
|string   |string  |string  |integer       |string |string       |text           |integer       |boolean|references|float   |float   |integer    |

### Photos
|listing_id|
|:--------:|
|references|

### Reservations
|user_id   |listing_id|start_date|end_date|price_pernight|total_price|self_booking|
|:--------:|:--------:|:--------:|:------:|:------------:|:---------:|:----------:|
|references|references|datetime  |datetime|integer       |integer    |boolean     |

### Reviews
|description|rate   |lisiting_id|user_id   |
|:---------:|:-----:|:---------:|:--------:|
|text       |integer|references |references|

### Conversations
|sender_id|recipient_id|
|:-------:|:----------:|
|integer  |integer     |

### Messages
|body|conversation_id|user_id   |
|:--:|:-------------:|:--------:|
|text|references     |references|

## Asociation

### User
- has_many :listings
- has_many :reservations
- has_many :reviews

## Author
[daijiromaeyama](https://github.com/daijiromaeyama)
