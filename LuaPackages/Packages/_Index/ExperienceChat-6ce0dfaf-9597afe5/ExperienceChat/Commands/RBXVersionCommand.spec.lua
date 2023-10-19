local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local Packages = ExperienceChat.Parent
local globals = require(Packages.Dev.Jest).Globals
local expect = globals.expect

local RBXVersionCommand = require(script.Parent.RBXVersionCommand)

return function()
	describe("WHEN clientRun is called", function()
		it("SHOULD run without issue", function()
			expect(RBXVersionCommand.clientRun).never.toThrow()
		end)
	end)

	it("SHOULD return message when given valid Version.lua", function()
		expect(RBXVersionCommand.clientRun()).toHaveProperty("metadata", "Roblox.Version.Info.Success")
	end)
end
