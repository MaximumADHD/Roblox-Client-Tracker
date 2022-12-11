local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local Packages = ExperienceChat.Parent
local globals = require(Packages.Dev.Jest).Globals
local expect = globals.expect

local LocalCharacter = require(script.Parent.LocalCharacter)
local LocalCharacterLoaded = require(ExperienceChat.Actions.LocalCharacterLoaded)

return function()
	describe("WHEN LocalCharacterLoaded is dispatched", function()
		beforeAll(function(c)
			c.character1 = Instance.new("Model")
			c.state1 = LocalCharacter(nil, LocalCharacterLoaded(c.character1))
		end)

		it("SHOULD return the character", function(c)
			expect(c.state1).toBe(c.character1)
		end)

		describe("WHEN LocalCharacterLoaded is dispatched again with a new character", function()
			beforeAll(function(c)
				c.character2 = Instance.new("Model")
				c.state2 = LocalCharacter(nil, LocalCharacterLoaded(c.character2))
			end)

			it("SHOULD replace the old value", function(c)
				expect(c.state2).toBe(c.character2)
			end)
		end)
	end)
end
