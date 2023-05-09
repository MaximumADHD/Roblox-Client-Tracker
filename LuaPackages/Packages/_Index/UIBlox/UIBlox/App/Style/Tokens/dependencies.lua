local Tokens = script.Parent
local Style = Tokens.Parent
local Core = Style.Parent
local UIBlox = Core.Parent
local Packages = UIBlox.Parent
local t = require(Packages.t)
local RbxDesignFoundations = require(Packages.RbxDesignFoundations)
local Constants = require(Style.Constants)

local function getThemePackageIndex(deviceType)
	return {
		[Constants.ThemeName.Light] = RbxDesignFoundations.tokens[deviceType].Light,
		[Constants.ThemeName.Dark] = RbxDesignFoundations.tokens[deviceType].Dark,
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
	CommonPackage = {
		Validators = {
			Global = require(RbxDesignFoundations.tokens.Common.Validators.validateGlobal)(t),
			Semantic = require(RbxDesignFoundations.tokens.Common.Validators.validateSemantic)(t),
			Component = require(RbxDesignFoundations.tokens.Common.Validators.validateComponent)(t),
		},
		Types = {
			GlobalType = require(RbxDesignFoundations.tokens.Common.Types.GlobalType),
			SemanticType = require(RbxDesignFoundations.tokens.Common.Types.SemanticType),
			ComponentType = require(RbxDesignFoundations.tokens.Common.Types.ComponentType),
		},
	},
}
