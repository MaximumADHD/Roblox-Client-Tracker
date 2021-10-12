local FFlagDevFrameworkTextInput2 = game:GetFastFlag("DevFrameworkTextInput2")

local Framework = script.Parent.Parent.Parent

local StyleKey = require(Framework.Style.StyleKey)

local Util = require(Framework.Util)
local StyleModifier = Util.StyleModifier
local THEME_REFACTOR = Util.RefactorFlags.THEME_REFACTOR
local deepCopy = Util.deepCopy

local StudioFrameworkStyles = Framework.StudioUI.StudioFrameworkStyles
local Common = require(StudioFrameworkStyles.Common)

local UIFolderData = require(Framework.UI.UIFolderData)
local Pane = require(UIFolderData.Pane.style)

local Dash = require(Framework.packages.Dash)
local join = Dash.join

if not FFlagDevFrameworkTextInput2 then
	if THEME_REFACTOR then
		return {}
	else
		return function() end
	end
elseif THEME_REFACTOR then
	local common = deepCopy(Common)
	local pane = deepCopy(Pane)

	local box = pane["&Box"]
	local roundBox = pane["&RoundBox"]
	local borderBox = pane["&BorderBox"]

	local default = {
		BackgroundColor = StyleKey.InputFieldBackground,
		BorderColor = StyleKey.InputFieldBorder,
		BottomText = join(common.MainText, {
			TextXAlignment = Enum.TextXAlignment.Left,
			TextYAlignment = Enum.TextYAlignment.Top,
			TextColor = StyleKey.DimmedText,

			[StyleModifier.Error] = {
				TextColor = StyleKey.ErrorText,
			},
		}),
		BottomTextSpacing = 6,
		ExtraComponentSpacing = 8,
		Padding = {
			Left = 10,
			Right = 10,
		},
		PlaceholderTextColor = StyleKey.DimmedText,
		Size = UDim2.new(1, 0, 0, 32),
		TextXAlignment = Enum.TextXAlignment.Left,

		[StyleModifier.Disabled] = {
			BackgroundColor = StyleKey.InputFieldBackgroundDisabled,
			BorderColor = StyleKey.InputFieldBorderDisabled,
			TextColor = StyleKey.DimmedText,
		},
	}

	return join(default, {
		["&Box"] = box,
		["&BorderBox"] = join(borderBox, {
			 -- Add top and bottom padding to prevent full-height content
			 -- from covering the 1 pixel border image.
			Padding = {
				Left = 10,
				Top = 1,
				Right = 10,
				Bottom = 1,
			},
			[StyleModifier.Hover] = {
				BorderColor = StyleKey.InputFieldBorderHover,
			},
			[StyleModifier.Selected] = {
				BorderColor = StyleKey.InputFieldBorderSelected,
			},
			[StyleModifier.Error] = {
				BorderColor = StyleKey.ErrorText,
			},
		}),
		["&RoundBox"] = roundBox,
	})
else
	return function(theme, getColor)
		local common = Common(theme, getColor)
		return {
			Default = common.MainText,
		}
	end
end
