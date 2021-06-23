local Plugin = script.Parent.Parent.Parent

local Rodux = require(Plugin.Packages.Rodux)
local Cryo = require(Plugin.Packages.Cryo)

local TerrainEnums = require(Plugin.Src.Util.TerrainEnums)
local ImportMaterialMode = TerrainEnums.ImportMaterialMode

local ImportLocalTool = Rodux.createReducer({
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

	--[[
		heightmap and colormap are structs of the form:
		file : File instance
		width : int
		height : int
		channels : int
		bytesPerChannel : int (heightmap only, for 16 bit support)
		status : string (error message)
	]]
	heightmap = {},
	colormap = {},
	colormapWarningId = nil,

	defaultMaterial = Enum.Material.Asphalt,
	materialMode = ImportMaterialMode.DefaultMaterial,

	sizeChangedByUser = false,
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

	SetImportMaterialMode = function(state, action)
		return Cryo.Dictionary.join(state, {
			materialMode = action.materialMode,
		})
	end,

	SelectHeightmap = function(state, action)
		return Cryo.Dictionary.join(state, {
			heightmap = action.heightmap or {},
		})
	end,

	SelectColormap = function(state, action)
		return Cryo.Dictionary.join(state, {
			colormap = action.colormap or {},
		})
	end,

	SetColormapWarningId = function(state, action)
		return Cryo.Dictionary.join(state, {
			colormapWarningId = action.colormapWarningId or Cryo.None,
		})
	end,

	SetDefaultMaterial = function(state, action)
		return Cryo.Dictionary.join(state, {
			defaultMaterial = action.defaultMaterial,
		})
	end,

	SetSizeChangedByUser = function(state, action)
		return Cryo.Dictionary.join(state, {
			sizeChangedByUser = action.sizeChangedByUser,
		})
	end,
})

return ImportLocalTool
