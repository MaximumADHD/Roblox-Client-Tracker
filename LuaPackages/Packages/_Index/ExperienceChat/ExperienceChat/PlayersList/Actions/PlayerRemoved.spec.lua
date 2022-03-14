local CoreGui = game:GetService("CoreGui")
local ExperienceChat = CoreGui:FindFirstChild("ExperienceChat", true)
local globals = require(ExperienceChat.Dev.Jest).Globals
local expect = globals.expect
local PlayersList = ExperienceChat.ExperienceChat.PlayersList
local PlayerRemoved = require(PlayersList.Actions.PlayerRemoved)

return function()
	describe("PlayerRemoved", function()
		it("should return correct action name", function()
			expect(PlayerRemoved.name).toEqual("PlayerRemoved")
		end)

		it("should return correct action type name (PlayerRemoved)", function()
			local action = PlayerRemoved({})
			expect(action.type).toEqual(PlayerRemoved.name)
		end)
	end)
end
