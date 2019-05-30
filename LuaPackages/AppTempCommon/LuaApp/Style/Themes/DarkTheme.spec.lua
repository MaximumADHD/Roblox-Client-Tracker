return function()
	it("should be a valid theme palette.", function()
		local CorePackages = game:GetService("CorePackages")
		local UIBlox = require(CorePackages.UIBlox)
		local validateTheme = UIBlox.Style.Validator.validateTheme
		local DarkTheme = require(script.Parent.DarkTheme)
		assert(validateTheme(DarkTheme))
	end)
end