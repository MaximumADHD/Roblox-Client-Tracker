local Plugin = script.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local Framework = require(Plugin.Packages.Framework)

local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext
local Analytics = ContextServices.Analytics
local Localization = ContextServices.Localization

local Stylizer = Framework.Style.Stylizer

local UI = Framework.UI
local Button = UI.Button
local Pane = UI.Pane
local TextLabel = UI.Decoration.TextLabel

local Util = Framework.Util
local LayoutOrderIterator = Util.LayoutOrderIterator

export type Props = {
	LayoutOrder: number,
	TagName: string,
	Color: Color3,
	Close: (() -> ()),
	Save: (() -> ()),
}

type _Props = Props & {
	Analytics: any,
	Localization: any,
	Stylizer: any,
}

type _Style = {
		Size: UDim2,
		Spacing: number,
		TitleTextSize: UDim2,
		ButtonsPaneSize: UDim2,
		ButtonsPaneSpacing: number,
		ButtonsPanePadding: number,
		CancelButtonSize: UDim2,
		SubmitButtonSize: UDim2,
		ColorPaneSize: UDim2,
		ColorPaneSpacing: number,
		ColorPanePadding: number,
		ColorPreviewSize: UDim2,
		PreviewTitleSize: UDim2,
}

local ColorPickerTopControls = Roact.PureComponent:extend("ColorPickerTopControls")

function ColorPickerTopControls:render()
	local props: _Props = self.props
	local style: _Style = props.Stylizer.ColorPickerTopControls
	local localization = props.Localization
	local orderIterator = LayoutOrderIterator.new()

	return Roact.createElement(Pane, {
			LayoutOrder = props.LayoutOrder,
			Layout = Enum.FillDirection.Vertical,
			Size = style.Size,
			Spacing = style.Spacing,
		}, {
			TitleText = Roact.createElement(TextLabel, {
				Text = localization:getText("Info", "ColorPickerTitle") .. " " .. props.TagName,
				Size = style.TitleTextSize,
				LayoutOrder = orderIterator:getNextOrder(),
			}),
			Buttons = Roact.createElement(Pane, {
				LayoutOrder = orderIterator:getNextOrder(),
				Size = style.ButtonsPaneSize,
				Layout = Enum.FillDirection.Horizontal,
				HorizontalAlignment = Enum.HorizontalAlignment.Center,
				Spacing = style.ButtonsPaneSpacing,
				Padding = style.ButtonsPanePadding,
			}, {
				Cancel = Roact.createElement(Button, {
					Size = style.CancelButtonSize,
					Text = localization:getText("General", "Cancel"),
					OnClick = props.Close,
					LayoutOrder = 1,
					Style = "Round",
				}),
				Submit = Roact.createElement(Button, {
					Size = style.SubmitButtonSize,
					LayoutOrder = 2,
					Text = localization:getText("General", "Apply"),
					Style = "RoundPrimary",
					OnClick = props.Save,
				}),
			}),
			ColorPane = Roact.createElement(Pane, {
				LayoutOrder = orderIterator:getNextOrder(),
				Size = style.ColorPaneSize,
				Layout = Enum.FillDirection.Horizontal,
				Spacing = style.ColorPaneSpacing,
				Padding = style.ColorPanePadding,
			}, {
				TitleText = Roact.createElement(TextLabel, {
					TextXAlignment = Enum.TextXAlignment.Right,
					Text = localization:getText("Info", "SelectedColor"),
					Size = style.PreviewTitleSize,
					LayoutOrder = 1,
				}),
				Preview = Roact.createElement(Pane, {
					LayoutOrder = 2,
					Size = style.ColorPreviewSize,
					BackgroundColor = props.Color,
				}),
			}),
		})
end

ColorPickerTopControls = withContext({
	Analytics = Analytics,
	Localization = Localization,
	Stylizer = Stylizer,
})(ColorPickerTopControls)

return ColorPickerTopControls
