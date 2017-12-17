return function()
	local Text = require(script.Parent.Text)

	describe("TrimLeading", function()
		it("should return a string without the leading whitespace", function()
			local a = " 	 	SpaceTabSpaceTab"

			expect(Text.TrimLeading(a)).to.equal("SpaceTabSpaceTab")
		end)

		it("should not remove any other whitespace", function()
			local a = " 	 	Space Tab 	Space Tab 	 	"

			expect(Text.TrimLeading(a)).to.equal("Space Tab 	Space Tab 	 	")
		end)

		it("should not change a string with no whitespace", function()
			local a = "There'sNo^%s+Whit.e\\space--InThis."

			expect(Text.TrimLeading(a)).to.equal(a)
		end)

		it("should remove all whitespace in a string that is nothing but whitespace", function()
			local a = " 	 	"

			expect(Text.TrimLeading(a)).to.equal("")
		end)

		it("should handle the case where the string is empty", function()
			local a = ""

			expect(Text.TrimLeading(a)).to.equal(a)
		end)

		it("should throw an error if called an a non-string type", function()
			local a = { first = 1, second = 2 }

			expect(function()
				Text.TrimLeading(a)
			end).to.throw()
		end)
	end)

	describe("TrimTrailing", function()
		it("should return a string without the trailing whitespace", function()
			local a = "SpaceTabSpaceTab 	 	"

			expect(Text.TrimTrailing(a)).to.equal("SpaceTabSpaceTab")
		end)

		it("should not remove any other whitespace", function()
			local a = " 	 	Space Tab 	Space Tab 	 	"

			expect(Text.TrimTrailing(a)).to.equal(" 	 	Space Tab 	Space Tab")
		end)

		it("should not change a string with no whitespace", function()
			local a = "There'sNo^%s+Whit.e\\space--InThis."

			expect(Text.TrimTrailing(a)).to.equal(a)
		end)

		it("should remove all whitespace in a string that is nothing but whitespace", function()
			local a = " 	 	"

			expect(Text.TrimTrailing(a)).to.equal("")
		end)

		it("should handle the case where the string is empty", function()
			local a = ""

			expect(Text.TrimTrailing(a)).to.equal(a)
		end)

		it("should throw an error if called an a non-string type", function()
			local a = { first = 1, second = 2 }

			expect(function()
				Text.TrimTrailing(a)
			end).to.throw()
		end)
	end)

	describe("Trim", function()
		it("should return a string without the leading or trailing whitespace", function()
			local a = " 	 	SpaceTabSpaceTab 	 	"

			expect(Text.Trim(a)).to.equal("SpaceTabSpaceTab")
		end)

		it("should not remove any other whitespace", function()
			local a = " 	 	Space Tab 	Space Tab 	 	"

			expect(Text.Trim(a)).to.equal("Space Tab 	Space Tab")
		end)

		it("should not change a string with no whitespace", function()
			local a = "There'sNo^%s+Whit.e\\space--InThis."

			expect(Text.Trim(a)).to.equal(a)
		end)

		it("should remove all whitespace in a string that is nothing but whitespace", function()
			local a = " 	 	"

			expect(Text.Trim(a)).to.equal("")
		end)

		it("should handle the case where the string is empty", function()
			local a = ""

			expect(Text.Trim(a)).to.equal(a)
		end)

		it("should throw an error if called an a non-string type", function()
			local a = { first = 1, second = 2 }

			expect(function()
				Text.Trim(a)
			end).to.throw()
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