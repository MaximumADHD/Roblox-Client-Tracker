local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local Framework = require(Plugin.Packages.Framework)

local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext

local UI = Framework.UI
local StudioUI = Framework.StudioUI
local Pane = UI.Pane
local AssetRenderModel = StudioUI.AssetRenderModel

local Util = Plugin.Src.Util
local MaterialController = require(Util.MaterialController)
local getMaterialColor = require(Util.getMaterialColor)
local getMaterialName = require(Util.getMaterialName)
local getMaterialType = require(Util.getMaterialType)

local Flags = Plugin.Src.Flags
local getFFlagMaterialPack2022Update = require(Flags.getFFlagMaterialPack2022Update)
local getFFlagMaterialServiceOverrideChangedSignal = require(Flags.getFFlagMaterialServiceOverrideChangedSignal)

local InsertService = game:GetService("InsertService")
local materialModel = InsertService:LoadLocalAsset("rbxasset://models/MaterialManager/sphere_model.rbxm")

export type Props = {
	BackgroundColor : Color3?,
	ColorMap : string?,
	DisableZoom : boolean?,
	ForceSurfaceAppearance : boolean?,
	InitialDistance : number?,
	LayoutOrder : number?,
	Position : UDim2?,
	Material : Enum.Material?,
	MaterialVariant : string?,
	MetalnessMap : string?,
	NormalMap : string?,
	RoughnessMap : string?,
	Size : UDim2?,
	Static : boolean?,
}

type _Props = Props & {
	MaterialController : any,
}

local MaterialPreview = Roact.PureComponent:extend("MaterialPreview")

MaterialPreview.defaultProps = {
	InitialDistance = 6.3,
	Material = Enum.Material.Plastic,
}

function MaterialPreview:init()
	self.model = materialModel:Clone()
	self.model.MeshPart.SurfaceAppearance:Destroy()
end

function MaterialPreview:willUnmount()
	if self.materialOverrideChangedConnection then
		self.materialOverrideChangedConnection:Disconnect()
		self.materialOverrideChangedConnection = nil
	end

	if self.builtInMaterialsChangedConnection then
		self.builtInMaterialsChangedConnection:Disconnect()
		self.builtInMaterialsChangedConnection = nil
	end
end

function MaterialPreview:didMount()
	local props : _Props = self.props

	if getFFlagMaterialServiceOverrideChangedSignal() and not props.MaterialVariant and props.Material then
		self.materialOverrideChangedConnection = props.MaterialController:getMaterialOverrideChangedSignal(props.Material):Connect(function()
			self:setState({})
		end)

		if getFFlagMaterialPack2022Update() then
			-- When 2022 materials are triggered, all builtin previews need to be updated
			self.builtInMaterialsChangedConnection = props.MaterialController:getBuiltInMaterialsChangedSignal():Connect(function()
				self.builtinMaterialsChanged = true
				self:setState({})
			end)
		end
	end

	self.materialOverride = self.props.MaterialController:getMaterialOverride(self.props.Material)
end

function MaterialPreview:willUpdate(prevProps : _Props)
	local props : _Props = self.props
	local materialOverride = props.MaterialController:getMaterialOverride(props.Material)

	self.updateView = prevProps.MaterialVariant ~= props.MaterialVariant
		or prevProps.Material ~= props.Material
		or self.materialOverride ~= materialOverride
		or self.builtinMaterialsChanged
		or self.overrideChanged

	-- Only trigger rerender based on 2022 materials once
	self.builtinMaterialsChanged = false
	self.overrideChanged = false
	self.materialOverride = self.props.MaterialController:getMaterialOverride(self.props.Material)
end

function MaterialPreview:didUpdate()
	local props : _Props = self.props

	if getFFlagMaterialServiceOverrideChangedSignal() and not props.MaterialVariant and props.Material then
		if self.materialOverrideChangedConnection then
			self.materialOverrideChangedConnection:Disconnect()
			self.materialOverrideChangedConnection = nil
		end
		self.materialOverrideChangedConnection = props.MaterialController:getMaterialOverrideChangedSignal(props.Material):Connect(function()
			self.overrideChanged = true
			self:setState({})
		end)
	elseif self.materialOverrideChangedConnection then
		self.materialOverrideChangedConnection:Disconnect()
		self.materialOverrideChangedConnection = nil
	end
end

function MaterialPreview:render()
	local props : _Props = self.props

	local colorMap = props.ColorMap
	local forceSurfaceAppearance = props.ForceSurfaceAppearance
	local material = props.Material
	local materialController = props.MaterialController
	local materialVariant = props.MaterialVariant
	local metalnessMap = props.MetalnessMap
	local normalMap = props.NormalMap
	local roughnessMap = props.RoughnessMap

	local isTerrain = getMaterialType(material) == "Terrain"
	local isNotTerrain = not isTerrain
	local uses2022Materials = props.MaterialController:getUses2022Materials()

	if isTerrain and not uses2022Materials then
		local override = materialController:getMaterialOverride(material)
		local materialVariantOverride = materialController:getMaterialVariant(material, override)

		if materialVariantOverride then
			colorMap = materialVariantOverride.ColorMap
			metalnessMap = materialVariantOverride.MetalnessMap
			normalMap = materialVariantOverride.NormalMap
			roughnessMap = materialVariantOverride.RoughnessMap
		end
	end


	if (uses2022Materials or isNotTerrain) and not forceSurfaceAppearance then
		-- If a re-render has been triggered, the model needs to be regenerated
		if self.updateView then
			self.model = materialModel:Clone()
			self.model.MeshPart.SurfaceAppearance:Destroy()
		end

		if materialVariant then
			self.model.MeshPart.MaterialVariant = materialVariant
		else
			local override = materialController:getMaterialOverride(material)

			if override == "" or (override == getMaterialName(material) and not materialController:getMaterialVariant(material, override)) then
				self.model.MeshPart.Color = getMaterialColor(material, uses2022Materials) or Color3.new(163, 162, 165)
			end
		end

		self.model.MeshPart.Material = material
		self.updateView = false
	else
		self.model = materialModel:Clone()
		local surfaceAppearance = self.model.MeshPart.SurfaceAppearance

		if colorMap then
			surfaceAppearance.ColorMap = colorMap
		end

		if metalnessMap then
			surfaceAppearance.MetalnessMap = metalnessMap
		end

		if normalMap then
			surfaceAppearance.NormalMap = normalMap
		end

		if roughnessMap then
			surfaceAppearance.RoughnessMap = roughnessMap
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
	MaterialController = MaterialController,
})(MaterialPreview)

return MaterialPreview
