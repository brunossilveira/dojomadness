# Overwatch Heroes and Abilities API :muscle:

This is a simple API that retrieves Overwatch heroes and abilities data. It's written according to the [JSONAPI](http:://jsonapi.org) specifications.

## Endpoints

```
- /api/heroes - hero list
- /api/heroes/{hero_id} - hero data
- /api/heroes/{hero_id}/abilities - hero ability list
- /api/abilities/ - ability list
- /api/abilities/{ability_id} - ability data
```

## Example response


`GET /api/heroes/1`

```json
{
	data: [
		{
			id: "1",
			type: "abilities",
			attributes: {
				id: 1,
				name: "Biotic Rifle",
				description: "Ana’s rifle shoots darts that can restore health to her allies or deal ongoing damage to her enemies. She can use the rifle’s scope to zoom in on targets and make highly accurate shots.",
				is_ultimate: false
			}
		},
		{
			id: "2",
			type: "abilities",
			attributes: {
				id: 2,
				name: "Sleep Dart",
				description: "Ana fires a dart from her sidearm, rendering an enemy unconscious (though any damage will rouse them).",
				is_ultimate: false
			}
		},
		{
			id: "3",
			type: "abilities",
			attributes: {
				id: 3,
				name: "Biotic Grenade",
				description: "Ana tosses a biotic bomb that deals damage to enemies and heals allies in a small area of effect. Affected allies briefly receive increased healing from all sources, while enemies caught in the blast cannot be healed for a few moments.",
				is_ultimate: false
			}
		},
		{
			id: "4",
			type: "abilities",
			attributes: {
				id: 4,
				name: "Nano Boost",
				description: "After Ana hits one of her allies with a combat boost, they temporarily move faster, deal more damage, and take less damage from enemies’ attacks.",
				is_ultimate: true
			}
		}
	]
}
```

## Setup

To install the application in your local environment, just run `rake db:setup`, the seeds file will get the data from https://overwatch-api.net and will create
the data into the local database.

## Tools

* Rails 5 (--api)
* [jsonapi](https://github.com/jsonapi-rb/jsonapi-rails)
* PostgreSQL
* RSpec

## Tests

This project uses webmock to avoid hitting external services when running tests.

To run the test suite: `rspec`
