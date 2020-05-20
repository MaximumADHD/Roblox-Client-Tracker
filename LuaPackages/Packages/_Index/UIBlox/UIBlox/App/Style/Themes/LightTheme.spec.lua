return function()
	it("should be a valid theme palette.", function()
		local Themes = script.Parent
		local Style = Themes.Parent
		local validateTheme = require(Style.Validator.validateTheme)
		local LightTheme = require(Themes.LightTheme)
		assert(validateTheme(LightTheme))
	end)
end