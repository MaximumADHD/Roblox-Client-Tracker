local FFlagDevFrameworkExpandablePane = game:GetFastFlag("DevFrameworkExpandablePane")

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

if not FFlagDevFrameworkExpandablePane then
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
		Arrow = {
			AnchorPoint = Vector2.new(0, 0.5),
			Color = StyleKey.DimmedText,
			Image = "rbxasset://textures/DeveloperFramework/button_arrow_right.png",
			Position = UDim2.fromScale(0, 0.5),
			Size = UDim2.fromOffset(12, 12),

			[StyleModifier.Selected] = {
				Image = "rbxasset://textures/DeveloperFramework/button_arrow_down.png",
			},
		},
		ContentPadding = {
			Left = 18,
			Top = 10,
		},
		ContentSpacing = 10,
		Padding = 10,
		Title = join(common.MainText, {
			Color = StyleKey.MainText,
			Font = Enum.Font.SourceSansBold,
			TextXAlignment = Enum.TextXAlignment.Left,
		}),
		TitleOffset = 18,
	}

	return join(default, {
		["&Box"] = box,
		["&BorderBox"] = borderBox,
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
