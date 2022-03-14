local CoreGui = game:GetService("CoreGui")

local ExperienceChat = CoreGui:FindFirstChild("ExperienceChat", true)
local globals = require(ExperienceChat.Dev.Jest).Globals
local expect = globals.expect
local TeamChatCommand = require(script.Parent.TeamChatCommand)
local processCommands = script:FindFirstAncestor("processCommands")
local SystemMessages = require(processCommands.Utils.SystemMessages)

return function()
	it("SHOULD return a system message string when calling TeamChatCommand", function()
		expect(TeamChatCommand(nil, "t", nil)).toEqual(SystemMessages.TeamChatUserNotInTeam)
	end)
end
