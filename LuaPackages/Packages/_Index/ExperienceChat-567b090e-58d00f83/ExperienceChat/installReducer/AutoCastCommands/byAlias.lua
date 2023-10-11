local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local Packages = ExperienceChat.Parent
local Rodux = require(Packages.Rodux)
local Dictionary = require(Packages.llama).Dictionary

local Commands = ExperienceChat.Commands
local RBXWhisperCommand = require(Commands.Whisper.RBXWhisperCommand)
local RBXTeamCommand = require(Commands.RBXTeamCommand)

local Actions = ExperienceChat.Actions
local CommandAliasChanged = require(Actions.CommandAliasChanged)

local defaultState = {
	RBXWhisperCommand = {
		primaryAlias = RBXWhisperCommand.alias[1],
		secondaryAlias = RBXWhisperCommand.alias[2],
	},
	RBXTeamCommand = {
		primaryAlias = RBXTeamCommand.alias[1],
		secondaryAlias = RBXTeamCommand.alias[2],
	},
}

return Rodux.createReducer(defaultState, {
	[CommandAliasChanged.name] = function(state, action: CommandAliasChanged.Action)
		return Dictionary.join(state, {
			[action.name] = {
				primaryAlias = action.primaryAlias,
				secondaryAlias = action.secondaryAlias,
			},
		})
	end :: any,
})
