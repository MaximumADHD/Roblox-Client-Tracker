return function()
	local Text = require(script.Parent.Text)

	describe("GetTextBounds", function()
		it("should return a bounds of padding width and font-size height when the string is empty", function()
			local bounds = Text.GetTextBounds("", Enum.Font.SourceSans, 18, Vector2.new(1000, 1000))
			expect(bounds.X).to.equal(Text._TEMP_PATCHED_PADDING.x)
			expect(bounds.Y).to.equal(18 + Text._TEMP_PATCHED_PADDING.y)
		end)
		it("should return the height and width of a string as one line with large bounds", function()
			local bounds = Text.GetTextBounds("One Two Three", Enum.Font.SourceSans, 18, Vector2.new(1000, 1000))
			expect(bounds.Y).to.equal(18 + Text._TEMP_PATCHED_PADDING.y)
		end)

		it("should return the height of the string as multiple lines with short bounds", function()
			local bounds = Text.GetTextBounds("One Two Three Four", Enum.Font.SourceSans, 18, Vector2.new(32, 1000))
			expect(bounds.Y > 18).to.equal(true)
		end)
	end)

	describe("GetTextHeight", function()
		it("should return height equal to font size when string is empty", function()
			local height = Text.GetTextHeight("", Enum.Font.SourceSans, 18, 0)
			expect(height).to.equal(18 + Text._TEMP_PATCHED_PADDING.y)
		end)
	end)

	describe("GetTextWidth", function()
		it("should return width equal to 1 when string is empty", function()
			local width = Text.GetTextWidth("", Enum.Font.SourceSans, 18, 18)
			expect(width).to.equal(Text._TEMP_PATCHED_PADDING.x)
		end)
	end)

	describe("Truncate", function()
		it("should return empty string", function()
			local emptyQuery = Text.Truncate("", Enum.Font.SourceSans, 18, 0, "...")
			expect(emptyQuery).to.be.a("string")
			expect(emptyQuery).to.equal("")
		end)

		it("should return empty string for not empty box", function()
			local emptyQuery = Text.Truncate("", Enum.Font.SourceSans, 18, 50, "...")
			expect(emptyQuery).to.be.a("string")
			expect(emptyQuery).to.equal("")
		end)

		it("should truncate with ...", function()
			local reallyLongQuery = Text.Truncate(
				"One Two Three Four Five Six Seven Eight Nine Ten Eleven Twelve", Enum.Font.SourceSans, 18, 100, "...")
			expect(reallyLongQuery).to.equal("One Two Thre...")
		end)

		it("should truncate without a ...", function()
			local reallyLongQueryNoOverflowMarker = Text.Truncate(
				"One Two Three Four Five Six Seven Eight Nine Ten Eleven Twelve", Enum.Font.SourceSans, 18, 100)
			expect(reallyLongQueryNoOverflowMarker).to.equal("One Two Three ")
		end)

		it("should not truncate", function()
			local shouldFitQuery = Text.Truncate("One Two", Enum.Font.SourceSans, 18, 100)
			expect(shouldFitQuery).to.equal("One Two")
		end)

		it("should not truncate, off by one check", function()
			local oneCharQuery = Text.Truncate("O", Enum.Font.SourceSans, 18, 100)
			expect(oneCharQuery).to.equal("O")
		end)

		it("should truncate, off by one check", function()
			local oneCharNoRoomQuery = Text.Truncate("O", Enum.Font.SourceSans, 18, 0)
			expect(oneCharNoRoomQuery).to.equal("")
		end)

		it("should perform a negative width check", function()
			local shouldFitQuery = Text.Truncate("One Two", Enum.Font.SourceSans, 18, -100, "...")
			expect(shouldFitQuery).to.equal("")
		end)

		it("should truncate long graphemes properly", function()
			-- 11-byte rainbow flag grapheme
			-- Flag, zero-space-joiner, rainbow
			local rainbowFlag = utf8.char(127987) .. utf8.char(8205) .. utf8.char(127752)
			local oneFlagWithinLimit = Text.Truncate(
				rainbowFlag, Enum.Font.SourceSans, 18, 100, "...")
			expect(oneFlagWithinLimit).to.equal(rainbowFlag)

			local twoRainbowFlags = rainbowFlag .. rainbowFlag
			local twoFlagsAreFine = Text.Truncate(
				twoRainbowFlags, Enum.Font.SourceSans, 18, 100, "...")
			expect(twoFlagsAreFine).to.equal(twoRainbowFlags)

			local fourRainbowFlags = twoRainbowFlags .. twoRainbowFlags
			local fourFlagsIsTooLong = Text.Truncate(
				fourRainbowFlags, Enum.Font.SourceSans, 18, 100, "...")
			expect(fourFlagsIsTooLong).to.equal(twoRainbowFlags .. "...")
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

			expect(textLabel.Text).to.equal("One Two Three ")
		end)
	end)


	describe("TrimString", function()
		it("Should trim the string properly", function()
			local trimmedInput = Text.Trim("")
			local expected = ""
			expect(trimmedInput).to.equal(expected)
		end)
		it("Should trim the string properly", function()
			local trimmedInput = Text.Trim("    ")
			local expected = ""
			expect(trimmedInput).to.equal(expected)
		end)
		it("Should trim the string properly", function()
			local trimmedInput = Text.Trim("ab")
			local expected = "ab"
			expect(trimmedInput).to.equal(expected)
		end)
		it("Should trim the string properly", function()
			local trimmedInput = Text.Trim("    ab   ")
			local expected = "ab"
			expect(trimmedInput).to.equal(expected)
		end)
		it("Should trim the string properly", function()
			local trimmedInput = Text.Trim("    a b    ")
			local expected = "a b"
			expect(trimmedInput).to.equal(expected)
		end)
		it("Should trim the string properly", function()
			local trimmedInput = Text.Trim("\r\n\t\f a\r\n\t\f ")
			local expected = "a"
			expect(trimmedInput).to.equal(expected)
		end)
		it("Should trim the string with unicode characters properly", function()
			local trimmedInput = Text.Trim("😤👩🏼‍🏫😭ぼ😀で😹🤕あ👩🏻‍🎓")
			local expected = "😤👩🏼‍🏫😭ぼ😀で😹🤕あ👩🏻‍🎓"
			expect(trimmedInput).to.equal(expected)
		end)
		it("Should trim the string properly", function()
			local trimmedInput = Text.Trim("    😤👩🏼‍🏫😭ぼ😀で😹🤕あ👩🏻‍🎓    ")
			local expected = "😤👩🏼‍🏫😭ぼ😀で😹🤕あ👩🏻‍🎓"
			expect(trimmedInput).to.equal(expected)
		end)
		it("Should trim the string properly", function()
			local trimmedInput = Text.Trim("\n    😤👩🏼‍🏫😭ぼ😀 \nで😹🤕あ👩🏻‍🎓    \n")
			local expected = "😤👩🏼‍🏫😭ぼ😀 \nで😹🤕あ👩🏻‍🎓"
			expect(trimmedInput).to.equal(expected)
		end)
	end)


	describe("RightTrimString", function()
		it("Should right trim the string properly", function()
			local trimmedInput = Text.RightTrim("")
			local expected = ""
			expect(trimmedInput).to.equal(expected)
		end)
		it("Should right trim the string properly", function()
			local trimmedInput = Text.RightTrim("    ")
			local expected = ""
			expect(trimmedInput).to.equal(expected)
		end)
		it("Should right trim the string properly", function()
			local trimmedInput = Text.RightTrim("ab")
			local expected = "ab"
			expect(trimmedInput).to.equal(expected)
		end)
		it("Should right trim the string properly", function()
			local trimmedInput = Text.RightTrim("    ab   ")
			local expected = "    ab"
			expect(trimmedInput).to.equal(expected)
		end)
		it("Should right trim the string properly", function()
			local trimmedInput = Text.RightTrim("    a b    ")
			local expected = "    a b"
			expect(trimmedInput).to.equal(expected)
		end)
		it("Should right trim the string properly", function()
			local trimmedInput = Text.RightTrim("\r\n\t\f a\r\n\t\f ")
			local expected = "\r\n\t\f a"
			expect(trimmedInput).to.equal(expected)
		end)
		it("Should right trim the string with unicode characters properly", function()
			local trimmedInput = Text.RightTrim("😤👩🏼‍🏫😭ぼ😀で😹🤕あ👩🏻‍🎓")
			local expected = "😤👩🏼‍🏫😭ぼ😀で😹🤕あ👩🏻‍🎓"
			expect(trimmedInput).to.equal(expected)
		end)
		it("Should right trim the string properly", function()
			local trimmedInput = Text.RightTrim("    😤👩🏼‍🏫😭ぼ😀で😹🤕あ👩🏻‍🎓    ")
			local expected = "    😤👩🏼‍🏫😭ぼ😀で😹🤕あ👩🏻‍🎓"
			expect(trimmedInput).to.equal(expected)
		end)
		it("Should right trim the string properly", function()
			local trimmedInput = Text.RightTrim("\n    😤👩🏼‍🏫😭ぼ😀 \nで😹🤕あ👩🏻‍🎓    \n")
			local expected = "\n    😤👩🏼‍🏫😭ぼ😀 \nで😹🤕あ👩🏻‍🎓"
			expect(trimmedInput).to.equal(expected)
		end)
	end)


	describe("LeftTrimString", function()
		it("Should left trim the string properly", function()
			local trimmedInput = Text.LeftTrim("")
			local expected = ""
			expect(trimmedInput).to.equal(expected)
		end)
		it("Should left trim the string properly", function()
			local trimmedInput = Text.LeftTrim("    ")
			local expected = ""
			expect(trimmedInput).to.equal(expected)
		end)
		it("Should left trim the string properly", function()
			local trimmedInput = Text.LeftTrim("ab")
			local expected = "ab"
			expect(trimmedInput).to.equal(expected)
		end)
		it("Should left trim the string properly", function()
			local trimmedInput = Text.LeftTrim("    ab   ")
			local expected = "ab   "
			expect(trimmedInput).to.equal(expected)
		end)
		it("Should left trim the string properly", function()
			local trimmedInput = Text.LeftTrim("    a b    ")
			local expected = "    a b    "
			expect(trimmedInput).to.equal(expected)
		end)
		it("Should left trim the string properly", function()
			local trimmedInput = Text.LeftTrim("\r\n\t\f a\r\n\t\f ")
			local expected = "a\r\n\t\f "
			expect(trimmedInput).to.equal(expected)
		end)
		it("Should left trim the string with unicode characters properly", function()
			local trimmedInput = Text.LeftTrim("😤👩🏼‍🏫😭ぼ😀で😹🤕あ👩🏻‍🎓")
			local expected = "😤👩🏼‍🏫😭ぼ😀で😹🤕あ👩🏻‍🎓"
			expect(trimmedInput).to.equal(expected)
		end)
		it("Should left trim the string properly", function()
			local trimmedInput = Text.LeftTrim("    😤👩🏼‍🏫😭ぼ😀で😹🤕あ👩🏻‍🎓    ")
			local expected = "😤👩🏼‍🏫😭ぼ😀で😹🤕あ👩🏻‍🎓    "
			expect(trimmedInput).to.equal(expected)
		end)
		it("Should left trim the string properly", function()
			local trimmedInput = Text.LeftTrim("\n    😤👩🏼‍🏫😭ぼ😀 \nで😹🤕あ👩🏻‍🎓    \n")
			local expected = "😤👩🏼‍🏫😭ぼ😀 \nで😹🤕あ👩🏻‍🎓    \n"
			expect(trimmedInput).to.equal(expected)
		end)
	end)


	describe("SpaceNormalize", function()
		it("should remove multiple spaces between words", function()
			local a = "This is 		not a 			normal   sentence."

			expect(Text.SpaceNormalize(a)).to.equal("This is not a normal sentence.")
		end)

		it("should remove leading and trailing whitespace", function()
			local a = " 	 	SpaceTabSpaceTab 	 	"

			expect(Text.SpaceNormalize(a)).to.equal("SpaceTabSpaceTab")
		end)

		it("should not change a string with no whitespace", function()
			local a = "There'sNo%Whit.e\\space--InThis."

			expect(Text.SpaceNormalize(a)).to.equal(a)
		end)

		it("should remove all whitespace in a string that is nothing but whitespace", function()
			local a = " 	 	"

			expect(Text.SpaceNormalize(a)).to.equal("")
		end)

		it("should handle the case where the string is empty", function()
			local a = ""

			expect(Text.SpaceNormalize(a)).to.equal(a)
		end)

		it("should throw an error if called an a non-string type", function()
			local a = { first = 1, second = 2 }

			expect(function()
				Text.SpaceNormalize(a)
			end).to.throw()
		end)
	end)


	describe("Split", function()
		local function tableEquals(tb1, tb2)
			local tables = { tb1, tb2 }

			for _,tb in ipairs(tables) do
				for key in pairs(tb) do
					if tb1[key] ~= tb2[key] then
						return false
					end
				end
			end

			return true
		end

		it("should return the correct table for your standard use case", function()
			local a = "this,is,comma,separated"
			local pattern = ","
			local expectedResult = {
				[1] = "this",
				[2] = "is",
				[3] = "comma",
				[4] = "separated",
			}

			expect(tableEquals(Text.Split(a, pattern), expectedResult)).to.equal(true)
		end)

		it("should not remove whitespace", function()
			local a = " 	SpaceTab ,	, Space"
			local pattern = ","
			local expectedResult = {
				[1] = " 	SpaceTab ",
				[2] = "	",
				[3] = " Space",
			}

			expect(tableEquals(Text.Split(a, pattern), expectedResult)).to.equal(true)
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

			expect(tableEquals(Text.Split(a, b), expectedB)).to.equal(true)
			expect(tableEquals(Text.Split(a, c), expectedC)).to.equal(true)
			expect(tableEquals(Text.Split(a, d), expectedD)).to.equal(true)
		end)

		it("should work when pattern is not in string", function()
			local a = "The pattern you are looking for does not exist."
			local pattern = ","
			local expectedResult = {
				[1] = "The pattern you are looking for does not exist.",
			}

			expect(tableEquals(Text.Split(a, pattern), expectedResult)).to.equal(true)
		end)

		it("should work when called on an empty string", function()
			local a = ""
			local pattern = ","
			local expectedResult = {
				[1] = "",
			}

			expect(tableEquals(Text.Split(a, pattern), expectedResult)).to.equal(true)
		end)

		it("should throw an error if called on an empty pattern", function()
			local a = "The pattern definitely doesn't exist here."
			local pattern = ""

			expect(function()
				Text.Split(a, pattern)
			end).to.throw()
		end)

		it("should throw an error if called an a non-string type", function()
			local a = { first = 1, second = 2 }
			local b = "an actual string"

			expect(function()
				Text.Split(a, b)
			end).to.throw()

			expect(function()
				Text.Split(b, a)
			end).to.throw()
		end)
	end)
end