--!nonstrict
local Tokens = script.Parent
local Style = Tokens.Parent
local Core = Style.Parent
local UIBlox = Core.Parent
local Packages = UIBlox.Parent
local RbxDesignFoundations = require(Packages.RbxDesignFoundations)
local Constants = require(Style.Constants)

type ThemeName = Constants.ThemeName

return {
	GetTokenGenerators = function(themeName: ThemeName | string)
		local theme = themeName:lower()
		if theme == Constants.ThemeName.Dark:lower() then
			return RbxDesignFoundations.tokens.Common.Builder.Dark
		elseif theme == Constants.ThemeName.Light:lower() then
			return RbxDesignFoundations.tokens.Common.Builder.Light
		else
			return nil
		end
	end,
	GetFoundationTokens = function(themeName: ThemeName | string)
		local RbxDesignFoundationsV4 = require(Packages.RbxDesignFoundationsV4)
		local foundationTokens = RbxDesignFoundationsV4.themes[RbxDesignFoundationsV4.Theme.Default]()
		local theme = themeName:lower()

		if theme == Constants.ThemeName.Dark:lower() then
			return foundationTokens.Dark
		elseif theme == Constants.ThemeName.Light:lower() then
			return foundationTokens.Light
		else
			return nil
		end
	end,
}
