local Plugin = script.Parent.Parent.Parent
local _Types = require(Plugin.Src.Types)
local Rodux = require(Plugin.Packages.Rodux)
local Cryo = require(Plugin.Packages.Cryo)

local Actions = Plugin.Src.Actions
local SetName = require(Actions.SetName)
local SetBaseMaterial = require(Actions.SetBaseMaterial)
local SetColorMap = require(Actions.SetColorMap)
local SetFromVariantInstance = require(Actions.SetFromVariantInstance)
local SetMetalnessMap = require(Actions.SetMetalnessMap)
local SetNormalMap = require(Actions.SetNormalMap)
local SetRoughnessMap = require(Actions.SetRoughnessMap)
local SetStudsPerTile = require(Actions.SetStudsPerTile)
local SetMaterialPattern = require(Actions.SetMaterialPattern)
local ClearMaterialVariant = require(Actions.ClearMaterialVariant)
local SetMode = require(Actions.SetMode)

local getMaterialPatterns = require(Plugin.Src.Resources.Constants.getMaterialPatterns)

local DEFAULT_STUDS_PER_TILE = 10
local materialPatterns = getMaterialPatterns()
local DEFAULT_MATERIAL_PATTERN = materialPatterns[1]
local DEFAUT_BASE_MATERIAL = Enum.Material.Plastic

export type State = {
	Name: string,
	BaseMaterial: Enum.Material,
	ColorMap: _Types.TextureMap?,
	MetalnessMap: _Types.TextureMap?,
	NormalMap: _Types.TextureMap?,
	RoughnessMap: _Types.TextureMap?,
	Mode: string?,
	StudsPerTile: number,
	MaterialPattern: Enum.MaterialPattern,
}

local initialState = {
	BaseMaterial = DEFAUT_BASE_MATERIAL,
	StudsPerTile = DEFAULT_STUDS_PER_TILE,
	MaterialPattern = DEFAULT_MATERIAL_PATTERN,
}

local MaterialPromptReducer = Rodux.createReducer(initialState, {
	[SetName.name] = function(state: State, action: SetName.Payload)
		return Cryo.Dictionary.join(state, {
			Name = action.Name,
		})
	end,

	[SetBaseMaterial.name] = function(state: State, action: SetBaseMaterial.Payload)
		return Cryo.Dictionary.join(state, {
			BaseMaterial = action.BaseMaterial,
		})
	end,

	[SetColorMap.name] = function(state: State, action: SetColorMap.Payload)
		return Cryo.Dictionary.join(state, {
			ColorMap = action.ColorMap or Cryo.None,
		})
	end,

	[SetMetalnessMap.name] = function(state: State, action: SetMetalnessMap.Payload)
		return Cryo.Dictionary.join(state, {
			MetalnessMap = action.MetalnessMap or Cryo.None,
		})
	end,

	[SetNormalMap.name] = function(state: State, action: SetNormalMap.Payload)
		return Cryo.Dictionary.join(state, {
			NormalMap = action.NormalMap or Cryo.None,
		})
	end,

	[SetRoughnessMap.name] = function(state: State, action: SetRoughnessMap.Payload)
		return Cryo.Dictionary.join(state, {
			RoughnessMap = action.RoughnessMap or Cryo.None,
		})
	end,

	[SetStudsPerTile.name] = function(state: State, action: SetStudsPerTile.Payload)
		return Cryo.Dictionary.join(state, {
			StudsPerTile = action.StudsPerTile,
		})
	end,
	
	[SetMaterialPattern.name] = function(state: State, action: SetMaterialPattern.Payload)
		return Cryo.Dictionary.join(state, {
			MaterialPattern = action.MaterialPattern,
		})
	end,

	[ClearMaterialVariant.name] = function(state: State)
		return Cryo.Dictionary.join(state, {
			Name = Cryo.None,
			BaseMaterial = Cryo.None,
			ColorMap = Cryo.None,
			MetalnessMap = Cryo.None,
			NormalMap = Cryo.None,
			RoughnessMap = Cryo.None,
			StudsPerTile = initialState.StudsPerTile,
			MaterialPattern = initialState.MaterialPattern,
		})
	end,
	
	[SetFromVariantInstance.name] = function(state: State, action: SetFromVariantInstance.Payload)
		return Cryo.Dictionary.join(state, {
			Name = action.Name,
			BaseMaterial = action.BaseMaterial,
			ColorMap = action.ColorMap ~= "" and { assetId = action.ColorMap } or Cryo.None,
			MetalnessMap = action.MetalnessMap ~= "" and { assetId = action.MetalnessMap } or Cryo.None,
			NormalMap = action.NormalMap ~= "" and { assetId = action.NormalMap } or Cryo.None,
			RoughnessMap = action.RoughnessMap ~= "" and { assetId = action.RoughnessMap } or Cryo.None,
			StudsPerTile = action.StudsPerTile,
			MaterialPattern = action.MaterialPattern,
		})
	end,

	[SetMode.name] = function(state: State, action: SetMode.Payload)
		return Cryo.Dictionary.join(state, {
			Mode = action.Mode or Cryo.None,
		})
	end,
})

return MaterialPromptReducer
