local Tokens = script.Parent
local Style = Tokens.Parent
local Core = Style.Parent
local UIBlox = Core.Parent
local Packages = UIBlox.Parent
local t = require(Packages.t)
local RbxDesignFoundations = require(Packages.RbxDesignFoundations)
local Constants = require(Style.Constants)

return {
	TokenPackageIndexMap = {
		[Constants.DeviceType.Desktop] = {
			[Constants.ThemeName.Light] = RbxDesignFoundations.tokens.Desktop.Light,
			[Constants.ThemeName.Dark] = RbxDesignFoundations.tokens.Desktop.Dark,
		},
		[Constants.DeviceType.Console] = {
			[Constants.ThemeName.Light] = RbxDesignFoundations.tokens.Console.Light,
			[Constants.ThemeName.Dark] = RbxDesignFoundations.tokens.Console.Dark,
		},
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
