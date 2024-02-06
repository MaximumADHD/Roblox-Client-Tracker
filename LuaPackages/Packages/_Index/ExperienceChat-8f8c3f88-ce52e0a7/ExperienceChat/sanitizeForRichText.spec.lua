local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local Packages = ExperienceChat.Parent
local globals = require(Packages.Dev.Jest).Globals
local expect = globals.expect

local sanitizeForRichText = require(script.Parent.sanitizeForRichText)
return function()
	it("given a string with no rich text elements should do nothing", function()
		expect(sanitizeForRichText("hello")).toBe("hello")
	end)

	it("given a string with no rich text elements should replace with escaped characters", function()
		expect(sanitizeForRichText("<b>hello!</b>")).toBe("&lt;b&gt;hello!&lt;/b&gt;")
	end)
end
