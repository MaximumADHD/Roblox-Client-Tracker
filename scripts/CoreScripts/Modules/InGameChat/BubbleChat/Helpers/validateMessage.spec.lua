local CorePackages = game:GetService("CorePackages")

local Constants = require(script.Parent.Parent.Constants)
local validateMessage = require(script.Parent.validateMessage)

local JestGlobals = require(CorePackages.JestGlobals)
local expect = JestGlobals.expect

return function()
	it("should return true if the message fits within the max length", function()
		expect(validateMessage("Hello world")).toBe(true)
	end)

	it("should return false if the message is longer than the max length", function()
		local tooLong = string.rep(".", Constants.MAX_MESSAGE_LENGTH + 1)
		local valid, _ = validateMessage(tooLong)
		expect(valid).toBe(false)
	end)

	-- Examples of good/bad UTF-8 sequences taken from https://stackoverflow.com/a/3886015/12748159
	it("should return true for valid UTF-8 sequences", function()
		expect(validateMessage("\xc3\xb1")).toBe(true)
		expect(validateMessage("\xe2\x82\xa1")).toBe(true)
		expect(validateMessage("\xf0\x90\x8c\xbc")).toBe(true)
	end)

	it("should return false for invalid hand-made UTF-8 sequences", function()
		expect(validateMessage("\xc3\x28")).toBe(false)
		expect(validateMessage("\xa0\xa1")).toBe(false)
		expect(validateMessage("\xe2\x28\xa1")).toBe(false)
		expect(validateMessage("\xe2\x82\x28")).toBe(false)
		expect(validateMessage("\xf0\x28\x8c\xbc")).toBe(false)
		expect(validateMessage("\xf0\x90\x28\xbc")).toBe(false)
		expect(validateMessage("\xf0\x28\x8c\x28")).toBe(false)
	end)
end
