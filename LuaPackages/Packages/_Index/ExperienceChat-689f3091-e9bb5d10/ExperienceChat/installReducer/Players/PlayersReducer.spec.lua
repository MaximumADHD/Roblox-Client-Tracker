local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local Packages = ExperienceChat.Parent
local globals = require(Packages.Dev.Jest).Globals
local expect = globals.expect

local PlayerAdded = require(ExperienceChat.Actions.PlayerAdded)
local PlayerRemoved = require(ExperienceChat.Actions.PlayerRemoved)

local reducer = require(script.Parent)

return function()
	describe("WHEN initial PlayerAdded dispatched", function()
		beforeAll(function(c)
			c.state1 = reducer(nil, PlayerAdded("userId1", "Player1", "DisplayName"))
		end)

		it("SHOULD add entry in byUserId", function(c)
			expect(c.state1.byUserId).toHaveProperty("userId1")
		end)

		it("SHOULD add entry in byUsername", function(c)
			local username = string.lower("Player1")
			expect(c.state1.byUsername).toHaveProperty(username, "userId1")
		end)

		it("SHOULD add entry in byDisplayName", function(c)
			local displayname = string.lower("DisplayName")
			expect(c.state1.byDisplayName).toHaveProperty(displayname, { "userId1" })
		end)

		describe("WHEN another user joins the game with the same DisplayName", function()
			beforeAll(function(c)
				c.state2 = reducer(c.state1, PlayerAdded("userId2", "Player2", "DisplayName"))
			end)

			it("SHOULD retain old entry in byUserId", function(c)
				expect(c.state2.byUserId).toHaveProperty("userId1")
			end)

			it("SHOULD add new entry in byUserId", function(c)
				expect(c.state2.byUserId).toHaveProperty("userId2")
			end)

			it("SHOULD retain old entry in byUsername", function(c)
				local username = string.lower("Player1")
				expect(c.state2.byUsername).toHaveProperty(username, "userId1")
			end)

			it("SHOULD add new entry in byUsername", function(c)
				local username = string.lower("Player2")
				expect(c.state2.byUsername).toHaveProperty(username, "userId2")
			end)

			it("SHOULD add both entries in byDisplayName", function(c)
				local displayname = string.lower("DisplayName")
				expect(c.state2.byDisplayName).toHaveProperty(displayname, { "userId1", "userId2" })
			end)

			describe("WHEN the first user leaves the game", function()
				beforeAll(function(c)
					c.state3 = reducer(c.state2, PlayerRemoved("userId1"))
				end)

				it("SHOULD remove first entry in byUserId", function(c)
					expect(c.state3.byUserId).never.toHaveProperty("userId1")
				end)

				it("SHOULD retain second entry in byUserId", function(c)
					expect(c.state3.byUserId).toHaveProperty("userId2")
				end)

				it("SHOULD remove first entry in byUsername", function(c)
					local username = string.lower("Player1")
					expect(c.state3.byUsername).never.toHaveProperty(username, "userId1")
				end)

				it("SHOULD retain second entry in byUsername", function(c)
					local username = string.lower("Player2")
					expect(c.state3.byUsername).toHaveProperty(username, "userId2")
				end)

				it("SHOULD leave a single entry in byDisplayName", function(c)
					local displayname = string.lower("DisplayName")
					expect(c.state3.byDisplayName).toHaveProperty(displayname, { "userId2" })
				end)
			end)
		end)
	end)
end
