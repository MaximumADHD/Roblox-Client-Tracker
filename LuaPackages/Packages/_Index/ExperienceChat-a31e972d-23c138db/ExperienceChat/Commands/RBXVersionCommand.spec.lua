local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local Packages = ExperienceChat.Parent
local Version = require(ExperienceChat.Version)
local globals = require(Packages.Dev.Jest).Globals
local expect = globals.expect

local RBXVersionCommand = require(script.Parent.RBXVersionCommand)

return function()
	describe("WHEN clientRun is called", function()
		it("SHOULD run without issue", function()
			expect(RBXVersionCommand.clientRun).never.toThrow()
		end)
	end)

	it("SHOULD return message when given valid Verson.lua", function()
		expect(RBXVersionCommand.clientRun()).toHaveProperty("metadata", "Roblox.Version.Info.Success")
		expect(RBXVersionCommand.clientRun()).toHaveProperty("key", "GameChat_GetVersion_Message")
		expect(RBXVersionCommand.clientRun()).toHaveProperty("args", {
			RBX_NUMBER = { Version[1], Version[2] },
		})
	end)
end
