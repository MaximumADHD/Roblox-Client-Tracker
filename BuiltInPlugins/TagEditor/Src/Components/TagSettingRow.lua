--[[
	A row representing one setting for a tag within the tag settings pane
]]

local Plugin = script.Parent.Parent.Parent
local _Types = require(Plugin.Src.Types)
local Roact = require(Plugin.Packages.Roact)
local Framework = require(Plugin.Packages.Framework)

local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext
local Analytics = ContextServices.Analytics
local Localization = ContextServices.Localization

local Stylizer = Framework.Style.Stylizer

local UI = Framework.UI
local HoverArea = UI.HoverArea
local Pane = UI.Pane
local TextLabel = UI.TextLabel
local Tooltip = UI.Tooltip

local Util = Framework.Util
local LayoutOrderIterator = Util.LayoutOrderIterator

export type Props = {
	ControlSize: UDim2,
	Control: any,
	LayoutOrder: number,
	Text: string,
	TooltipText: string?,
	OnClick: (() -> ())?,
}

type _Props = Props & {
	Analytics: any,
	Localization: any,
	Stylizer: any,
}

type _Style = {
	Size: UDim2,
	TextSize: UDim2,
	Spacing: number,
}

local TagSettingRow = Roact.PureComponent:extend("TagSettingRow")

function TagSettingRow:init()
	self.state = {
		hovered = false,
	}
end

function TagSettingRow:render()
	local props: _Props = self.props
	local style: _Style = props.Stylizer.TagSettingRow
	local orderIterator = LayoutOrderIterator.new()

	local TextSize = UDim2.new(1, style.TextSize.X.Offset - props.ControlSize.X.Offset, 0, style.TextSize.Y.Offset)

	return Roact.createElement(Pane, {
		Size = style.Size,
		LayoutOrder = props.LayoutOrder,
	}, {
		Roact.createElement(Pane, {
			Size = style.Size,
			Layout = Enum.FillDirection.Horizontal,
			HorizontalAlignment = Enum.HorizontalAlignment.Center,
			Spacing = style.Spacing,
			OnClick = props.OnClick,
		}, {
			RowText = Roact.createElement(TextLabel, {
				Size = TextSize,
				Style = if self.state.hovered then "ButtonTextHover" else "ButtonText",
				LayoutOrder = orderIterator:getNextOrder(),
				Text = props.Text,
				TextXAlignment = Enum.TextXAlignment.Left,
				RichText = true,
			}, {
				Tooltip = Roact.createElement(Tooltip, {
					Text = props.TooltipText,
					Priority = 1,
				})
			}),
			ControlPane = Roact.createElement(Pane, {
				LayoutOrder = orderIterator:getNextOrder(),
				Size = props.ControlSize,
			}, {
				Control = props.Control and Roact.createElement(props.Control),
			}),
		}),
		Roact.createElement(HoverArea, {
			Cursor = if props.OnClick ~= nil then "PointingHand" else "Arrow",
			MouseEnter = function()
				self:setState({
					hovered = true,
				})
			end,
			MouseLeave = function()
				self:setState({
					hovered = false,
				})
			end,
		}),
	})
end

TagSettingRow = withContext({
	Analytics = Analytics,
	Localization = Localization,
	Stylizer = Stylizer,
})(TagSettingRow)

return TagSettingRow
