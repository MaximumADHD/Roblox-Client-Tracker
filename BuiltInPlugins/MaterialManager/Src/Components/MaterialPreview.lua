local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)
local Framework = require(Plugin.Packages.Framework)
local _Types = require(Plugin.Src.Types)

local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext

local UI = Framework.UI
local StudioUI = Framework.StudioUI
local Pane = UI.Pane
local AssetRenderModel = StudioUI.AssetRenderModel

local MainReducer = require(Plugin.Src.Reducers.MainReducer)

local Util = Plugin.Src.Util
local GeneralServiceController = require(Util.GeneralServiceController)
local MaterialServiceController = require(Util.MaterialServiceController)

local Constants = Plugin.Src.Resources.Constants
local getMaterialColor = require(Constants.getMaterialColor)

export type Props = {
	BackgroundColor: Color3?,
	DisableZoom: boolean?,
	InitialDistance: number?,
	LayoutOrder: number?,
	Position: UDim2?,
	Material: Enum.Material,
	MaterialVariant: string?,
	Size: UDim2?,
	Static: boolean?,
}

type _Props = Props & {
	GeneralServiceController: any,
	MaterialOverride: number,
	MaterialOverrides: _Types.Array<_Types.Material>,
	MaterialServiceController: any,
	MaterialWrapper: _Types.Material?,
	Use2022Materials: boolean,
}

local MaterialPreview = Roact.Component:extend("MaterialPreview")

MaterialPreview.defaultProps = {
	InitialDistance = 6.3,
	Material = Enum.Material.Plastic,
}

function MaterialPreview:shouldUpdate(prevProps: _Props)
	if prevProps.MaterialWrapper ~= self.props.MaterialWrapper or
		prevProps.MaterialOverride ~= self.props.MaterialOverride or
		prevProps.MaterialOverrides ~= self.props.MaterialOverrides or
		prevProps.Use2022Materials ~= self.props.Use2022Materials then
		return true
	else
		return false
	end
end

function MaterialPreview:render()
	local props: _Props = self.props
	local materialWrapper = props.MaterialWrapper

	if not materialWrapper then
		return Roact.createElement(Pane, {
			BackgroundColor = props.BackgroundColor,
			Position = props.Position,
			Size = props.Size,
			LayoutOrder = props.LayoutOrder,
		})
	end

	local materialVariant = if materialWrapper.MaterialVariant then materialWrapper.MaterialVariant.Name else nil
	local material = materialWrapper.Material

	if not self.materialModel then
		self.materialModel = props.GeneralServiceController:LoadLocalAsset("rbxasset://models/MaterialManager/material_model.rbxm")
	end
	self.model = self.materialModel:Clone()
	self.model.MeshPart.Material = material

	if materialVariant then
		self.model.MeshPart.MaterialVariant = materialVariant
	elseif props.MaterialOverrides and props.MaterialOverride then
		if props.MaterialServiceController:hasDefaultMaterial(material, props.MaterialOverrides[props.MaterialOverride]) then
			self.model.MeshPart.Color = getMaterialColor(material, props.Use2022Materials) or Color3.fromRGB(163, 162, 165)
		end
	end

	return Roact.createElement(Pane, {
		BackgroundColor = props.BackgroundColor,
		Position = props.Position,
		Size = props.Size,
		LayoutOrder = props.LayoutOrder,
	}, {
		AssetRenderModel = Roact.createElement(AssetRenderModel, {
			DisablePan = true,
			DisableZoom = props.DisableZoom,
			Size = UDim2.fromScale(1, 1),
			Model = self.model,
			Static = props.Static,
			InitialDistance = props.InitialDistance,
		})
	})
end

MaterialPreview = withContext({
	MaterialServiceController = MaterialServiceController,
	GeneralServiceController = GeneralServiceController,
})(MaterialPreview)

return RoactRodux.connect(
	function(state: MainReducer.State, props: Props)
		return {
			MaterialWrapper = if props.MaterialVariant then
				state.MaterialBrowserReducer.Materials[props.MaterialVariant]
				else
				state.MaterialBrowserReducer.Materials[props.Material],
			MaterialOverride = if not props.MaterialVariant then
				state.MaterialBrowserReducer.MaterialOverride[props.Material]
				else
				nil,
			MaterialOverrides = if not props.MaterialVariant then
				state.MaterialBrowserReducer.MaterialOverrides[props.Material]
				else
				nil,
			Use2022Materials = state.MaterialBrowserReducer.Use2022Materials,
		}
	end,
	function(dispatch)
		return {}
	end
)(MaterialPreview)
