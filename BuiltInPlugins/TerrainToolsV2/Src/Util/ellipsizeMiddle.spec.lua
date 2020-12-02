local ellipsizeMiddle = require(script.Parent.ellipsizeMiddle)

return function()
	-- Mock getting rendered text size with just the amount of characters
	local function getTextWidth(str)
		-- Use utf8 because the added ellipsis is utf8.char(0x2026), not 3 "." chars
		return utf8.len(str)
	end

	it("should work", function()
		expect(ellipsizeMiddle("foobar", 5, getTextWidth, 2)).to.equal("fo…ar")
		expect(ellipsizeMiddle("abcdefghijklmnopqrstuvwxyz", 3, getTextWidth, 0)).to.equal("ab…")
		expect(ellipsizeMiddle("abcdefghijklmnopqrstuvwxyz", 3, getTextWidth, 4)).to.equal("ab…")
		expect(ellipsizeMiddle("abcdefghijklmnopqrstuvwxyz", 8, getTextWidth, 2)).to.equal("abcde…yz")
		expect(ellipsizeMiddle("abcdefghijklmnopqrstuvwxyz", 8, getTextWidth, 4)).to.equal("abc…wxyz")
		expect(ellipsizeMiddle("abcdefghijklmnopqrstuvwxyz", 20, getTextWidth, 0)).to.equal("abcdefghijklmnopqrs…")
		expect(ellipsizeMiddle("abcdefghijklmnopqrstuvwxyz", 20, getTextWidth, 4)).to.equal("abcdefghijklmno…wxyz")
		expect(ellipsizeMiddle("abcdefghijklmnopqrstuvwxyz", 20, getTextWidth, 12)).to.equal("abcdefg…opqrstuvwxyz")
	end)

	it("should not ellipsize if the text already fits", function()
		expect(ellipsizeMiddle("foo", 4, getTextWidth)).to.equal("foo")
		expect(ellipsizeMiddle("hello, world", 100, getTextWidth)).to.equal("hello, world")
	end)

	it("should handle maxWidth <= 0", function()
		expect(ellipsizeMiddle("foobar", 0, getTextWidth)).to.equal("")
		expect(ellipsizeMiddle("foobar", -1, getTextWidth)).to.equal("")
		expect(ellipsizeMiddle("foobar", -100, getTextWidth)).to.equal("")
	end)

	it("should handle suffixLength <= 0", function()
		expect(ellipsizeMiddle("foobar", 4, getTextWidth, 0)).to.equal("foo…")
		expect(ellipsizeMiddle("foobar", 4, getTextWidth, -1)).to.equal("foo…")
		expect(ellipsizeMiddle("foobar", 4, getTextWidth, -100)).to.equal("foo…")
	end)

	it("should handle suffix being too long", function()
		expect(ellipsizeMiddle("foobar", 1, getTextWidth, 2)).to.equal("")
	end)

	it("should handle long input strings", function()
		local str = ("abcdefghijklmnopqrstuvwxyz"):rep(10)
		expect(ellipsizeMiddle(str, 20, getTextWidth, 7)).to.equal("abcdefghijkl…tuvwxyz")
	end)
end
