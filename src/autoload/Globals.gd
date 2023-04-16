extends Node

var TILE_SIZE := 16

var INFO := {
	"welcome": {
		"title": "ARRIVED AT:\nWPI",
		"info": "Welcome to WPI!",
		"random": [
			"Arrow keys to walk. Space to interact."
		]
	},
	"harrington": {
		"title": "HARRINGTON\nAUDITORIUM",
		"info": "Opened on 2/27/1968! Harrington\nhosts social functions and sports events.",
		"random": [
			"Over twenty classes graduated here! But now, due to a student\npopulation growth rate of O(n!), commencements take place elsewhere.",
		]
	},
	"messenger": {
		"title": "MESSENGER\nHALL",
		"info": "WPI’s newest dorm, sits atop the\nInnovation Studio, a maker space for nerds",
		"random": [
			"Messenger is the only freshman dorm with AC ;(",
			"A genius left a window open at night, bursting his radiator. The building\nflooded, damaging Planet Smoothie, which closed for a week. They didn’t drain\nthe lemonade. Upon re-opening, students drank old radiator lemonade.",
			"The Innovation Studio was originally named Foisie Innovation Studio.\nafter Robert Foisie. Foise donated millions to WPI. After calling\na hitman on his son, WPI removed his name but you can still see the lettering.",
			"Used to have Auntie Anne. The smell of the pretzels alledly\nmade the robots in the RBE lab drive 30% faster."
		]
	},
	"bartlett": {
		"title": "BARTLETT\nCENTER",
		"info": "Bartlett houses WPI’s offices of\nAdmissions and Financial Aid",
		"random": [
			"Bartlett features floor-to-ceiling glass windows and energy-efficient\nsystems. However, for no known reason, the lights are on 24/7."
		]
	},
	"daniels": {
		"title": "DANIELS\nHALL",
		"info": "Parent's Day, May 5, 1962 initiated\nthe construction of this freshman dorm.",
		"random": [
			"It is the dorm with the most firetruck and ambulance visits by a decisive\ndifference, peaking at twice in less than a week.",
			"Elevators used to use a glitchy analog computer. If you pushed 2 and 4 at\nthe same time it would go to the third floor.If you pushed 2 and 3 it\nwould go half way between the floors.",
			"A student once rewired the buttons so they would\ntake you to the wrong floors. Like a Pokemon puzzle..."
		]
	},
	"morgan": {
		"title": "MORGAN\nHALL",
		"info": "A freshman dorm with WPI's main dining\nhall, Morgan Dining Hall",
		"random": [
			"Students call Morgan Dining Hall by its ancient name,\nDAKA, despite WPI's efforts to memory-hole the name of DAKA.",
			"Expect to be cup-stacked during your first week here...",
			"DAKArrhea is a disease caused by DAKA. It can occur by:\nEating too much DAKA or returning from a week of home-cooked food\nIn rare occurence, DAKArrhea may onset while in DAKA..."
		]
	},
	"recCenter": {
		"title": "RECREATION\nCENTER",
		"info": "Features weights, a pool, gym, track,\nrowing tanks, and squash courts.",
		"random": [
			"WPI requires PE classes. Popular ones like Walking for Fitness\nare quickly filled by seniors who get to register early.\nOne PE class is ran by legendary Officer Chad Gaylord.",
		]
	},
	"riley": {
		"title": "RILEY\nHALL",
		"info": "The first hall built, Riley dates back\nto 1927 and features a theatre below.",
		"random": [
			"It is one of the worst dorms for freshmen, but it\nhas good proximity to classes and campus buildings.",
			"If you're lucky, you'll get a giant room, a single (0 friends),\nor a double with your own bedrooms.",
			"In 2023 legendary RA Chris Davis advised the third floor.",
			"People put mints on the radiators.\nThey gave a minty scent and remain melted and burnt."
		]
	},
}
