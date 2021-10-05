local FFlagRemoveUILibraryDetailedDropdown = game:GetFastFlag("RemoveUILibraryDetailedDropdown")
local FFlagFixDevFrameworkTextLabelTextColor = game:DefineFastFlag("FixDevFrameworkTextLabelTextColor", false)

local Framework = script.Parent.Parent.Parent

local StyleKey = require(Framework.Style.StyleKey)
local Util = require(Framework.Util)
local Style = Util.Style
local THEME_REFACTOR = Util.RefactorFlags.THEME_REFACTOR

local StudioFrameworkStyles = Framework.StudioUI.StudioFrameworkStyles
local Common = require(StudioFrameworkStyles.Common)
local StyleModifier = Util.StyleModifier

if THEME_REFACTOR then
	return {
		[StyleModifier.Disabled] = {
			TextTransparency = 0.5,
		},
		["&Bold"] = {
			Font = Enum.Font.SourceSansBold
		},
		["&Normal"] = {
			Font = Enum.Font.SourceSans,
			TextSize = 22,
			TextColor = FFlagFixDevFrameworkTextLabelTextColor and StyleKey.MainText or nil,
			TextColor3 = not FFlagFixDevFrameworkTextLabelTextColor and StyleKey.MainText or nil,
		},
		["&Semibold"] = {
			Font = Enum.Font.SourceSansSemibold,
			TextSize = 22,
			TextColor = FFlagFixDevFrameworkTextLabelTextColor and StyleKey.MainText or nil,
			TextColor3 = not FFlagFixDevFrameworkTextLabelTextColor and StyleKey.MainText or nil,
		},
		["&SubText"] = FFlagRemoveUILibraryDetailedDropdown and {
			Font = Enum.Font.SourceSans,
			TextSize = 16,
			TextColor = FFlagFixDevFrameworkTextLabelTextColor and StyleKey.SubText or nil,
			TextColor3 = not FFlagFixDevFrameworkTextLabelTextColor and StyleKey.SubText or nil,
		} or nil,
		["&Title"] = {
			Font = Enum.Font.SourceSans,
			TextSize = 24,
			TextColor = FFlagFixDevFrameworkTextLabelTextColor and StyleKey.TitlebarText or nil,
			TextColor3 = not FFlagFixDevFrameworkTextLabelTextColor and StyleKey.TitlebarText or nil,
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

		local Bold = Style.extend(Default, {
			Font = Enum.Font.SourceSansBold
		})

		local Normal = Style.extend(Default, {
			Font = Enum.Font.SourceSans,
			TextSize = 22,
			TextColor = FFlagFixDevFrameworkTextLabelTextColor and theme:GetColor("MainText") or nil,
			TextColor3 = not FFlagFixDevFrameworkTextLabelTextColor and theme:GetColor("MainText") or nil,
		})

		local Semibold = Style.extend(Default, {
			Font = Enum.Font.SourceSansSemibold,
			TextSize = 22,
			TextColor = FFlagFixDevFrameworkTextLabelTextColor and theme:GetColor("MainText") or nil,
			TextColor3 = not FFlagFixDevFrameworkTextLabelTextColor and theme:GetColor("MainText") or nil,
		})

		local SubText = FFlagRemoveUILibraryDetailedDropdown and Style.extend(Default, {
			Font = Enum.Font.SourceSans,
			TextSize = 16,
			TextColor = FFlagFixDevFrameworkTextLabelTextColor and theme:GetColor("SubText") or nil,
			TextColor3 = not FFlagFixDevFrameworkTextLabelTextColor and theme:GetColor("SubText") or nil,
		}) or nil

		local Title = Style.extend(Default, {
			Font = Enum.Font.SourceSans,
			TextSize = 24,
			TextColor = FFlagFixDevFrameworkTextLabelTextColor and theme:GetColor("TitlebarText") or nil,
			TextColor3 = not FFlagFixDevFrameworkTextLabelTextColor and theme:GetColor("TitlebarText") or nil,
		})

		return {
			Title = Title,
			SubText = SubText,
			Semibold = Semibold,
			Normal = Normal,
			Bold = Bold,
			Default = Default,
		}
	end
end
