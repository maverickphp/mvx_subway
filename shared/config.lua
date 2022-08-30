Config                      	= {}
Config.DrawDistance             = 5.0
Config.Distance               	= 0.5
Config.Locale               	= 'en'

Config.SubwayBlip = {
	Coords = vector3(-1249.505981, -297.081848, 37.348869),
	Sprite  = 293,
	Display = 4,
	Scale   = 0.7,
	Colour  = 24,
}

Config.Subway = {
	SpawnVeh = vector4(-1254.902222, -269.206482, 38.180248, 301.081848),
}

Config.Zones = {

	Garage = {
		Pos   = vector3(-1254.939697, -273.812927, 38.985863),
		message = "Access to the garage",
		event = "mvx_subway:openGarage",
		grade = {conveyor = true, employer = true, chef = true, coboss = true, boss = true},
	},

	Boss = {
		Pos   = vector3(-1255.072876, -284.305756, 37.355324),
		message = "Go to management",
		event = "mvx_subway:openBoss",
		grade = {boss = true},
	},

}

Config.Shops = {

	Juice = {
		Model   = -1369928609,
		message = "make an orange juice",
		event = "mvx_subway:takeOrangejuice",
		grade = {conveyor = true, employer = true, chef = true, coboss = true, boss = true},
	},

	Coffee = {
		Model   = -938179374,
		message = "make a coffee",
		event = "mvx_subway:takeCoffee",
		grade = {conveyor = true, employer = true, chef = true, coboss = true, boss = true},
	},

	Milkshake = {
		Model   = -1415058956,
		message = "Have a milkshake",
		event = "mvx_subway:takeMilkshake",
		grade = {conveyor = true, employer = true, chef = true, coboss = true, boss = true},
	},

	Fresh = {
		Model   = -1153271191,
		item	= 'cola',
		message = "He takes a cola",
		event = "mvx_subway:takeCola",
		grade = {conveyor = true, employer = true, chef = true, coboss = true, boss = true},
	},
	Wrap = {
		Model   = 1166604921,
		item	= 'wrap',
		message = "He takes a wrap",
		event = "mvx_subway:takeWrap",
		grade = {conveyor = true, employer = true, chef = true, coboss = true, boss = true},
	},

	Salad = {
		Model   = 1166604921,
		item	= 'salad',
		message = "He takes a salad",
		event = "mvx_subway:takeSalad",
		grade = {conveyor = true, employer = true, chef = true, coboss = true, boss = true},
	},

	
	Subwayclub = {
		Model   = -1675493326,
		item	= 'subwayclub',
		message = "He takes a Subwayclub",
		event = "mvx_subway:takeSubwayclub",
		grade = {conveyor = true, employer = true, chef = true, coboss = true, boss = true},
	},


}

Config.cars = {
	{nom = "Ranger vehicle", modele = ""},
    {nom = "Blista", modele = "blista"},
	{nom = "T20", modele = "t20"},
	{nom = "Adder", modele = "adder"},
}

Config.ColorCar = {
	Red = 255,
	Green = 0,
	Blue = 0
}
Config.Plate = "Subway"
