return function()
	it("should be valid font palette without errors", function()
		local Fonts = script.Parent
		local Style = Fonts.Parent
		local validateFont = require(Style.Validator.validateFont)
		local Gotham = require(Fonts.Gotham)
		assert(validateFont(Gotham))
	end)
end