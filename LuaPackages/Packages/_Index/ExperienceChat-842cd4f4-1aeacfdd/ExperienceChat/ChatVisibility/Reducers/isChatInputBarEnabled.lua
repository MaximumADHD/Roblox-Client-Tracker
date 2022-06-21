local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local Packages = ExperienceChat.Parent
local Rodux = require(Packages.Rodux)
local Dictionary = require(Packages.llama).Dictionary

local Actions = ExperienceChat.ChatVisibility.Actions
local ChatInputBarConfigurationEnabled = require(Actions.ChatInputBarConfigurationEnabled)
local ChatTopBarButtonActivated = require(Actions.ChatTopBarButtonActivated)
local SetCoreGuiEnabledChanged = require(Actions.SetCoreGuiEnabledChanged)

local ClientAppLoaded = require(ExperienceChat.Actions.ClientAppLoaded)

type State = {
	_propertyEnabled: boolean,
	_coreGuiEnabled: boolean,
	_topBarVisibility: boolean,
	value: boolean,
}

local defaultState: State = {
	_propertyEnabled = true,
	_coreGuiEnabled = true,
	_topBarVisibility = true,
	value = true,
}

return Rodux.createReducer(defaultState, {
	[ChatInputBarConfigurationEnabled.name] = function(state: State, action: ChatInputBarConfigurationEnabled.Action)
		return Dictionary.join(state, {
			_propertyEnabled = action.enabled,
			value = state._topBarVisibility and state._coreGuiEnabled and action.enabled,
		})
	end,

	[ChatTopBarButtonActivated.name] = function(state: State, action: ChatTopBarButtonActivated.Action)
		return Dictionary.join(state, {
			_topBarVisibility = action.isVisible,
			value = state._propertyEnabled and state._coreGuiEnabled and action.isVisible,
		})
	end,

	[SetCoreGuiEnabledChanged.name] = function(state: State, action: SetCoreGuiEnabledChanged.Action)
		return Dictionary.join(state, {
			_coreGuiEnabled = action.enabled,
			value = state._propertyEnabled and state._topBarVisibility and action.enabled,
		})
	end,

	[ClientAppLoaded.name] = function(state: State, _)
		local StarterGui = game:GetService("StarterGui")
		local enabled = StarterGui:GetCoreGuiEnabled("Chat")
		return Dictionary.join(state, {
			_coreGuiEnabled = enabled,
			value = state._propertyEnabled and state._topBarVisibility and enabled,
		})
	end,
})
