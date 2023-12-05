local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local Packages = ExperienceChat.Parent
local globals = require(Packages.Dev.Jest).Globals
local expect = globals.expect

local getNameFromWhisper = require(script.Parent.getNameFromWhisper)

return function()
	describe("given default whisper aliases", function()
		local aliasList = {
			primaryAlias = "/whisper",
			secondaryAlias = "/w",
		}
		describe("given a string the starts with /w", function()
			local s = "/w hello"
			it("should return the rest of the string", function()
				expect(getNameFromWhisper(s, aliasList)).toBe("hello")
			end)
		end)

		describe("given a string the starts with /whisper", function()
			it("should return the rest of the string", function()
				local s = "/whisper hello"
				expect(getNameFromWhisper(s, aliasList)).toBe("hello")
			end)

			it("should return only the name of the player", function()
				local s = "/whisper Player1 abcd"
				expect(getNameFromWhisper(s, aliasList)).toBe("Player1")
			end)
		end)

		describe("given a string the starts with /wisper (typo)", function()
			local s = "/wisper hello"
			it("should return nil", function()
				expect(getNameFromWhisper(s, aliasList)).toBe(nil)
			end)
		end)
	end)

	describe("GIVEN whisper command aliases are changed", function()
		local aliasList = {
			primaryAlias = "/whisper2",
			secondaryAlias = "/w2",
		}

		it("SHOULD return correct strings when called on strings that start with alias", function()
			local s = "/whisper2 hello"
			expect(getNameFromWhisper(s, aliasList)).toBe("hello")

			s = "/w2 world 2"
			expect(getNameFromWhisper(s, aliasList)).toBe("world")
		end)

		it("SHOULD return nil when called on default alias", function()
			local s = "/whisper hello"
			expect(getNameFromWhisper(s, aliasList)).toBeNil()

			s = "/w world 2"
			expect(getNameFromWhisper(s, aliasList)).toBeNil()
		end)
	end)
end
