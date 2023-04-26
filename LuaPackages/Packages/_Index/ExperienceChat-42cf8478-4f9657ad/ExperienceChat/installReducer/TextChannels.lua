local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local Packages = ExperienceChat.Parent
local Rodux = require(Packages.Rodux)
local Dictionary = require(Packages.llama).Dictionary
local None = require(Packages.llama).None

local Logger = require(ExperienceChat.Logger):new("ExpChat/Reducers/" .. script.Name)

local Actions = ExperienceChat.Actions
local ChatInputBarActivatedTeamMode = require(Actions.ChatInputBarActivatedTeamMode)
local ChatInputBarActivatedWhisperMode = require(Actions.ChatInputBarActivatedWhisperMode)
local ChatInputBarResetTargetChannel = require(Actions.ChatInputBarResetTargetChannel)
local ClientAppLoaded = require(Actions.ClientAppLoaded)
local LocalTeamChanged = require(Actions.LocalTeamChanged)
local TargetTextChannelPropertyChanged = require(Actions.TargetTextChannelPropertyChanged)
local TextChannelCreated = require(Actions.TextChannelCreated)
local TextChannelRemoved = require(Actions.TextChannelRemoved)
local PlayerRemoved = require(Actions.PlayerRemoved)

export type State = {
	allTextChannels: { [string]: TextChannel },
	targetTextChannel: TextChannel?,
	currentTeam: Team?,
}

local defaultState: State = {
	allTextChannels = {},
	targetTextChannel = nil,
	currentTeam = nil,
}

local function getTeamTextChannelFromTeam(allTextChannels: { string: TextChannel }, team: Team): TextChannel?
	local targetTeamName = "RBXTeam" .. team.TeamColor.Name
	for teamName, textChannel in pairs(allTextChannels) do
		if teamName == targetTeamName then
			return textChannel
		end
	end

	return nil
end

local function getTextChannelFromName(allTextChannels: { string: TextChannel? }, givenName: string): TextChannel?
	for name, textChannel in pairs(allTextChannels) do
		if name == givenName then
			return textChannel
		end
	end

	return nil
end

return Rodux.createReducer(defaultState, {
	[ClientAppLoaded.name] = function(state: State, action: ClientAppLoaded.Action)
		return Dictionary.join(state, {
			currentTeam = if action.team == nil then None else action.team,
		})
	end :: any,

	[TextChannelCreated.name] = function(state: State, action: TextChannelCreated.Action)
		Logger:trace("TextChannelCreated: {}", action.textChannel.Name)
		return Dictionary.join(state, {
			allTextChannels = Dictionary.join(state.allTextChannels, {
				[action.textChannel.Name] = action.textChannel,
			}),
		})
	end :: any,

	[TextChannelRemoved.name] = function(state: State, action: TextChannelRemoved.Action)
		return Dictionary.join(state, {
			allTextChannels = Dictionary.removeKey(state.allTextChannels, action.textChannel.Name),
		})
	end :: any,

	[TargetTextChannelPropertyChanged.name] = function(state: State, action: TargetTextChannelPropertyChanged.Action)
		Logger:trace("TargetTextChannelPropertyChanged dispatched")

		return Dictionary.join(state, {
			targetTextChannel = if action.textChannel == nil then None else action.textChannel,
		})
	end :: any,

	[LocalTeamChanged.name] = function(state: State, action: LocalTeamChanged.Action)
		if action.team then
			Logger:trace("LocalTeamChanged dispatched with team: {}", action.team.Name)

			-- Only change channels if we are currently targeting a team channel
			if state.targetTextChannel and string.find(state.targetTextChannel.Name, "^RBXTeam") then
				local textChannel: TextChannel? = getTeamTextChannelFromTeam(state.allTextChannels, action.team)

				return Dictionary.join(state, {
					currentTeam = action.team,
					targetTextChannel = if textChannel == nil then state.allTextChannels.RBXGeneral else textChannel,
				})
			else
				return Dictionary.join(state, {
					currentTeam = action.team,
				})
			end
		else
			Logger:trace("LocalTeamChanged dispatched with no team")
			return Dictionary.join(state, {
				currentTeam = None,
				targetTextChannel = state.allTextChannels.RBXGeneral or None,
			})
		end
	end :: any,

	[ChatInputBarActivatedTeamMode.name] = function(state: State, _action: ChatInputBarActivatedTeamMode.Action)
		if state.currentTeam == nil then
			Logger:trace("ChatInputBarActivatedTeamMode but not on a team")
			return state
		end

		assert(state.currentTeam, "This should be unreachable")

		local textChannel: TextChannel? = getTeamTextChannelFromTeam(state.allTextChannels, state.currentTeam)
		Logger:trace(
			"ChatInputBarActivatedTeamMode - set targetTextChannel to {}",
			textChannel and textChannel.Name or "nil"
		)

		return Dictionary.join(state, {
			targetTextChannel = if textChannel == nil then None else textChannel,
		})
	end :: any,

	[ChatInputBarResetTargetChannel.name] = function(state: State, _action: ChatInputBarResetTargetChannel.Action)
		return Dictionary.join(state, {
			targetTextChannel = state.allTextChannels.RBXGeneral or None,
		})
	end :: any,

	[ChatInputBarActivatedWhisperMode.name] = function(state: State, action: ChatInputBarActivatedWhisperMode.Action)
		local textChannel: TextChannel? = getTextChannelFromName(state.allTextChannels, action.channelName)
		Logger:trace(
			"ChatInputBarActivatedTeamMode - set targetTextChannel to {}",
			textChannel and textChannel.Name or "nil"
		)

		return Dictionary.join(state, {
			targetTextChannel = if textChannel == nil then None else textChannel,
		})
	end :: any,

	[PlayerRemoved.name] = function(state: State, action: PlayerRemoved.Action)
		local function isRemovedPlayerInWhisperChannel(textChannelName)
			return string.find(textChannelName, "RBXWhisper:") and string.find(textChannelName, action.userId)
		end

		local targetTextChannel = state.targetTextChannel
		if targetTextChannel and isRemovedPlayerInWhisperChannel(targetTextChannel.Name) then
			targetTextChannel = state.allTextChannels.RBXGeneral
		end

		local allTextChannels = Dictionary.filter(state.allTextChannels, function(_, textChannelName)
			return not isRemovedPlayerInWhisperChannel(textChannelName)
		end)

		return Dictionary.join(state, {
			targetTextChannel = targetTextChannel,
			allTextChannels = allTextChannels,
		})
	end :: any,
})
