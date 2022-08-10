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
local Pane = UI.Pane
local TextLabel = UI.TextLabel

export type Props = {
	ControlSize: UDim2,
	Control: any,
	LayoutOrder: number,
	Text: string,
}

type _Props = Props & {
	Analytics: any,
	Localization: any,
	Stylizer: any,
}

type _Style = {
	Size: UDim2,
	TextSize: UDim2,
}

local TagSettingRow = Roact.PureComponent:extend("TagSettingRow")

function TagSettingRow:init()
	self.OnButtonClicked = function()
		print("Click!")
	end
end

function TagSettingRow:render()
	local props: _Props = self.props
	local style: _Style = props.Stylizer.TagSettingRow

	local TextSize = UDim2.new(1, style.TextSize.X.Offset - props.ControlSize.X.Offset, 0, style.TextSize.Y.Offset)

	return Roact.createElement(Pane, {
		Size = style.Size,
		LayoutOrder = props.LayoutOrder,
		Layout = Enum.FillDirection.Horizontal,
		HorizontalAlignment = Enum.HorizontalAlignment.Right,
		Spacing = 10,
	}, {
		RowText = Roact.createElement(TextLabel, {
			Size = TextSize,
			LayoutOrder = 1,
			Text = props.Text,
			TextXAlignment = Enum.TextXAlignment.Left,
		}),
		ControlPane = Roact.createElement(Pane, {
			LayoutOrder = 2,
			Size = props.ControlSize,
		}, {
			Control = props.Control,
		}),
	})
end

TagSettingRow = withContext({
	Analytics = Analytics,
	Localization = Localization,
	Stylizer = Stylizer,
})(TagSettingRow)

return TagSettingRow
