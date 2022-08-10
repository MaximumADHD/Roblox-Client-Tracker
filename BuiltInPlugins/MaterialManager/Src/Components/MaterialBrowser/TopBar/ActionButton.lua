local Plugin = script.Parent.Parent.Parent.Parent.Parent
local _Types = require(Plugin.Src.Types)
local Roact = require(Plugin.Packages.Roact)
local Framework = require(Plugin.Packages.Framework)

local FrameworkUtil = Framework.Util
local StyleModifier = FrameworkUtil.StyleModifier

local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext

local Stylizer = Framework.Style.Stylizer

local UI = Framework.UI
local Button = UI.Button
local Image = UI.Decoration.Image
local Tooltip = UI.Tooltip

local ActionButton = Roact.PureComponent:extend("ActionButton")

export type Props = {
	ImageStyle: _Types.Image,
	IsDisabled: boolean?,
	IsPressed: boolean?,
	LayoutOrder: number?,
	OnClick: (() -> ()),
	TooltipText: string,
}

type _Props = Props & {
	Stylizer: any,
}

type _Style = {
	ButtonSize: UDim2,
}

function ActionButton:render()
	local props: _Props = self.props
	local style: _Style = props.Stylizer.ActionButton

	local buttonSize = style.ButtonSize
	local styleModifier
	if props.IsDisabled then
		styleModifier = StyleModifier.Disabled
	elseif props.IsPressed then
		styleModifier = StyleModifier.Pressed
	end

	return Roact.createElement(Button, {
		LayoutOrder = props.LayoutOrder,
		OnClick = props.OnClick,
		Size = buttonSize,
		Style = "Round",
		StyleModifier = styleModifier,
	}, {
		Image = Roact.createElement(Image, {
			Style = props.ImageStyle,
			StyleModifier = styleModifier,
		}),
		Tooltip = Roact.createElement(Tooltip, {
			Text = props.TooltipText
		}),
	})
end

return withContext({
	Stylizer = Stylizer,
})(ActionButton)
