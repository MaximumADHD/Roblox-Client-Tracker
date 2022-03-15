local Plugin = script.Parent.Parent.Parent
local _Types = require(Plugin.Src.Types)
local Rodux = require(Plugin.Packages.Rodux)
local Cryo = require(Plugin.Packages.Cryo)

local Actions = Plugin.Src.Actions
local SetName = require(Actions.SetName)
local SetBaseMaterial = require(Actions.SetBaseMaterial)
local SetColorMap = require(Actions.SetColorMap)
local SetFromVariantInstance = require(Actions.SetFromVariantInstance)
local SetNormalMap = require(Actions.SetNormalMap)
local SetMetalnessMap = require(Actions.SetMetalnessMap)
local SetRoughnessMap = require(Actions.SetRoughnessMap)
local ClearMaterialVariant = require(Actions.ClearMaterialVariant)

export type State = {
	name: string,
	baseMaterial: Enum.Material,
	colorMap: _Types.TextureMap?,
	normalMap: _Types.TextureMap?,
	metalnessMap: _Types.TextureMap?,
	roughnessMap: _Types.TextureMap?,
}

local MaterialPromptReducer = Rodux.createReducer({}, {
	[SetName.name] = function(state: State, action : SetName.Payload)
		return Cryo.Dictionary.join(state, {
			name = action.name,
		})
	end,

	[SetBaseMaterial.name] = function(state: State, action : SetBaseMaterial.Payload)
		return Cryo.Dictionary.join(state, {
			baseMaterial = action.baseMaterial,
		})
	end,

	[SetColorMap.name] = function(state: State, action : SetColorMap.Payload)
		return Cryo.Dictionary.join(state, {
			colorMap = action.colorMap or Cryo.None,
		})
	end,

	[SetNormalMap.name] = function(state: State, action : SetNormalMap.Payload)
		return Cryo.Dictionary.join(state, {
			normalMap = action.normalMap or Cryo.None,
		})
	end,

	[SetMetalnessMap.name] = function(state: State, action : SetMetalnessMap.Payload)
		return Cryo.Dictionary.join(state, {
			metalnessMap = action.metalnessMap or Cryo.None,
		})
	end,

	[SetRoughnessMap.name] = function(state: State, action : SetRoughnessMap.Payload)
		return Cryo.Dictionary.join(state, {
			roughnessMap = action.roughnessMap or Cryo.None,
		})
	end,

	[ClearMaterialVariant.name] = function(state: State)
		return Cryo.Dictionary.join(state, {
			name = Cryo.None,
			baseMaterial = Cryo.None,
			colorMap = Cryo.None,
			normalMap = Cryo.None,
			metalnessMap = Cryo.None,
			roughnessMap = Cryo.None,
		})
	end,
	
	[SetFromVariantInstance.name] = function(state: State, action : SetFromVariantInstance.Payload)
		return Cryo.Dictionary.join(state, {
			name = action.name,
			baseMaterial = action.baseMaterial,
			colorMap = action.colorMap and { assetId = action.colorMap } or Cryo.None,
			metalnessMap = action.metalnessMap and { assetId = action.metalnessMap } or Cryo.None,
			normalMap = action.normalMap and { assetId = action.normalMap } or Cryo.None,
			roughnessMap = action.roughnessMap and { assetId = action.roughnessMap } or Cryo.None,
		})
	end,
})

return MaterialPromptReducer
