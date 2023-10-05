local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local Packages = ExperienceChat.Parent
local globals = require(Packages.Dev.Jest).Globals
local expect = globals.expect

local createStore = require(ExperienceChat.createStore)

local PlayerAdded = require(ExperienceChat.Actions.PlayerAdded)

local RBXMuteCommand = require(script.Parent.RBXMuteCommand)
local RBXUnmuteCommand = require(script.Parent.RBXUnmuteCommand)

return function()
	beforeAll(function(c)
		c.store = createStore()
		c.store:dispatch(PlayerAdded(1, "Player1", "DisplayName"))
		c.store:dispatch(PlayerAdded(2, "Player2", "DisplayName"))
		c.store:dispatch(PlayerAdded(3, "Player3", "Myself"))
		c.store:dispatch(PlayerAdded(4, "Player4", "Player4+DN"))

		c.textSource = {
			UserId = 3,
		}
	end)

	it("SHOULD return error when a name is not provided", function(c)
		expect(RBXMuteCommand.clientRun(c.store, c.textSource.UserId, "/mute")).toHaveProperty(
			"metadata",
			"Roblox.Mute.Error.PlayerNotFound"
		)
		expect(RBXUnmuteCommand.clientRun(c.store, c.textSource.UserId, "/unmute")).toHaveProperty(
			"metadata",
			"Roblox.Unmute.Error.PlayerNotFound"
		)
	end)
	it("SHOULD return error when string does not match any players", function(c)
		expect(RBXMuteCommand.clientRun(c.store, c.textSource.UserId, "/mute someRandomName")).toHaveProperty(
			"metadata",
			"Roblox.Mute.Error.PlayerNotFound"
		)
		expect(RBXUnmuteCommand.clientRun(c.store, c.textSource.UserId, "/unmute someRandomName")).toHaveProperty(
			"metadata",
			"Roblox.Unmute.Error.PlayerNotFound"
		)
	end)

	it("SHOULD return error when string matches local user", function(c)
		expect(RBXMuteCommand.clientRun(c.store, c.textSource.UserId, "/mute Myself")).toHaveProperty(
			"metadata",
			"Roblox.Mute.Error.CannotMuteSelf"
		)
		expect(RBXUnmuteCommand.clientRun(c.store, c.textSource.UserId, "/unmute Myself")).toHaveProperty(
			"metadata",
			"Roblox.Unmute.Error.CannotMuteSelf"
		)
	end)

	it("SHOULD return error when string matches multiple users", function(c)
		expect(RBXMuteCommand.clientRun(c.store, c.textSource.UserId, "/mute DisplayName")).toHaveProperty(
			"metadata",
			"Roblox.Mute.Error.MultipleMatches"
		)
		expect(RBXUnmuteCommand.clientRun(c.store, c.textSource.UserId, "/unmute DisplayName")).toHaveProperty(
			"metadata",
			"Roblox.Unmute.Error.MultipleMatches"
		)
	end)

	it("SHOULD return success when string matches a single user via DisplayName", function(c)
		expect(RBXMuteCommand.clientRun(c.store, c.textSource.UserId, "/mute Player4+DN")).toHaveProperty(
			"metadata",
			"Roblox.Mute.Info.Success"
		)
		expect(RBXUnmuteCommand.clientRun(c.store, c.textSource.UserId, "/unmute Player4+DN")).toHaveProperty(
			"metadata",
			"Roblox.Unmute.Info.Success"
		)
	end)

	it("SHOULD return success when string matches a single user via Username", function(c)
		expect(RBXMuteCommand.clientRun(c.store, c.textSource.UserId, "/mute @Player1")).toHaveProperty(
			"metadata",
			"Roblox.Mute.Info.Success"
		)
		expect(RBXUnmuteCommand.clientRun(c.store, c.textSource.UserId, "/unmute @Player1")).toHaveProperty(
			"metadata",
			"Roblox.Unmute.Info.Success"
		)
	end)
end
