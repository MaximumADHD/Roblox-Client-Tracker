local FFlagToolboxUseDevFrameworkDialogs = game:GetFastFlag("ToolboxUseDevFrameworkDialogs")
local FFlagToolboxReplaceUILibraryComponentsPt1 = game:GetFastFlag("ToolboxReplaceUILibraryComponentsPt1")

local Plugin = script.Parent.Parent.Parent

local Libs = Plugin.Libs

local UILibrary = require(Libs.UILibrary)
local createTheme = UILibrary.createTheme
local StudioStyle = UILibrary.Studio.Style

local Framework = require(Libs.Framework)
local ContextServices = Framework.ContextServices

local Stylizer = ContextServices.Stylizer

local Util = Plugin.Core.Util
local Colors = require(Util.Colors)
local isCli = require(Util.isCli)
local TestHelpers = require(Util.Test.TestHelpers)

local FrameworkStyle = Framework.Style
local StudioTheme = FrameworkStyle.Themes.StudioTheme
local StyleKey = FrameworkStyle.StyleKey
local DarkTheme = require(Libs.Framework).Style.Themes.DarkTheme
local LightTheme = require(Libs.Framework).Style.Themes.LightTheme

local Cryo = require(Plugin.Libs.Cryo)

local function getUILibraryTheme(styleRoot, overrides)
	local theme = settings().Studio.Theme

	local styleGuide = StudioStyle.new(function(...)
		return theme:GetColor(...)
	end, Enum.StudioStyleGuideColor, Enum.StudioStyleGuideModifier)

	local styleKeysTable = Stylizer:getStyleKeysTable(styleRoot)
	overrides = Stylizer:convertStyleKeys(overrides or {}, nil, nil, styleKeysTable)

	return createTheme(styleGuide, overrides)
end

local makeTheme = function(uiLibraryDeprecatedTheme)
	local styleRoot
	if FFlagToolboxReplaceUILibraryComponentsPt1 then
		local overridedDarkTheme = Cryo.Dictionary.join(DarkTheme, {
			[StyleKey.HorizontalLineColor] = Color3.fromRGB(34, 34, 34),
			[StyleKey.TipsTextColor] = Color3.fromRGB(102, 102, 102),
		})
		local overridedLightTheme = Cryo.Dictionary.join(LightTheme, {
			[StyleKey.HorizontalLineColor] = Color3.fromRGB(227, 227, 227),
			[StyleKey.TipsTextColor] = Colors.GRAY_3,
		})

		if isCli() then
			styleRoot = StudioTheme.mock(overridedDarkTheme, overridedLightTheme)
		else
			styleRoot = StudioTheme.new(overridedDarkTheme, overridedLightTheme)
		end
	else
		if isCli() then
			styleRoot = StudioTheme.mock()
		else
			styleRoot = StudioTheme.new()
		end
	end

	styleRoot:extend({
		-- TODO: Move colors from ToolboxTheme to here
		backgroundColor = StyleKey.InputFieldBackground,
		progressBarColor = Colors.BLUE_PRIMARY,
		horizontalLineColor = FFlagToolboxReplaceUILibraryComponentsPt1 and StyleKey.HorizontalLineColor or nil,
		link = FFlagToolboxReplaceUILibraryComponentsPt1 and StyleKey.LinkText or nil,

		purchaseDialog = FFlagToolboxUseDevFrameworkDialogs and {
			promptText = StyleKey.MainText,
			balanceText = StyleKey.DimmedText,
		} or nil,

		assetConfig = FFlagToolboxReplaceUILibraryComponentsPt1 and {
			labelTextColor = StyleKey.DimmedText,
		} or nil,

		publishAsset = FFlagToolboxReplaceUILibraryComponentsPt1 and {
			titleTextColor = StyleKey.SubText,
			textColor = StyleKey.MainText,
			tipsTextColor = not isCli() and StyleKey.TipsTextColor or nil,
		} or nil,
	})

	if isCli() then
		function styleRoot:getUILibraryTheme()
			local styleGuide = StudioStyle.new(
				function(...)
					return Color3.new()
				end,
				TestHelpers.createMockStudioStyleGuideColor(), 
				TestHelpers.createMockStudioStyleGuideModifier()
			)

			return createTheme(styleGuide, {})
		end
	else
		function styleRoot:getUILibraryTheme()
			return getUILibraryTheme(styleRoot, uiLibraryDeprecatedTheme)
		end
	end

	return styleRoot
end

return makeTheme