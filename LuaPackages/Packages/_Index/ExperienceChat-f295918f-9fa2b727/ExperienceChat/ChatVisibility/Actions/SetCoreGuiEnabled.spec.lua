local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local Packages = ExperienceChat.Parent
local globals = require(Packages.Dev.Jest).Globals
local expect = globals.expect

local ChatVisibility = Packages.ExperienceChat.ChatVisibility
local SetCoreGuiEnabledChanged = require(ChatVisibility.Actions.SetCoreGuiEnabledChanged)

return function()
	describe("SetCoreGuiEnabledChanged", function()
		it("should return correct action name", function()
			expect(SetCoreGuiEnabledChanged.name).toEqual("SetCoreGuiEnabledChanged")
		end)

		it("should return correct action type name", function()
			local action = SetCoreGuiEnabledChanged(true)
			expect(action.type).toEqual(SetCoreGuiEnabledChanged.name)
		end)

		it("should return correct action enabled value", function()
			local action = SetCoreGuiEnabledChanged(true)
			expect(action.enabled).toEqual(true)

			action = SetCoreGuiEnabledChanged(false)
			expect(action.enabled).toEqual(false)
		end)
	end)
end
