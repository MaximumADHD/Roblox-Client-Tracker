return function()
	local StringSplit = require(script.Parent.StringSplit)

	describe("Normal usage", function()

		it("should split a string by a one character separator", function()
			local str = "Roblox Powering Imagination"
			local words = StringSplit(str, " ")

			expect(#words).to.equal(3)
			expect(words[1]).to.equal("Roblox")
			expect(words[2]).to.equal("Powering")
			expect(words[3]).to.equal("Imagination")
		end)

		it("should split a string by a complex regex", function()
			local str = "https://corp.roblox.com/technology"
			local words = StringSplit(str, "[^a-z]+")

			expect(#words).to.equal(5)
			expect(words[1]).to.equal("https")
			expect(words[2]).to.equal("corp")
			expect(words[3]).to.equal("roblox")
			expect(words[4]).to.equal("com")
			expect(words[5]).to.equal("technology")
		end)

		it("should split on blank spaces by default", function()
			local str = "together   through\n\tplay"
			local words = StringSplit(str)

			expect(#words).to.equal(3)
			expect(words[1]).to.equal("together")
			expect(words[2]).to.equal("through")
			expect(words[3]).to.equal("play")
		end)

		it("should not exceed the provided limit", function()
			local str = "Modules/Common/StringUtilities/StringSplit"
			local words = StringSplit(str, "/", 3)

			expect(#words).to.equal(3)
			expect(words[1]).to.equal("Modules")
			expect(words[2]).to.equal("Common")
			expect(words[3]).to.equal("StringUtilities/StringSplit")
		end)

		it("should give en empty string on leading, repeated and trailing separators", function()
			local str = "/var//www/"
			local words = StringSplit(str, "/")

			expect(#words).to.equal(5)
			expect(words[1]).to.equal("")
			expect(words[2]).to.equal("var")
			expect(words[3]).to.equal("")
			expect(words[4]).to.equal("www")
			expect(words[5]).to.equal("")
		end)

	end)

	describe("Edge case:", function()

		it("an empty string results in one empty result", function()
			local str = ""
			local words = StringSplit(str, "/")

			expect(#words).to.equal(1)
			expect(words[1]).to.equal("")
		end)

		it("an empty separator splits to characters, no leading/trailing empty strings", function()
			local str = "lua"
			local words = StringSplit(str, "")

			expect(#words).to.equal(3)
			expect(words[1]).to.equal("l")
			expect(words[2]).to.equal("u")
			expect(words[3]).to.equal("a")
		end)

		it("empty string AND separator should get an empty array", function()
			local str = ""
			local words = StringSplit(str, "")

			expect(#words).to.equal(0)
		end)

		it("regex separators can resolve to empty and non empty in same operation", function()
			local str = "//r#blox"
			local words = StringSplit(str, "[^a-z]*")

			expect(#words).to.equal(6)
			-- pattern resolved to "//", creating a leading empty string
			expect(words[1]).to.equal("")
			-- pattern resolved to "#"
			expect(words[2]).to.equal("r")
			-- pattern resolved to "", splitting by character
			expect(words[3]).to.equal("b")
			expect(words[4]).to.equal("l")
			expect(words[5]).to.equal("o")
			expect(words[6]).to.equal("x")
			-- pattern resolved to "", NO trailing empty string
		end)

	end)

end
