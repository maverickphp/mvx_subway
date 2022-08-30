# esx_subway

Fellow | Communauté ✨

https://discord.gg/HctMr5Ug

✅ Vídeo: https://www.youtube.com/watch?v=TlWbAK1l6LY

## Requirements

###### [ox_lib](https://github.com/overextended/ox_lib)
###### [ox_inventory](https://github.com/overextended/ox_inventory)
###### [Qtarget](https://github.com/overextended/qtarget)

## **Add this to the file:** <sub>ox_inventory\data\stashes.lua</sub>
```
{
  coords = vec3(-1256.740234, -278.990112, 37.353382),
  target = {
    loc = vec3(-1256.740234, -278.990112, 37.353382),
    length = 0.6,
    width = 1.8,
    heading = 340,
    minZ = 36.35,
    maxZ = 38.35,
    label = 'Open personal locker'
  },
  name = 'subwaylocker',
  label = 'Personal Locker',
  owner = false,
  slots = 70,
  weight = 70000,
  groups = {['subway'] = 0}
},
```

## **Add this to the file:** <sub>ox_inventory\data\item.lua</sub>
```
['cola'] = {
		label = 'eCola',
		weight = 350,
		client = {
			status = { thirst = 200000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_ecola_can`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'You quenched your thirst with cola'
		}
	},
	
	['coffee'] = {
		label = 'Coffee',
		weight = 350,
		client = {
			status = { thirst = 200000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `p_amb_coffeecup_01`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'You quenched your thirst with coffee'
		}
	},

	['milkshake'] = {
		label = 'Milkshake',
		weight = 350,
		client = {
			status = { thirst = 200000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_food_cb_coffee`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'You quenched your thirst with milkshake'
		}
	}, 

	['orangejuice'] = {
		label = 'Orange juice',
		weight = 350,
		client = {
			status = { thirst = 200000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_food_cb_juice02`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'You quenched your thirst with orange juice'
		}
	},
```
