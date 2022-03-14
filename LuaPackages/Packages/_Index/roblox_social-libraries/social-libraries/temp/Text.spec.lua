return function()
	local SocialLibraries = script:FindFirstAncestor("social-libraries")
	local Packages = SocialLibraries.Parent
	local JestGlobals = require(Packages.Dev.JestGlobals)
	local jestExpect = JestGlobals.expect
	local Text = require(script.Parent.Text)

	describe("GetTextBounds", function()
		it("should return a bounds of padding width and font-size height when the string is empty", function()
			local bounds = Text.GetTextBounds("", Enum.Font.SourceSans, 18, Vector2.new(1000, 1000))
			jestExpect(bounds.X).toBe(Text._TEMP_PATCHED_PADDING.x)
			jestExpect(bounds.Y).toBe(18 + Text._TEMP_PATCHED_PADDING.y)
		end)
		it("should return the height and width of a string as one line with large bounds", function()
			local bounds = Text.GetTextBounds("One Two Three", Enum.Font.SourceSans, 18, Vector2.new(1000, 1000))
			jestExpect(bounds.Y).toBe(18 + Text._TEMP_PATCHED_PADDING.y)
		end)

		it("should return the height of the string as multiple lines with short bounds", function()
			local bounds = Text.GetTextBounds("One Two Three Four", Enum.Font.SourceSans, 18, Vector2.new(32, 1000))
			jestExpect(bounds.Y > 18).toBe(true)
		end)
	end)

	describe("GetTextHeight", function()
		it("should return height equal to font size when string is empty", function()
			local height = Text.GetTextHeight("", Enum.Font.SourceSans, 18, 0)
			jestExpect(height).toBe(18 + Text._TEMP_PATCHED_PADDING.y)
		end)
	end)

	describe("GetTextWidth", function()
		it("should return width equal to 1 when string is empty", function()
			local width = Text.GetTextWidth("", Enum.Font.SourceSans, 18)
			jestExpect(width).toBe(Text._TEMP_PATCHED_PADDING.x)
		end)
	end)
end
