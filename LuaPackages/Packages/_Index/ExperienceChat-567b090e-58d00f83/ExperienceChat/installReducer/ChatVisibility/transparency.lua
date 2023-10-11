local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local Packages = ExperienceChat.Parent
local Rodux = require(Packages.Rodux)
local Dictionary = require(Packages.llama).Dictionary

local Actions = ExperienceChat.Actions
local ChatInputBarConfigurationEnabled = require(Actions.ChatInputBarConfigurationEnabled)
local ChatTopBarButtonActivated = require(Actions.ChatTopBarButtonActivated)
local SetCoreGuiEnabledChanged = require(Actions.SetCoreGuiEnabledChanged)
local ClientAppLoaded = require(ExperienceChat.Actions.ClientAppLoaded)
local UserInteraction = require(ExperienceChat.Actions.UserInteraction)
local IncomingMessageReceived = require(Actions.IncomingMessageReceived)

type State = {
	textDurationUntilFadeout: number,
	backgroundDurationUntilFadeout: number,
	lastGeneralActivityTimestamp: number,
	lastMessageActivityTimestamp: number,
	isTextBoxFocused: boolean,
}

local defaultState: State = {
	textDurationUntilFadeout = 30,
	backgroundDurationUntilFadeout = 3.5,
	lastGeneralActivityTimestamp = 0,
	lastMessageActivityTimestamp = 0,
	isTextBoxFocused = false,
}

local function reset(state)
	local value = os.clock()

	return Dictionary.join(defaultState, {
		isTextBoxFocused = state.isTextBoxFocused,
		lastGeneralActivityTimestamp = value,
		lastMessageActivityTimestamp = value,
	})
end

local function resetTextOnly(state)
	local value = os.clock()

	return Dictionary.join(state, {
		isTextBoxFocused = state.isTextBoxFocused,
		lastMessageActivityTimestamp = value,
	})
end

return Rodux.createReducer(defaultState, {
	[ChatInputBarConfigurationEnabled.name] = function(state: State, action: ChatInputBarConfigurationEnabled.Action)
		if action.enabled then
			return reset(state)
		else
			return state
		end
	end :: any,

	[ChatTopBarButtonActivated.name] = function(state: State, action: ChatTopBarButtonActivated.Action)
		if action.isVisible then
			return reset(state)
		else
			return state
		end
	end :: any,

	[SetCoreGuiEnabledChanged.name] = function(state: State, action: SetCoreGuiEnabledChanged.Action)
		if action.enabled then
			return reset(state)
		else
			return state
		end
	end :: any,

	[ClientAppLoaded.name] = function(state: State, _action: ClientAppLoaded.Action)
		return reset(state)
	end :: any,

	[UserInteraction.name] = function(state: State, action: UserInteraction.Action)
		if action.interaction == "focus" then
			return Dictionary.join(reset(state), {
				isTextBoxFocused = true,
			})
		elseif action.interaction == "unfocus" then
			return Dictionary.join(reset(state), {
				isTextBoxFocused = false,
			})
		else
			return reset(state)
		end
	end :: any,

	[IncomingMessageReceived.name] = function(state: State, _action: IncomingMessageReceived.Action)
		return resetTextOnly(state)
	end :: any,
})
