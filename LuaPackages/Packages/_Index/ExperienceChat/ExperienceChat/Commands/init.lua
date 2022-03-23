--!strict

local console = require(script.RBXConsoleCommand)
local help = require(script.RBXHelpCommand)
local mute = require(script.RBXMuteCommand)
local unmute = require(script.RBXUnmuteCommand)

local CommandTypes = require(script.types)
local enabledCommands: { CommandTypes.Command } = {
	console,
	help,
	mute,
	unmute,
}

return enabledCommands
