local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local Packages = ExperienceChat.Parent
local globals = require(Packages.Dev.Jest).Globals
local expect = globals.expect

local isWhiteSpaceOnly = require(script.Parent.isWhiteSpaceOnly)

return function()
	describe("given string with no tags", function()
		it("should return true for whitespaces", function()
			expect(isWhiteSpaceOnly(" ")).toBe(true)
		end)

		it("should return true for empty string", function()
			expect(isWhiteSpaceOnly("")).toBe(true)
		end)

		it("should return false for word", function()
			expect(isWhiteSpaceOnly("foo")).toBe(false)
		end)
	end)

	describe("given string with tags", function()
		it("should return true for whitespaces", function()
			expect(isWhiteSpaceOnly("<b> </b>")).toBe(true)
		end)

		it("should return true for empty string", function()
			expect(isWhiteSpaceOnly("<b></b>")).toBe(true)
		end)

		it("should return false for word", function()
			expect(isWhiteSpaceOnly("<b>foo</b>")).toBe(false)
		end)
	end)
end
