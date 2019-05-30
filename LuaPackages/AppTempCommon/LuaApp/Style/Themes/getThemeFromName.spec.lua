return function()
	local getThemeFromName = require(script.Parent.getThemeFromName)
	local Constants = require(script.Parent.Parent.Constants)
	it("should be able to get a theme palette without errors", function()
		local themeMap = {
			[Constants.ThemeName.Dark] = require(script.Parent.DarkTheme),
		}
		local themeTable = getThemeFromName(Constants.ThemeName.Dark, Constants.ThemeName.Dark,themeMap)
		expect(themeTable).to.be.a("table")
	end)

	it("should be able to get a theme palette using default without errors", function()
		local themeMap = {
			[Constants.ThemeName.Dark] = require(script.Parent.DarkTheme),
		}
		local themeTable = getThemeFromName("classic", Constants.ThemeName.Dark, themeMap)
		expect(themeTable).to.be.a("table")
	end)

	it("should throw with invalid theme palette", function()
		expect(function()
			local themeMap = {
				[Constants.ThemeName.Dark] = {
					Background = {
						Color = Color3.fromRGB(0, 0, 0),
						Transparency = 0,
					},
				}
			}
			getThemeFromName(Constants.ThemeName.Dark, Constants.ThemeName.Dark, themeMap)
		end).to.throw()
	end)
end