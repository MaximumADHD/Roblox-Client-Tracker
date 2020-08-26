local Constants = require(script.Parent.Parent.Constants)
local validateMessage = require(script.Parent.validateMessage)

return function()
	it("should return true if the message fits within the max length", function()
		expect(validateMessage("Hello world")).to.equal(true)
	end)

	it("should return false if the message is longer than the max length", function()
		local tooLong = string.rep(".", Constants.MAX_MESSAGE_LENGTH + 1)
		expect(validateMessage(tooLong)).to.equal(false)
	end)

	-- Examples of good/bad UTF-8 sequences taken from https://stackoverflow.com/a/3886015/12748159
	it("should return true for valid UTF-8 sequences", function()
		expect(validateMessage("\xc3\xb1")).to.equal(true)
		expect(validateMessage("\xe2\x82\xa1")).to.equal(true)
		expect(validateMessage("\xf0\x90\x8c\xbc")).to.equal(true)
	end)

	it("should return false for invalid hand-made UTF-8 sequences", function()
		expect(validateMessage("\xc3\x28")).to.equal(false)
		expect(validateMessage("\xa0\xa1")).to.equal(false)
		expect(validateMessage("\xe2\x28\xa1")).to.equal(false)
		expect(validateMessage("\xe2\x82\x28")).to.equal(false)
		expect(validateMessage("\xf0\x28\x8c\xbc")).to.equal(false)
		expect(validateMessage("\xf0\x90\x28\xbc")).to.equal(false)
		expect(validateMessage("\xf0\x28\x8c\x28")).to.equal(false)
	end)

end
