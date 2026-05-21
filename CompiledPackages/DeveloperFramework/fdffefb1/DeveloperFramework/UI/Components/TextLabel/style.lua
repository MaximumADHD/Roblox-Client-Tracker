local Framework = script:FindFirstAncestor("UI").Parent

local StyleKey = require(Framework.Style.StyleKey)
local StyleModifier = require(Framework.Util.StyleModifier)

return {
	Font = Enum.Font.SourceSans,
	[StyleModifier.Disabled] = {
		TextTransparency = 0.5,
	},
	["&Body"] = {
		TextSize = 14,
		TextColor = StyleKey.SubText,
	},
	["&Bold"] = {
		Font = Enum.Font.SourceSansBold,
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
	["&Label"] = {
		Font = Enum.Font.SourceSans,
		TextColor = StyleKey.SubText,
	},
	["&Selected"] = {
		TextColor = StyleKey.DialogMainButtonText,
	},
	["&Subtitle"] = {
		TextColor = StyleKey.SubText,
		TextSize = 22,
	},
	["&Title"] = {
		Font = Enum.Font.SourceSans,
		TextSize = 24,
		TextColor = StyleKey.TitlebarText,
	},
	["&Success"] = {
		TextColor = StyleKey.SuccessMain,
	},
	["&Error"] = {
		TextSize = 16,
		TextColor = StyleKey.ErrorText,
	},
	["&Warning"] = {
		TextSize = 16,
		TextColor = StyleKey.WarningText,
	},
}
