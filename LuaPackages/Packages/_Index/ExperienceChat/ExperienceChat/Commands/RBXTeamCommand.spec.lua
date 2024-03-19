local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local Packages = ExperienceChat.Parent
local globals = require(Packages.Dev.Jest).Globals
local expect = globals.expect

local createStore = require(ExperienceChat.createStore)
local LocalCharacterLoaded = require(ExperienceChat.Actions.LocalCharacterLoaded)
local LocalTeamChanged = require(ExperienceChat.Actions.LocalTeamChanged)
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

		it("SHOULD return error message when player does not belong to a team.", function(c)
			expect(RBXTeamCommand.clientRun(c.store)).toHaveProperty(
				"metadata",
				"Roblox.Team.Error.CannotTeamChatIfNotInTeam"
			)
			expect(RBXTeamCommand.clientRun(c.store)).toHaveProperty(
				"key",
				"CoreScripts.TextChat.TeamChat.Error.NotOnTeam"
			)
		end)

		it("SHOULD return success when player does belong to a team.", function(c)
			local team = Instance.new("Team")
			team.Parent = game:GetService("Teams")

			c.store:dispatch(LocalTeamChanged(team))
			expect(RBXTeamCommand.clientRun(c.store)).toHaveProperty("metadata", "Roblox.Team.Info.Success")
		end)
	end)
end
