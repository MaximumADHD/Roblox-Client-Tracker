local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local Packages = ExperienceChat.Parent
local globals = require(Packages.Dev.Jest).Globals
local expect = globals.expect

local ChatVisibility = Packages.ExperienceChat.ChatVisibility
local ChatInputBarConfigurationEnabled = require(ChatVisibility.Actions.ChatInputBarConfigurationEnabled)

return function()
	describe("ChatInputBarConfigurationEnabled", function()
		it("should return correct action name", function()
			expect(ChatInputBarConfigurationEnabled.name).toEqual("ChatInputBarConfigurationEnabled")
		end)

		it("should return correct action type name", function()
			local action = ChatInputBarConfigurationEnabled(true)
			expect(action.type).toEqual(ChatInputBarConfigurationEnabled.name)
		end)

		it("should return correct action enabled value", function()
			local action = ChatInputBarConfigurationEnabled(true)
			expect(action.enabled).toEqual(true)

			action = ChatInputBarConfigurationEnabled(false)
			expect(action.enabled).toEqual(false)
		end)
	end)
end
