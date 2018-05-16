return function()
	local Text = require(script.Parent.Text)
	describe("GetTextHeight", function()
		it("should return height equal to font size when string is empty", function()
			local height = Text.GetTextHeight("", Enum.Font.SourceSans, 18, 0)
			expect(height).to.equal(18)
		end)
	end)

	describe("Truncate", function()
		it("Should return empty string", function()
			local emptyQuery = Text.Truncate("", Enum.Font.SourceSans, 18, 0, "...")
			expect(emptyQuery).to.be.a("string")
			expect(emptyQuery).to.equal("")
		end)

		it("Should return empty string for not empty box", function()
			local emptyQuery = Text.Truncate("", Enum.Font.SourceSans, 18, 50, "...")
			expect(emptyQuery).to.be.a("string")
			expect(emptyQuery).to.equal("")
		end)

		it("Should truncate with ...", function()
			local reallyLongQuery = Text.Truncate(
				"One Two Three Four Five Six Seven Eight Nine Ten Eleven Twelve", Enum.Font.SourceSans, 18, 100, "...")
			expect(reallyLongQuery).to.equal("One Two Thre...")
		end)

		it("Should truncate without a ...", function()
			local reallyLongQueryNoOverflowMarker = Text.Truncate(
				"One Two Three Four Five Six Seven Eight Nine Ten Eleven Twelve", Enum.Font.SourceSans, 18, 100)
			expect(reallyLongQueryNoOverflowMarker).to.equal("One Two Three ")
		end)

		it("Should not truncate", function()
			local shouldFitQuery = Text.Truncate("One Two", Enum.Font.SourceSans, 18, 100)
			expect(shouldFitQuery).to.equal("One Two")
		end)

		it("Should not truncate, off by one check", function()
			local oneCharQuery = Text.Truncate("O", Enum.Font.SourceSans, 18, 100)
			expect(oneCharQuery).to.equal("O")
		end)

		it("Should truncate, off by one check", function()
			local oneCharNoRoomQuery = Text.Truncate("O", Enum.Font.SourceSans, 18, 0)
			expect(oneCharNoRoomQuery).to.equal("")
		end)

		it("Negative width check", function()
			local shouldFitQuery = Text.Truncate("One Two", Enum.Font.SourceSans, 18, -100, "...")
			expect(shouldFitQuery).to.equal("")
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
end