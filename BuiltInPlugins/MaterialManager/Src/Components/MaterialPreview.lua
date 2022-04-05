local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local Framework = require(Plugin.Packages.Framework)

local UI = Framework.UI
local StudioUI = Framework.StudioUI
local Pane = UI.Pane
local AssetRenderModel = StudioUI.AssetRenderModel

local InsertService = game:GetService("InsertService")
local materialModel = InsertService:LoadLocalAsset("rbxasset://models/MaterialManager/sphere_model.rbxm")

export type Props = {
	BackgroundColor : Color3?,
	ColorMap : string?,
	DisableZoom : boolean?,
	InitialDistance : number?,
	LayoutOrder : number?,
	Position : UDim2?,
	MetalnessMap : string?,
	NormalMap : string?,
	RoughnessMap : string?,
	Size : UDim2?,
	Static : boolean?,
}

type _Props = Props & {
	Analytics: any,
	Localization: any,
	Stylizer: any,
}

local MaterialPreview = Roact.PureComponent:extend("MaterialPreview")

MaterialPreview.defaultProps = {
	InitialDistance = 6.3,
}

function MaterialPreview:render()
	local props : _Props = self.props

	local model = materialModel:Clone()
	local surfaceAppearance = model.MeshPart.SurfaceAppearance

	if props.ColorMap then
		surfaceAppearance.ColorMap = props.ColorMap
	end

	if props.MetalnessMap then
		surfaceAppearance.MetalnessMap = props.MetalnessMap
	end

	if props.NormalMap then
		surfaceAppearance.NormalMap = props.NormalMap
	end

	if props.RoughnessMap then
		surfaceAppearance.RoughnessMap = props.RoughnessMap
	end

	return Roact.createElement(Pane, {
		BackgroundColor = props.BackgroundColor,
		Position = props.Position,
		Size = props.Size,
		LayoutOrder = props.LayoutOrder,
	}, {
		AssetRenderModel = Roact.createElement(AssetRenderModel, {
			DisableZoom = props.DisableZoom,
			Size = UDim2.fromScale(1, 1),
			Model = model,
			Static = props.Static,
			InitialDistance = props.InitialDistance,
		})
	})
end

return MaterialPreview
