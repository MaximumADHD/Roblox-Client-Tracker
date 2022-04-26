local Framework = script.Parent.Parent.Parent

local FrameworkStyle = Framework.Style
local StyleKey = require(FrameworkStyle.StyleKey)

local Util = require(Framework.Util)
local THEME_REFACTOR = Util.RefactorFlags.THEME_REFACTOR
local StyleModifier = Util.StyleModifier
local deepCopy = Util.deepCopy

local StudioFrameworkStyles = Framework.StudioUI.StudioFrameworkStyles
local Common = require(StudioFrameworkStyles.Common)

local UIFolderData = require(Framework.UI.UIFolderData)
local Pane = require(UIFolderData.Pane.style)

local Dash = require(Framework.packages.Dash)
local join = Dash.join

if THEME_REFACTOR then
	local common = deepCopy(Common)
	local pane = deepCopy(Pane)

	local box = pane["&Box"]
	local roundBox = pane["&RoundBox"]
	local borderBox = pane["&BorderBox"]

	local default = {
		Content = {
			Padding = {
				Left = 18,
				Top = 10,
				Right = 18,
				Bottom = 10,
			},
			Spacing = 10,
		},
		Header = {
			Arrow = {
				Color = StyleKey.MainText,
				Image = "rbxasset://textures/StudioSharedUI/arrowSpritesheet.png",
				ImageRectOffset = Vector2.new(12, 0),
				ImageRectSize = Vector2.new(12, 12),
				Size = UDim2.fromOffset(12, 12),
				[StyleModifier.Selected] = {
					ImageRectOffset = Vector2.new(24, 0),
				},
			},
			HorizontalAlignment = Enum.HorizontalAlignment.Left,
			Padding = {
				Left = 10,
				Right = 10,
			},
			Size = UDim2.new(1, 0, 0, 32),
			Spacing = 6,
			Text = join(common.MainText, {
				Font = Enum.Font.SourceSansBold,
				TextColor = StyleKey.TitlebarText,
			}),
			VerticalAlignment = Enum.VerticalAlignment.Center,
		}
	}

	return join(default, {
		["&Box"] = box,
		["&BorderBox"] = borderBox,
		["&RoundBox"] = roundBox,
		["&Section"] = join(box, {
			Header = join(default.Header, {
				Background = StyleKey.Titlebar,
			}),
		}),
	})
else
	return function(theme, getColor)
		local common = Common(theme, getColor)
		return {
			Default = common.MainText,
		}
	end
end
