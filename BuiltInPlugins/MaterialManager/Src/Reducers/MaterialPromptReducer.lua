local Plugin = script.Parent.Parent.Parent
local _Types = require(Plugin.Src.Types)
local Rodux = require(Plugin.Packages.Rodux)
local Cryo = require(Plugin.Packages.Cryo)

local Actions = Plugin.Src.Actions
local SetName = require(Actions.SetName)
local SetBaseMaterial = require(Actions.SetBaseMaterial)
local SetColorMap = require(Actions.SetColorMap)
local SetNormalMap = require(Actions.SetNormalMap)
local SetMetalnessMap = require(Actions.SetMetalnessMap)
local SetRoughnessMap = require(Actions.SetRoughnessMap)

export type State = {
	name: string,
	baseMaterial: Enum.Material,
	colorMap: _Types.TextureMap?,
	normalMap: _Types.TextureMap?,
	metalnessMap: _Types.TextureMap?,
	roughnessMap: _Types.TextureMap?,
}

local initialState : State = {
	name = nil,
	baseMaterial = nil, -- Enum.Material.Asphalt
}

local MaterialPromptReducer = Rodux.createReducer(initialState, {
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
			colorMap = action.colorMap,
		})
	end,

	[SetNormalMap.name] = function(state: State, action : SetNormalMap.Payload)
		return Cryo.Dictionary.join(state, {
			normalMap = action.normalMap,
		})
	end,

	[SetMetalnessMap.name] = function(state: State, action : SetMetalnessMap.Payload)
		return Cryo.Dictionary.join(state, {
			metalnessMap = action.metalnessMap,
		})
	end,

	[SetRoughnessMap.name] = function(state: State, action : SetRoughnessMap.Payload)
		return Cryo.Dictionary.join(state, {
			roughnessMap = action.roughnessMap,
		})
	end,
	
})

return MaterialPromptReducer
