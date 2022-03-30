local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local Packages = ExperienceChat.Parent
local globals = require(Packages.Dev.Jest).Globals
local expect = globals.expect

local ChatVisibility = Packages.ExperienceChat.ChatVisibility
local ChatTopBarButtonActivated = require(ChatVisibility.Actions.ChatTopBarButtonActivated)

return function()
	describe("ChatTopBarButtonActivated", function()
		it("should return correct action name", function()
			expect(ChatTopBarButtonActivated.name).toEqual("ChatTopBarButtonActivated")
		end)

		it("should return correct action type name", function()
			local action = ChatTopBarButtonActivated(true)
			expect(action.type).toEqual(ChatTopBarButtonActivated.name)
		end)

		it("should return correct action isVisible value", function()
			local action = ChatTopBarButtonActivated(true)
			expect(action.isVisible).toEqual(true)

			action = ChatTopBarButtonActivated(false)
			expect(action.isVisible).toEqual(false)
		end)
	end)
end
