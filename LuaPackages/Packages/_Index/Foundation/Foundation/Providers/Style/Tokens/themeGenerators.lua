local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local ColorMode = require(Foundation.Enums.ColorMode)
local ThemeName = require(Foundation.Enums.ThemeName)

type ColorMode = ColorMode.ColorMode
type ThemeName = ThemeName.ThemeName

local function getGenerator(themeName: ThemeName, colorMode: ColorMode)
	local themes = require(Packages.RbxDesignFoundations).themes
	local loadTheme = themes[themeName] or themes[ThemeName.Default]
	local theme = loadTheme()
	return if colorMode == ColorMode.Light then theme.Light else theme.Dark
end

local function getLegacyGenerator(colorMode: ColorMode)
	local generators = require(Packages.RbxDesignFoundationsV3).Tokens
	return if colorMode == ColorMode.Light then generators.Light else generators.Dark
end

return {
	getGenerator = getGenerator,
	getLegacyGenerator = getLegacyGenerator,
}
