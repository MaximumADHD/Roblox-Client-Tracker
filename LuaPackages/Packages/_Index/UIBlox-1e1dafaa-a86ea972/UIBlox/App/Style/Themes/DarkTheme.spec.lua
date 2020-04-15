return function()
	it("should be a valid theme palette.", function()
		local Themes = script.Parent
		local Style = Themes.Parent
		local validateTheme = require(Style.Validator.validateTheme)
		local DarkTheme = require(Themes.DarkTheme)
		assert(validateTheme(DarkTheme))
	end)
end