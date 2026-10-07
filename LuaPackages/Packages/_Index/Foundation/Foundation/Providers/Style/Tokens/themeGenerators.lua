local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local ColorMode = require(Foundation.Enums.ColorMode)
local Flags = require(Foundation.Utility.Flags)
local RbxDesignFoundations = require(Packages.RbxDesignFoundations)
local ThemeName = require(Foundation.Enums.ThemeName)

type ColorMode = ColorMode.ColorMode
type ThemeName = ThemeName.ThemeName

local function getGenerator(themeName: ThemeName, colorMode: ColorMode)
	local themes = if Flags.FoundationFontFaceMigration
		then RbxDesignFoundations.themes
		else require(Packages.RbxDesignFoundationsV4).themes :: never

	local loadTheme = themes[themeName] or themes[ThemeName.Default]
	local theme = loadTheme()
	return if colorMode == ColorMode.Light then theme.Light else theme.Dark
end

return {
	getGenerator = getGenerator,
}
