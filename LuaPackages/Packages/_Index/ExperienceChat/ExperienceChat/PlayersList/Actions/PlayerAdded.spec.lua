local CoreGui = game:GetService("CoreGui")
local ExperienceChat = CoreGui:FindFirstChild("ExperienceChat", true)
local globals = require(ExperienceChat.Dev.Jest).Globals
local expect = globals.expect
local PlayersList = ExperienceChat.ExperienceChat.PlayersList
local PlayerAdded = require(PlayersList.Actions.PlayerAdded)

return function()
	describe("PlayerAdded", function()
		it("should return correct action name", function()
			expect(PlayerAdded.name).toEqual("PlayerAdded")
		end)

		it("should return correct action type name (PlayerAdded)", function()
			local action = PlayerAdded({})
			expect(action.type).toEqual(PlayerAdded.name)
		end)
	end)
end
