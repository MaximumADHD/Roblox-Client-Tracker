local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local Packages = ExperienceChat.Parent
local Rodux = require(Packages.Rodux)
local Dictionary = require(Packages.llama).Dictionary

local Flags = ExperienceChat.Flags
local getTextChatServicePropertyTextBox = require(Flags.getTextChatServicePropertyTextBox)

local Actions = ExperienceChat.Actions
local ChatInputBarConfigurationEnabled = require(Actions.ChatInputBarConfigurationEnabled)
local ChatTopBarButtonActivated = require(Actions.ChatTopBarButtonActivated)
local SetCoreGuiEnabledChanged = require(Actions.SetCoreGuiEnabledChanged)
local ClientAppLoaded = require(Actions.ClientAppLoaded)
local DevTextBoxEnabledChanged = require(Actions.DevTextBoxEnabledChanged)

type State = {
	_propertyEnabled: boolean,
	_coreGuiEnabled: boolean,
	_topBarVisibility: boolean,
	_devTextBoxEnabled: boolean,
	value: boolean,
}

local defaultState: State = {
	_propertyEnabled = true,
	_coreGuiEnabled = true,
	_topBarVisibility = true,
	_devTextBoxEnabled = false,
	value = true,
}

return Rodux.createReducer(defaultState, {
	[ChatInputBarConfigurationEnabled.name] = function(state: State, action: ChatInputBarConfigurationEnabled.Action)
		local value: boolean
		if getTextChatServicePropertyTextBox() then
			value = state._topBarVisibility
				and state._coreGuiEnabled
				and not state._devTextBoxEnabled
				and action.enabled
		else
			value = state._topBarVisibility and state._coreGuiEnabled and action.enabled
		end

		return Dictionary.join(state, {
			_propertyEnabled = action.enabled,
			value = value,
		})
	end :: any,

	[ChatTopBarButtonActivated.name] = function(state: State, action: ChatTopBarButtonActivated.Action)
		local value: boolean
		if getTextChatServicePropertyTextBox() then
			value = state._propertyEnabled
				and state._coreGuiEnabled
				and not state._devTextBoxEnabled
				and action.isVisible
		else
			value = state._propertyEnabled and state._coreGuiEnabled and action.isVisible
		end
		return Dictionary.join(state, {
			_topBarVisibility = action.isVisible,
			value = value,
		})
	end :: any,

	[SetCoreGuiEnabledChanged.name] = function(state: State, action: SetCoreGuiEnabledChanged.Action)
		local value: boolean
		if getTextChatServicePropertyTextBox() then
			value = state._propertyEnabled
				and state._topBarVisibility
				and not state._devTextBoxEnabled
				and action.enabled
		else
			value = state._propertyEnabled and state._topBarVisibility and action.enabled
		end
		return Dictionary.join(state, {
			_coreGuiEnabled = action.enabled,
			value = value,
		})
	end :: any,

	[DevTextBoxEnabledChanged.name] = function(state: State, action: DevTextBoxEnabledChanged.Action)
		if getTextChatServicePropertyTextBox() then
			return Dictionary.join(state, {
				_devTextBoxEnabled = action.enabled,
				value = state._propertyEnabled
					and state._topBarVisibility
					and state._coreGuiEnabled
					and not action.enabled,
			})
		else
			return state
		end
	end :: any,

	[ClientAppLoaded.name] = function(state: State, action: ClientAppLoaded.Action)
		local value: boolean
		if getTextChatServicePropertyTextBox() then
			value = state._propertyEnabled
				and state._topBarVisibility
				and not state._devTextBoxEnabled
				and action.isChatCoreGuiEnabled
		else
			value = state._propertyEnabled and state._topBarVisibility and action.isChatCoreGuiEnabled
		end
		return Dictionary.join(state, {
			_coreGuiEnabled = action.isChatCoreGuiEnabled,
			value = value,
		})
	end :: any,
})
