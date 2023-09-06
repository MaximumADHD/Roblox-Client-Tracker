local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local Packages = ExperienceChat.Parent
local globals = require(Packages.Dev.Jest).Globals
local expect = globals.expect

local RBXHelpCommand = require(script.Parent.RBXHelpCommand)

return function()
	describe("WHEN clientRun is called", function()
		it("SHOULD run without issue", function()
			expect(RBXHelpCommand.clientRun).never.toThrow()
		end)
	end)
end
