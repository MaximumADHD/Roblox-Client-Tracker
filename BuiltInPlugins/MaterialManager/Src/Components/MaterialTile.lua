local Plugin = script.Parent.Parent.Parent
local _Types = require(Plugin.Src.Types)
local Roact = require(Plugin.Packages.Roact)
local Framework = require(Plugin.Packages.Framework)

local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext
local Analytics = ContextServices.Analytics
local Localization = ContextServices.Localization

local Stylizer = Framework.Style.Stylizer

local prioritize = Framework.Util.prioritize

local UI = Framework.UI
local Pane = UI.Pane
local TextLabel = UI.Decoration.TextLabel

local Components = Plugin.Src.Components
local MaterialPreview = require(Components.MaterialPreview)

export type Props = {
	Item : _Types.Material,
	LayoutOrder : number?,
	OnClick : () -> (),
	Padding : number?,
	SetUpdate : ((item : _Types.Material, layoutOrder : number?, property : string) -> ()),
	Size : UDim2?,
}

type _Props = Props & {
	Analytics : any,
	Localization : any, 
	Stylizer : any,
}

type _Style = {
	Padding : number,
	Size : UDim2,
	Spacing : number,
	TextSize : number,
}

local MaterialTile = Roact.PureComponent:extend("MaterialTile")

function MaterialTile:didMount()
	local props : _Props = self.props

	local item = props.Item
	local materialVariant = item.MaterialVariant

	self.connection = materialVariant.Changed:Connect(function(property)
		props.SetUpdate(props.Item, props.LayoutOrder, property)
	end)
end

function MaterialTile:willUnmount()
	self.connection:Disconnect()
end

function MaterialTile:render()
	local props : _Props = self.props
	local style : _Style = props.Stylizer.MaterialTile
	local localization = props.Localization

	local item = props.Item
	local materialVariant = item.MaterialVariant

	local colorMap = materialVariant.ColorMap
	local metalnessMap = materialVariant.MetalnessMap
	local name = materialVariant.Name
	local normalMap = materialVariant.NormalMap
	local roughnessMap = materialVariant.RoughnessMap
	local materialOrigin = if item.IsBase then "Material" else "Variant"
	local materialType = localization:getText("MaterialTile", item.MaterialType .. materialOrigin)

	local padding = prioritize(props.Padding, style.Padding)
	local size = prioritize(props.Size, style.Size)
	local spacing = style.Spacing
	local textSize = style.TextSize

	return Roact.createElement(Pane, {
		HorizontalAlignment = Enum.HorizontalAlignment.Left,
		LayoutOrder = props.LayoutOrder,
		Layout = Enum.FillDirection.Vertical,
		OnClick = props.OnClick,
		Padding = 10,
		Spacing = padding,
		Size = size,
		Style = "RoundBox",
	}, {
		MaterialPreview = Roact.createElement(MaterialPreview, {
			ColorMap = colorMap,
			LayoutOrder = 1,
			MetalnessMap = metalnessMap,
			NormalMap = normalMap,
			RoughnessMap = roughnessMap,
			Size = UDim2.new(size.X.Scale, size.X.Offset - (2 * padding), size.Y.Scale,  size.Y.Offset - (2 * padding) - (3 * spacing) - (2 * textSize)),
			Static = true,
		}),
		NameLabel = Roact.createElement(Pane, {
			AutomaticSize = Enum.AutomaticSize.XY,
			HorizontalAlignment = Enum.HorizontalAlignment.Left,
			Layout = Enum.FillDirection.Vertical,
			LayoutOrder = 2,
		}, {
			Name = Roact.createElement(TextLabel, {
				FitWidth = true,
				Text = name,
				TextSize = textSize,
				TextXAlignment = Enum.TextXAlignment.Left,
			})
		}),
		TypeLabel = Roact.createElement(Pane, {
			AutomaticSize = Enum.AutomaticSize.XY,
			HorizontalAlignment = Enum.HorizontalAlignment.Left,
			Layout = Enum.FillDirection.Vertical,
			LayoutOrder = 3,
		}, {
			Name = Roact.createElement(TextLabel, {
				FitWidth = true,
				Text = materialType,
				TextSize = textSize,
				TextXAlignment = Enum.TextXAlignment.Left,
			})
		})
	})
end

MaterialTile = withContext({
	Analytics = Analytics,
	Localization = Localization,
	Stylizer = Stylizer,
})(MaterialTile)

return MaterialTile
