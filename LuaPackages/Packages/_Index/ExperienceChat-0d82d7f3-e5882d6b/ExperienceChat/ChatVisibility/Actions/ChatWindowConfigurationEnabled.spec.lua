local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local Packages = ExperienceChat.Parent
local globals = require(Packages.Dev.Jest).Globals
local expect = globals.expect

local ChatVisibility = Packages.ExperienceChat.ChatVisibility
local ChatWindowConfigurationEnabled = require(ChatVisibility.Actions.ChatWindowConfigurationEnabled)

return function()
	describe("ChatWindowConfigurationEnabled", function()
		it("should return correct action name", function()
			expect(ChatWindowConfigurationEnabled.name).toEqual("ChatWindowConfigurationEnabled")
		end)

		it("should return correct action type name", function()
			local action = ChatWindowConfigurationEnabled(true)
			expect(action.type).toEqual(ChatWindowConfigurationEnabled.name)
		end)

		it("should return correct action enabled value", function()
			local action = ChatWindowConfigurationEnabled(true)
			expect(action.enabled).toEqual(true)

			action = ChatWindowConfigurationEnabled(false)
			expect(action.enabled).toEqual(false)
		end)
	end)
end
