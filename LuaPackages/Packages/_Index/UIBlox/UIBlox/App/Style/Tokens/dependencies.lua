--!nonstrict
local Tokens = script.Parent
local Style = Tokens.Parent
local Core = Style.Parent
local UIBlox = Core.Parent
local Packages = UIBlox.Parent
local t = require(Packages.t)
local RbxDesignFoundations = require(Packages.RbxDesignFoundations)
local Constants = require(Style.Constants)

type ThemeName = Constants.ThemeName

local function getThemePackageIndex(deviceType)
	return {
		[Constants.ThemeName.Light:lower()] = RbxDesignFoundations.tokens[deviceType].Light,
		[Constants.ThemeName.Dark:lower()] = RbxDesignFoundations.tokens[deviceType].Dark,
	}
end

return {
	TokenPackageIndexMap = {
		[Constants.DeviceType.Console] = getThemePackageIndex("Console"),
		[Constants.DeviceType.Desktop] = getThemePackageIndex("Desktop"),
		[Constants.DeviceType.Tablet] = getThemePackageIndex("Desktop"),
		[Constants.DeviceType.Phone] = getThemePackageIndex("Desktop"),
		[Constants.DeviceType.VR] = getThemePackageIndex("Desktop"),
		-- Fallback to the default even though it's currently unknown as long as the DeviceType is valid
		[Constants.DeviceType.Unknown] = getThemePackageIndex("Desktop"),
	},
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
		local RbxDesignFoundationsV2 = require(Packages.RbxDesignFoundationsV2)
		local foundationTokens = RbxDesignFoundationsV2.Tokens
		local theme = themeName:lower()

		if theme == Constants.ThemeName.Dark:lower() then
			return foundationTokens.FoundationDark
		elseif theme == Constants.ThemeName.Light:lower() then
			return foundationTokens.FoundationLight
		else
			return nil
		end
	end,
	SchemaPackage = {
		Validators = {
			Global = require(RbxDesignFoundations.tokens.Schema.Validators.validateGlobal)(t),
			Semantic = require(RbxDesignFoundations.tokens.Schema.Validators.validateSemantic)(t),
			Component = require(RbxDesignFoundations.tokens.Schema.Validators.validateComponent)(t),
		},
		Types = {
			GlobalType = require(RbxDesignFoundations.tokens.Schema.Types.GlobalType),
			SemanticType = require(RbxDesignFoundations.tokens.Schema.Types.SemanticType),
			ComponentType = require(RbxDesignFoundations.tokens.Schema.Types.ComponentType),
		},
	},
}
