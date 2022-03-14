return function()
	local Text = require(script.Parent.Text)

	local CorePackages = game:GetService("CorePackages")
	local JestGlobals = require(CorePackages.JestGlobals)
	local jestExpect = JestGlobals.expect

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

	describe("Truncate", function()
		it("should return empty string", function()
			local emptyQuery = Text.Truncate("", Enum.Font.SourceSans, 18, 0, "...")
			jestExpect(emptyQuery).toEqual(jestExpect.any("string"))
			jestExpect(emptyQuery).toBe("")
		end)

		it("should return empty string for not empty box", function()
			local emptyQuery = Text.Truncate("", Enum.Font.SourceSans, 18, 50, "...")
			jestExpect(emptyQuery).toEqual(jestExpect.any("string"))
			jestExpect(emptyQuery).toBe("")
		end)

		it("should truncate with ...", function()
			local reallyLongQuery = Text.Truncate(
				"One Two Three Four Five Six Seven Eight Nine Ten Eleven Twelve", Enum.Font.SourceSans, 18, 100, "...")
			jestExpect(reallyLongQuery).toBe("One Two Thre...")
		end)

		it("should truncate without a ...", function()
			local reallyLongQueryNoOverflowMarker = Text.Truncate(
				"One Two Three Four Five Six Seven Eight Nine Ten Eleven Twelve", Enum.Font.SourceSans, 18, 100)
			jestExpect(reallyLongQueryNoOverflowMarker).toBe("One Two Three ")
		end)

		it("should not truncate", function()
			local shouldFitQuery = Text.Truncate("One Two", Enum.Font.SourceSans, 18, 100)
			jestExpect(shouldFitQuery).toBe("One Two")
		end)

		it("should not truncate, off by one check", function()
			local oneCharQuery = Text.Truncate("O", Enum.Font.SourceSans, 18, 100)
			jestExpect(oneCharQuery).toBe("O")
		end)

		it("should truncate, off by one check", function()
			local oneCharNoRoomQuery = Text.Truncate("O", Enum.Font.SourceSans, 18, 0)
			jestExpect(oneCharNoRoomQuery).toBe("")
		end)

		it("should perform a negative width check", function()
			local shouldFitQuery = Text.Truncate("One Two", Enum.Font.SourceSans, 18, -100, "...")
			jestExpect(shouldFitQuery).toBe("")
		end)

		itFIXME("should truncate long graphemes properly", function()
			-- 11-byte rainbow flag grapheme
			-- Flag, zero-space-joiner, rainbow
			local rainbowFlag = utf8.char(127987) .. utf8.char(8205) .. utf8.char(127752)
			local oneFlagWithinLimit = Text.Truncate(
				rainbowFlag, Enum.Font.SourceSans, 18, 100, "...")
			jestExpect(oneFlagWithinLimit).toBe(rainbowFlag)

			local twoRainbowFlags = rainbowFlag .. rainbowFlag
			local twoFlagsAreFine = Text.Truncate(
				twoRainbowFlags, Enum.Font.SourceSans, 18, 100, "...")
			jestExpect(twoFlagsAreFine).toBe(twoRainbowFlags)

			local fourRainbowFlags = twoRainbowFlags .. twoRainbowFlags
			local fourFlagsIsTooLong = Text.Truncate(
				fourRainbowFlags, Enum.Font.SourceSans, 18, 100, "...")
			jestExpect(fourFlagsIsTooLong).toBe(twoRainbowFlags .. "...") -- With --fflags==true fails because of truncation
		end)
	end)

	describe("TruncateTextLabel", function()
		it("should use text label attributes to truncate text", function()
			local screenGui = Instance.new("ScreenGui")
			local textLabel = Instance.new("TextLabel")
			textLabel.Size = UDim2.new(0, 100, 0, 32)
			textLabel.Text = "One Two Three Four Five Six Seven Eight Nine Ten Eleven Twelve"
			textLabel.Font = Enum.Font.SourceSans
			textLabel.TextSize = 18
			textLabel.Parent = screenGui
			Text.TruncateTextLabel(textLabel)

			jestExpect(textLabel.Text).toBe("One Two Three ")
		end)
	end)


	describe("TrimString", function()
		it("Should trim the string properly 1", function()
			local trimmedInput = Text.Trim("")
			local expected = ""
			jestExpect(trimmedInput).toBe(expected)
		end)
		it("Should trim the string properly 2", function()
			local trimmedInput = Text.Trim("    ")
			local expected = ""
			jestExpect(trimmedInput).toBe(expected)
		end)
		it("Should trim the string properly 3", function()
			local trimmedInput = Text.Trim("ab")
			local expected = "ab"
			jestExpect(trimmedInput).toBe(expected)
		end)
		it("Should trim the string properly 4", function()
			local trimmedInput = Text.Trim("    ab   ")
			local expected = "ab"
			jestExpect(trimmedInput).toBe(expected)
		end)
		it("Should trim the string properly 5", function()
			local trimmedInput = Text.Trim("    a b    ")
			local expected = "a b"
			jestExpect(trimmedInput).toBe(expected)
		end)
		it("Should trim the string properly 6", function()
			local trimmedInput = Text.Trim("\r\n\t\f a\r\n\t\f ")
			local expected = "a"
			jestExpect(trimmedInput).toBe(expected)
		end)
		it("Should trim the string with unicode characters properly", function()
			local trimmedInput = Text.Trim("😤👩🏼‍🏫😭ぼ😀で😹🤕あ👩🏻‍🎓")
			local expected = "😤👩🏼‍🏫😭ぼ😀で😹🤕あ👩🏻‍🎓"
			jestExpect(trimmedInput).toBe(expected)
		end)
		it("Should trim the string properly 7", function()
			local trimmedInput = Text.Trim("    😤👩🏼‍🏫😭ぼ😀で😹🤕あ👩🏻‍🎓    ")
			local expected = "😤👩🏼‍🏫😭ぼ😀で😹🤕あ👩🏻‍🎓"
			jestExpect(trimmedInput).toBe(expected)
		end)
		it("Should trim the string properly 8", function()
			local trimmedInput = Text.Trim("\n    😤👩🏼‍🏫😭ぼ😀 \nで😹🤕あ👩🏻‍🎓    \n")
			local expected = "😤👩🏼‍🏫😭ぼ😀 \nで😹🤕あ👩🏻‍🎓"
			jestExpect(trimmedInput).toBe(expected)
		end)
	end)


	describe("RightTrimString", function()
		it("Should right trim the string properly 1", function()
			local trimmedInput = Text.RightTrim("")
			local expected = ""
			jestExpect(trimmedInput).toBe(expected)
		end)
		it("Should right trim the string properly 2", function()
			local trimmedInput = Text.RightTrim("    ")
			local expected = ""
			jestExpect(trimmedInput).toBe(expected)
		end)
		it("Should right trim the string properly 3", function()
			local trimmedInput = Text.RightTrim("ab")
			local expected = "ab"
			jestExpect(trimmedInput).toBe(expected)
		end)
		it("Should right trim the string properly 4", function()
			local trimmedInput = Text.RightTrim("    ab   ")
			local expected = "    ab"
			jestExpect(trimmedInput).toBe(expected)
		end)
		it("Should right trim the string properly 5", function()
			local trimmedInput = Text.RightTrim("    a b    ")
			local expected = "    a b"
			jestExpect(trimmedInput).toBe(expected)
		end)
		it("Should right trim the string properly 6", function()
			local trimmedInput = Text.RightTrim("\r\n\t\f a\r\n\t\f ")
			local expected = "\r\n\t\f a"
			jestExpect(trimmedInput).toBe(expected)
		end)
		it("Should right trim the string with unicode characters properly", function()
			local trimmedInput = Text.RightTrim("😤👩🏼‍🏫😭ぼ😀で😹🤕あ👩🏻‍🎓")
			local expected = "😤👩🏼‍🏫😭ぼ😀で😹🤕あ👩🏻‍🎓"
			jestExpect(trimmedInput).toBe(expected)
		end)
		it("Should right trim the string properly 7", function()
			local trimmedInput = Text.RightTrim("    😤👩🏼‍🏫😭ぼ😀で😹🤕あ👩🏻‍🎓    ")
			local expected = "    😤👩🏼‍🏫😭ぼ😀で😹🤕あ👩🏻‍🎓"
			jestExpect(trimmedInput).toBe(expected)
		end)
		it("Should right trim the string properly 8", function()
			local trimmedInput = Text.RightTrim("\n    😤👩🏼‍🏫😭ぼ😀 \nで😹🤕あ👩🏻‍🎓    \n")
			local expected = "\n    😤👩🏼‍🏫😭ぼ😀 \nで😹🤕あ👩🏻‍🎓"
			jestExpect(trimmedInput).toBe(expected)
		end)
	end)


	describe("LeftTrimString", function()
		it("Should left trim the string properly 1", function()
			local trimmedInput = Text.LeftTrim("")
			local expected = ""
			jestExpect(trimmedInput).toBe(expected)
		end)
		it("Should left trim the string properly 2", function()
			local trimmedInput = Text.LeftTrim("    ")
			local expected = ""
			jestExpect(trimmedInput).toBe(expected)
		end)
		it("Should left trim the string properly 3", function()
			local trimmedInput = Text.LeftTrim("ab")
			local expected = "ab"
			jestExpect(trimmedInput).toBe(expected)
		end)
		it("Should left trim the string properly 4", function()
			local trimmedInput = Text.LeftTrim("    ab   ")
			local expected = "ab   "
			jestExpect(trimmedInput).toBe(expected)
		end)
		it("Should left trim the string properly 5", function()
			local trimmedInput = Text.LeftTrim("    a b    ")
			local expected = "a b    "
			jestExpect(trimmedInput).toBe(expected)
		end)
		it("Should left trim the string properly 6", function()
			local trimmedInput = Text.LeftTrim("\r\n\t\f a\r\n\t\f ")
			local expected = "a\r\n\t\f "
			jestExpect(trimmedInput).toBe(expected)
		end)
		it("Should left trim the string with unicode characters properly", function()
			local trimmedInput = Text.LeftTrim("😤👩🏼‍🏫😭ぼ😀で😹🤕あ👩🏻‍🎓")
			local expected = "😤👩🏼‍🏫😭ぼ😀で😹🤕あ👩🏻‍🎓"
			jestExpect(trimmedInput).toBe(expected)
		end)
		it("Should left trim the string properly 7", function()
			local trimmedInput = Text.LeftTrim("    😤👩🏼‍🏫😭ぼ😀で😹🤕あ👩🏻‍🎓    ")
			local expected = "😤👩🏼‍🏫😭ぼ😀で😹🤕あ👩🏻‍🎓    "
			jestExpect(trimmedInput).toBe(expected)
		end)
		it("Should left trim the string properly", function()
			local trimmedInput = Text.LeftTrim("\n    😤👩🏼‍🏫😭ぼ😀 \nで😹🤕あ👩🏻‍🎓    \n")
			local expected = "😤👩🏼‍🏫😭ぼ😀 \nで😹🤕あ👩🏻‍🎓    \n"
			jestExpect(trimmedInput).toBe(expected)
		end)
	end)


	describe("SpaceNormalize", function()
		it("should remove multiple spaces between words", function()
			local a = "This is 		not a 			normal   sentence."

			jestExpect(Text.SpaceNormalize(a)).toBe("This is not a normal sentence.")
		end)

		it("should remove leading and trailing whitespace", function()
			local a = " 	 	SpaceTabSpaceTab 	 	"

			jestExpect(Text.SpaceNormalize(a)).toBe("SpaceTabSpaceTab")
		end)

		it("should not change a string with no whitespace", function()
			local a = "There'sNo%Whit.e\\space--InThis."

			jestExpect(Text.SpaceNormalize(a)).toBe(a)
		end)

		it("should remove all whitespace in a string that is nothing but whitespace", function()
			local a = " 	 	"

			jestExpect(Text.SpaceNormalize(a)).toBe("")
		end)

		it("should handle the case where the string is empty", function()
			local a = ""

			jestExpect(Text.SpaceNormalize(a)).toBe(a)
		end)

		it("should throw an error if called an a non-string type", function()
			local a = { first = 1, second = 2 }

			jestExpect(function()
				Text.SpaceNormalize(a)
			end).toThrow("Text.SpaceNormalize called on non-string type")
		end)
	end)


	describe("Split", function()
		it("should return the correct table for your standard use case", function()
			local a = "this,is,comma,separated"
			local pattern = ","
			local expectedResult = {
				[1] = "this",
				[2] = "is",
				[3] = "comma",
				[4] = "separated",
			}

			jestExpect(Text.Split(a, pattern)).toEqual(expectedResult)
		end)

		it("should not remove whitespace", function()
			local a = " 	SpaceTab ,	, Space"
			local pattern = ","
			local expectedResult = {
				[1] = " 	SpaceTab ",
				[2] = "	",
				[3] = " Space",
			}

			jestExpect(Text.Split(a, pattern)).toEqual(expectedResult)
		end)

		it("should treat regular expressions as plain text", function()
			local a = "Notyour^%s+normalstring.Thisisasecondsentence."
			local b = "."
			local c = "^%s+"
			local d = "%A"

			local expectedB = {
				[1] = "Notyour^%s+normalstring",
				[2] = "Thisisasecondsentence",
				[3] = "",
			}
			local expectedC = {
				[1] = "Notyour",
				[2] = "normalstring.Thisisasecondsentence."
			}
			local expectedD = {
				[1] = "Notyour^%s+normalstring.Thisisasecondsentence."
			}

			jestExpect(Text.Split(a, b)).toEqual(expectedB)
			jestExpect(Text.Split(a, c)).toEqual(expectedC)
			jestExpect(Text.Split(a, d)).toEqual(expectedD)
		end)

		it("should work when pattern is not in string", function()
			local a = "The pattern you are looking for does not exist."
			local pattern = ","
			local expectedResult = {
				[1] = "The pattern you are looking for does not exist.",
			}

			jestExpect(Text.Split(a, pattern)).toEqual(expectedResult)
		end)

		it("should work when called on an empty string", function()
			local a = ""
			local pattern = ","
			local expectedResult = {
				[1] = "",
			}

			jestExpect(Text.Split(a, pattern)).toEqual(expectedResult)
		end)

		it("should throw an error if called on an empty pattern", function()
			local a = "The pattern definitely doesn't exist here."
			local pattern = ""

			jestExpect(function()
				Text.Split(a, pattern)
			end).toThrow("Text.Split called with an empty pattern")
		end)

		it("should throw an error if called an a non-string type", function()
			local a = { first = 1, second = 2 }
			local b = "an actual string"

			jestExpect(function()
				Text.Split(a, b)
			end).toThrow("Text.Split called on non-string type")

			jestExpect(function()
				Text.Split(b, a)
			end).toThrow("Text.Split called with a pattern that is non-string type")
		end)
	end)
end