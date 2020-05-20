return function()
	local validateStyle = require(script.Parent.validateStyle)
	local testStyle = require(script.Parent.TestStyle)
	it("Should be valid", function()
		assert(validateStyle(testStyle))
	end)
end