local console = require(script.RBXConsoleCommand)
local help = require(script.RBXHelpCommand)
local mute = require(script.RBXMuteCommand)
local unmute = require(script.RBXUnmuteCommand)
local version = require(script.RBXVersionCommand)
local emote = require(script.RBXEmoteCommand)
local team = require(script.RBXTeamCommand)
local whisper = require(script.Whisper.RBXWhisperCommand)
local clear = require(script.RBXClearCommand)

local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local AllowClearCommand = require(ExperienceChat.Flags.FFlagAllowClearCommand)

local CommandTypes = require(script.types)
if AllowClearCommand() then
	local enabledCommands: { CommandTypes.Command } = {
		console,
		help,
		mute,
		unmute,
		version,
		emote,
		team,
		whisper,
		clear,
	}

	return enabledCommands
else
	local enabledCommands: { CommandTypes.Command } = {
		console,
		help,
		mute,
		unmute,
		version,
		emote,
		team,
		whisper,
	}

	return enabledCommands
end
