local Plugin = script.Parent.Parent.Parent
local Libs = Plugin.Libs
local Util = require(Libs.Framework.Util)

local FlagsList = Util.Flags.new({
	FFlagRefactorDevFrameworkTheme = {"RefactorDevFrameworkTheme"},
	FFlagToolboxUseDevFrameworkAssetPreview = {"ToolboxUseDevFrameworkAssetPreview", "DevFrameworkLocalizationLibraries"},
})

return FlagsList