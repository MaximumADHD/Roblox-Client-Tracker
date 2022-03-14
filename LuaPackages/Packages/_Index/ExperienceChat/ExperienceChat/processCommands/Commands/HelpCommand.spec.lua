local CoreGui = game:GetService("CoreGui")

local ExperienceChat = CoreGui:FindFirstChild("ExperienceChat", true)
local globals = require(ExperienceChat.Dev.Jest).Globals
local expect = globals.expect
local HelpCommand = require(script.Parent.HelpCommand)
local processCommands = script:FindFirstAncestor("processCommands")
local SystemMessages = require(processCommands.Utils.SystemMessages)

return function()
	it("SHOULD return correct system message string when calling HelpCommand", function()
		expect(type(HelpCommand(nil, "help", nil))).toEqual("string")
		expect(HelpCommand(nil, "help", nil)).toEqual(SystemMessages.Help)
	end)
end
