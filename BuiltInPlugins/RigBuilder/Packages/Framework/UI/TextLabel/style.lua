local Framework = script.Parent.Parent.Parent

local StyleKey = require(Framework.Style.StyleKey)
local Util = require(Framework.Util)
local Style = Util.Style
local THEME_REFACTOR = Util.RefactorFlags.THEME_REFACTOR

local StudioFrameworkStyles = Framework.StudioUI.StudioFrameworkStyles
local Common = require(StudioFrameworkStyles.Common)
local StyleModifier = Util.StyleModifier

local FFlagRemoveUILibraryPartialHyperlink = game:GetFastFlag("RemoveUILibraryPartialHyperlink")

if THEME_REFACTOR then
	return {
		[StyleModifier.Disabled] = {
			TextTransparency = 0.5,
		},
		["&Body"] = if FFlagRemoveUILibraryPartialHyperlink then {
			TextSize = 14,
			TextColor = StyleKey.SubText,
		} else nil,
		["&Bold"] = {
			Font = Enum.Font.SourceSansBold
		},
		["&Normal"] = {
			Font = Enum.Font.SourceSans,
			TextSize = 22,
			TextColor = StyleKey.MainText,
		},
		["&Semibold"] = {
			Font = Enum.Font.SourceSansSemibold,
			TextSize = 22,
			TextColor = StyleKey.MainText,
		},
		["&SubText"] = {
			Font = Enum.Font.SourceSans,
			TextSize = 16,
			TextColor = StyleKey.SubText,
		},
		["&Title"] = {
			Font = Enum.Font.SourceSans,
			TextSize = 24,
			TextColor = StyleKey.TitlebarText,
		},
	}
else
	return function(theme, getColor)
		local common = Common(theme, getColor)

		local Default = Style.extend(common.MainText, {
			[StyleModifier.Disabled] = {
				TextTransparency = 0.5,
			},
		})

		local Body = if FFlagRemoveUILibraryPartialHyperlink then Style.extend(Default, {
			TextSize = 14,
			TextColor = theme:GetColor("SubText"),
		}) else nil

		local Bold = Style.extend(Default, {
			Font = Enum.Font.SourceSansBold
		})

		local Normal = Style.extend(Default, {
			Font = Enum.Font.SourceSans,
			TextSize = 22,
			TextColor = theme:GetColor("MainText"),
		})

		local Semibold = Style.extend(Default, {
			Font = Enum.Font.SourceSansSemibold,
			TextSize = 22,
			TextColor = theme:GetColor("MainText"),
		})

		local SubText = Style.extend(Default, {
			Font = Enum.Font.SourceSans,
			TextSize = 16,
			TextColor = theme:GetColor("SubText"),
		})

		local Title = Style.extend(Default, {
			Font = Enum.Font.SourceSans,
			TextSize = 24,
			TextColor = theme:GetColor("TitlebarText"),
		})

		return {
			Title = Title,
			SubText = SubText,
			Semibold = Semibold,
			Normal = Normal,
			Bold = Bold,
			Body = Body,
			Default = Default,
		}
	end
end
