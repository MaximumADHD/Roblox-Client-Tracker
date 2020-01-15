--[[
	Keeps Generate data
]]

local Plugin = script.Parent.Parent.Parent
local Rodux = require(Plugin.Packages.Rodux)
local Cryo = require(Plugin.Packages.Cryo)

local TerrainEnums = require(Plugin.Src.Util.TerrainEnums)
local Biome = TerrainEnums.Biome

local GenerateTool = Rodux.createReducer({
	position = {
		X = 0,
		Y = 0,
		Z = 0,
	},

	size = {
		X = 1024,
		Y = 512,
		Z = 1024,
	},

	biomeSelection = {
		[Biome.Plains] = true,
		[Biome.Mountains] = true,
		[Biome.Hills] = true,

		[Biome.Water] = false,
		[Biome.Dunes] = false,
		[Biome.Arctic] = false,
		[Biome.Marsh] = false,
		[Biome.Canyons] = false,
		[Biome.Lavascape] = false,
	},

	biomeSize = 100,
	haveCaves = true,

	seed = "618033988",
}, {
	ChangePosition = function(state, action)
		local position = action.position

		return Cryo.Dictionary.join(state, {
			position = position,
		})
	end,

	ChangeSize = function(state, action)
		local size = action.size

		return Cryo.Dictionary.join(state, {
			size = size,
		})
	end,

	SetBiomeSelection = function(state, action)
		local update = action.newBiomeUpdate

		local newTable = Cryo.Dictionary.join(state.biomeSelection, update)

		return Cryo.Dictionary.join(state, {
			biomeSelection = newTable,
		})
	end,

	SetBiomeSize = function(state, action)
		local biomeSize = action.biomeSize

		return Cryo.Dictionary.join(state, {
			biomeSize = biomeSize,
		})
	end,

	SetHaveCaves = function(state, action)
		local haveCaves = action.haveCaves

		return Cryo.Dictionary.join(state, {
			haveCaves = haveCaves,
		})
	end,

	SetSeed = function(state, action)
		local seed = action.seed

		return Cryo.Dictionary.join(state, {
			seed = seed,
		})
	end,
})

return GenerateTool
