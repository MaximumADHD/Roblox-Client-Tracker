-- DO NOT Copy paste this into your own plugin, this is meant for Material Manager. If you want to use this, contact skuhne first

local Plugin = script.Parent.Parent.Parent.Parent.Parent
local _Types = require(Plugin.Src.Types)
local Roact = require(Plugin.Packages.Roact)
local Framework = require(Plugin.Packages.Framework)

local Stylizer = Framework.Style.Stylizer

local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext

local UI = Framework.UI
local Image = UI.Decoration.Image
local Pane = UI.Pane
local TruncatedTextLabel = UI.TruncatedTextLabel

export type Props = {
	Image: string,
	LayoutOrder: number?,
	Name: string,
}

type _Props = Props & {
	Stylizer: any,
}

type _Style = {
	LabelSize: UDim2,
	NoTexture: string,
	Padding: number,
	RowSize: UDim2,
	TextureSize: UDim2,
}

local LabeledTexture = Roact.PureComponent:extend("LabeledTexture")

function LabeledTexture:render()
	local props: _Props = self.props
	local style: _Style = props.Stylizer.LabeledTexture

	local name = props.Name
	local image = props.Image
	local layoutOrder = props.LayoutOrder

	return Roact.createElement(Pane, {
		Layout = Enum.FillDirection.Horizontal,
		LayoutOrder = layoutOrder,
		Size = style.RowSize,
		Spacing = style.Padding,
	}, {
		Image = Roact.createElement(Image, {
			LayoutOrder = 1,
			Size = style.TextureSize,
			Style = {
				Image = if image then image else style.NoTexture,
			}
		}),
		Label = Roact.createElement(TruncatedTextLabel, {
			LayoutOrder = 2,
			Size = style.LabelSize,
			Text = name,
			TextXAlignment = Enum.TextXAlignment.Left,
			TextYAlignment = Enum.TextYAlignment.Center,
		})
	})
end

return withContext({
	Stylizer = Stylizer,
})(LabeledTexture)
