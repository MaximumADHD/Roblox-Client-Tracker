return function()
	local StringTrim = require(script.Parent.StringTrim)

	describe("Normal usage", function()

		it("should trim the specified character", function()
			local str = "/Modules/Common/StringUtilities/"
			local trimmed = StringTrim(str, "/")

			expect(trimmed).to.equal("Modules/Common/StringUtilities")
		end)

		it("should accept multiple charcters", function()
			local str = "(Roblox Powering Imagination){}"
			local trimmed = StringTrim(str, "(){}")

			expect(trimmed).to.equal("Roblox Powering Imagination")
		end)

		it("should be able to trim only on the right side", function()
			local str = "(Roblox Powering Imagination){}"
			local trimmed = StringTrim(str, "(){}", {right = true})

			expect(trimmed).to.equal("(Roblox Powering Imagination")
		end)

		it("should be able to trim only on the left side", function()
			local str = "(Roblox Powering Imagination){}"
			local trimmed = StringTrim(str, "(){}", {left = true})

			expect(trimmed).to.equal("Roblox Powering Imagination){}")
		end)

		it("should default to trimming blanks on both sides", function()
			local str = "\tRoblox Powering Imagination      \n"
			local trimmed = StringTrim(str)

			expect(trimmed).to.equal("Roblox Powering Imagination")
		end)

	end)

	describe("Edge case:", function()

		it("an empty character list is a no-op", function()
			local str = "   Roblox Powering Imagination   "
			local trimmed = StringTrim(str, "")

			expect(trimmed).to.equal(str)
		end)

	end)

end
