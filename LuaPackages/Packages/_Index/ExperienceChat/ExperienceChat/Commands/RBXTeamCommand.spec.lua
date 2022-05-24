local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local Packages = ExperienceChat.Parent
local globals = require(Packages.Dev.Jest).Globals
local expect = globals.expect

local createStore = require(ExperienceChat.createStore)
local LocalCharacterLoaded = require(ExperienceChat.Actions.LocalCharacterLoaded)

local RBXTeamCommand = require(script.Parent.RBXTeamCommand)

return function()
	describe("GIVEN a player", function()
		beforeAll(function(c)
			local character = Instance.new("Model")
			character.Parent = workspace

			local localPlayer = game:GetService("Players").LocalPlayer
			assert(localPlayer, "No local player! Check test harness.")
			localPlayer.Character = character

			c.store = createStore()
			c.player = localPlayer
			c.character = character
			c.store:dispatch(LocalCharacterLoaded(character))
		end)

		it("SHOULD return message when player does not belong to a team.", function(c)
			expect(RBXTeamCommand.clientRun(c.store)).toHaveProperty(
				"metadata",
				"Roblox.Team.Error.CannotTeamChatIfNotInTeam"
			)
			expect(RBXTeamCommand.clientRun(c.store)).toHaveProperty(
				"key",
				"GameChat_TeamChat_CannotTeamChatIfNotInTeam"
			)
		end)

		it("SHOULD return nothing when player does belong to a team.", function(c)
			local team = Instance.new("Team")
			team.Parent = game:GetService("Teams")
			c.player.Team = team

			expect(RBXTeamCommand.clientRun(c.store)).toBeNil()
		end)
	end)
end
