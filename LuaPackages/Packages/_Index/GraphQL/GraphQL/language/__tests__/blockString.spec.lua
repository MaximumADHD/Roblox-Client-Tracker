--[[
 * Copyright (c) GraphQL Contributors
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/graphql/graphql-js/blob/1951bce42092123e844763b6a8e985a8a3327511/src/language/__tests__/blockString-test.js
local Packages = script.Parent.Parent.Parent.Parent
local LuauPolyfill = require(Packages.LuauPolyfill)
local Array = LuauPolyfill.Array

return function()
	local blockString = require(script.Parent.Parent.blockString)
	local dedentBlockStringValue = blockString.dedentBlockStringValue
	local getBlockStringIndentation = blockString.getBlockStringIndentation
	local printBlockString = blockString.printBlockString
	local function joinLines(...)
		return Array.join({ ... }, "\n")
	end

	describe("dedentBlockStringValue", function()
		it("removes uniform indentation from a string", function()
			local rawValue = joinLines(
				"",
				"    Hello,",
				"      World!",
				"",
				"    Yours,",
				"      GraphQL."
			)
			expect(dedentBlockStringValue(rawValue)).to.equal(
				joinLines("Hello,", "  World!", "", "Yours,", "  GraphQL.")
			)
		end)

		it("removes empty leading and trailing lines", function()
			local rawValue = joinLines(
				"",
				"",
				"    Hello,",
				"      World!",
				"",
				"    Yours,",
				"      GraphQL.",
				"",
				""
			)
			expect(dedentBlockStringValue(rawValue)).to.equal(
				joinLines("Hello,", "  World!", "", "Yours,", "  GraphQL.")
			)
		end)

		it("removes blank leading and trailing lines", function()
			local rawValue = joinLines(
				"  ",
				"        ",
				"    Hello,",
				"      World!",
				"",
				"    Yours,",
				"      GraphQL.",
				"        ",
				"  "
			)
			expect(dedentBlockStringValue(rawValue)).to.equal(
				joinLines("Hello,", "  World!", "", "Yours,", "  GraphQL.")
			)
		end)

		it("retains indentation from first line", function()
			local rawValue = joinLines(
				"    Hello,",
				"      World!",
				"",
				"    Yours,",
				"      GraphQL."
			)
			expect(dedentBlockStringValue(rawValue)).to.equal(
				joinLines("    Hello,", "  World!", "", "Yours,", "  GraphQL.")
			)
		end)

		it("does not alter trailing spaces", function()
			local rawValue = joinLines(
				"               ",
				"    Hello,     ",
				"      World!   ",
				"               ",
				"    Yours,     ",
				"      GraphQL. ",
				"               "
			)
			expect(dedentBlockStringValue(rawValue)).to.equal(
				joinLines("Hello,     ", "  World!   ", "           ", "Yours,     ", "  GraphQL. ")
			)
		end)
	end)

	describe("getBlockStringIndentation", function()
		it("returns zero for an empty string", function()
			expect(getBlockStringIndentation("")).to.equal(0)
		end)

		it("do not take first line into account", function()
			expect(getBlockStringIndentation("  a")).to.equal(0)
			expect(getBlockStringIndentation(" a\n  b")).to.equal(2)
		end)

		it("returns minimal indentation length", function()
			expect(getBlockStringIndentation("\n a\n  b")).to.equal(1)
			expect(getBlockStringIndentation("\n  a\n b")).to.equal(1)
			expect(getBlockStringIndentation("\n  a\n b\nc")).to.equal(0)
		end)

		it("count both tab and space as single character", function()
			expect(getBlockStringIndentation("\n\ta\n          b")).to.equal(1)
			expect(getBlockStringIndentation("\n\t a\n          b")).to.equal(2)
			expect(getBlockStringIndentation("\n \t a\n          b")).to.equal(3)
		end)

		it("do not take empty lines into account", function()
			expect(getBlockStringIndentation("a\n ")).to.equal(0)
			expect(getBlockStringIndentation("a\n\t")).to.equal(0)
			expect(getBlockStringIndentation("a\n\n b")).to.equal(1)
			expect(getBlockStringIndentation("a\n \n  b")).to.equal(2)
		end)
	end)

	describe("printBlockString", function()
		it("by default print block strings as single line", function()
			local str = "one liner"
			expect(printBlockString(str)).to.equal('"""one liner"""')
			expect(printBlockString(str, "", true)).to.equal('"""\none liner\n"""')
		end)

		it("correctly prints single-line with leading space", function()
			local str = "    space-led string"
			expect(printBlockString(str)).to.equal('"""    space-led string"""')
			expect(printBlockString(str, "", true)).to.equal('"""    space-led string\n"""')
		end)

		it("correctly prints single-line with leading space and quotation", function()
			local str = '    space-led value "quoted string"'

			expect(printBlockString(str)).to.equal('"""    space-led value "quoted string"\n"""')

			expect(printBlockString(str, "", true)).to.equal(
				'"""    space-led value "quoted string"\n"""'
			)
		end)

		it("correctly prints single-line with trailing backslash", function()
			local str = "backslash \\"

			expect(printBlockString(str)).to.equal('"""\nbackslash \\\n"""')
			expect(printBlockString(str, "", true)).to.equal('"""\nbackslash \\\n"""')
		end)

		it("correctly prints string with a first line indentation", function()
			local str = joinLines("    first  ", "  line     ", "indentation", "     string")

			expect(printBlockString(str)).to.equal(
				joinLines('"""', "    first  ", "  line     ", "indentation", "     string", '"""')
			)
		end)
	end)
end
