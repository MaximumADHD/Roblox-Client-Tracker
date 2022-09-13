local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local Packages = ExperienceChat.Parent
local globals = require(Packages.Dev.Jest).Globals
local expect = globals.expect

local getNameFromWhisper = require(script.Parent.getNameFromWhisper)

return function()
	describe("given a string the starts with /w", function()
		local s = "/w hello"
		it("should return the rest of the string", function()
			expect(getNameFromWhisper(s)).toBe("hello")
		end)
	end)

	describe("given a string the starts with /whisper", function()
		it("should return the rest of the string", function()
			local s = "/whisper hello"
			expect(getNameFromWhisper(s)).toBe("hello")
		end)

		it("should return only the name of the player", function()
			local s = "/whisper Player1 abcd"
			expect(getNameFromWhisper(s)).toBe("Player1")
		end)
	end)

	describe("given a string the starts with /wisper (typo)", function()
		local s = "/wisper hello"
		it("should return nil", function()
			expect(getNameFromWhisper(s)).toBe(nil)
		end)
	end)
end
