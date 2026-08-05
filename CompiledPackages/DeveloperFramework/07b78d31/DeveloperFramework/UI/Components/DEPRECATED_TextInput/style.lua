local Framework = script:FindFirstAncestor("UI").Parent

local StyleKey = require(Framework.Style.StyleKey)

local Util = require(Framework.Util)
local Cryo = require(Framework.Parent.Cryo)
local deepCopy = Util.deepCopy
local StyleModifier = require(Framework.Util.StyleModifier)

local UIFolderData = require(Framework.UI.Components.UIFolderData)
local RoundBox = require(UIFolderData.RoundBox.style)

local roundedBorderPadding = {
	Left = 10,
	Top = 5,
	Right = 10,
	Bottom = 5,
}

local rectBorderPadding = {
	Left = 1,
	Top = 0,
	Right = 0,
	Bottom = 0,
}

local roundBox = deepCopy(RoundBox)
return {
	PlaceholderTextColor = StyleKey.DimmedText,
	useRoundBox = false,
	Padding = rectBorderPadding,

	["&RoundedBorder"] = {
		useRoundBox = true,
		Padding = roundedBorderPadding,
		BackgroundStyle = RoundBox,
		[StyleModifier.Hover] = {
			BackgroundStyle = Cryo.Dictionary.join(roundBox, {
				BorderColor = StyleKey.DialogMainButton,
			}),
		},
	},

	["&FilledRoundedBorder"] = {
		useRoundBox = true,
		Padding = roundedBorderPadding,
		BackgroundStyle = Cryo.Dictionary.join(roundBox, {
			Color = StyleKey.InputFieldBackground,
		}),
		[StyleModifier.Selected] = {
			BackgroundStyle = Cryo.Dictionary.join(roundBox, {
				Color = StyleKey.InputFieldBackground,
				BorderColor = StyleKey.DialogMainButton,
			}),
		},
	},

	["&FilledRoundedRedBorder"] = {
		useRoundBox = true,
		Padding = roundedBorderPadding,
		BackgroundStyle = Cryo.Dictionary.join(roundBox, {
			Color = StyleKey.InputFieldBackground,
			BorderColor = StyleKey.ErrorText,
		}),
	},
}
