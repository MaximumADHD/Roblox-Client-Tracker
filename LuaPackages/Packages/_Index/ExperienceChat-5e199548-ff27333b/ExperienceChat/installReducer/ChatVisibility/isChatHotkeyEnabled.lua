local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local Packages = ExperienceChat.Parent
local Rodux = require(Packages.Rodux)
local Dictionary = require(Packages.llama).Dictionary

local Actions = ExperienceChat.Actions
local ChatInputBarConfigurationEnabled = require(Actions.ChatInputBarConfigurationEnabled)
local SetCoreGuiEnabledChanged = require(Actions.SetCoreGuiEnabledChanged)

local ClientAppLoaded = require(ExperienceChat.Actions.ClientAppLoaded)

type State = {
	_propertyEnabled: boolean,
	_coreGuiEnabled: boolean,
	value: boolean,
}

local defaultState: State = {
	_propertyEnabled = true,
	_coreGuiEnabled = true,
	value = true,
}

return Rodux.createReducer(defaultState, {
	[ChatInputBarConfigurationEnabled.name] = function(state: State, action: ChatInputBarConfigurationEnabled.Action)
		return Dictionary.join(state, {
			_propertyEnabled = action.enabled,
			value = state._coreGuiEnabled and action.enabled,
		})
	end :: any,

	[SetCoreGuiEnabledChanged.name] = function(state: State, action: SetCoreGuiEnabledChanged.Action)
		return Dictionary.join(state, {
			_coreGuiEnabled = action.enabled,
			value = state._propertyEnabled and action.enabled,
		})
	end :: any,

	[ClientAppLoaded.name] = function(state: State, action: ClientAppLoaded.Action)
		return Dictionary.join(state, {
			_coreGuiEnabled = action.isChatCoreGuiEnabled,
			value = state._propertyEnabled and action.isChatCoreGuiEnabled,
		})
	end :: any,
})
