local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local Packages = ExperienceChat.Parent
local globals = require(Packages.Dev.Jest).Globals
local expect = globals.expect

local createStore = require(ExperienceChat.createStore)
local RBXClearCommand = require(script.Parent.RBXClearCommand)

return function()
	describe("WHEN clientRun is called on clear command", function()
		it("SHOULD return success when run", function(c)
			c.store = createStore()
			expect(RBXClearCommand.clientRun(c.store)).toHaveProperty("metadata", "Roblox.Clear.Info.Success")
		end)
	end)
end
