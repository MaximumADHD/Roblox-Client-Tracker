local Plugin = script.Parent.Parent.Parent.Parent.Parent
local _Types = require(Plugin.Src.Types)
local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)
local Framework = require(Plugin.Packages.Framework)

local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext
local Analytics = ContextServices.Analytics
local Localization = ContextServices.Localization

local Stylizer = Framework.Style.Stylizer

local UI = Framework.UI
local Button = UI.Button
local Image = UI.Decoration.Image
local Pane = UI.Pane

local Actions = Plugin.Src.Actions
local ClearMaterial = require(Actions.ClearMaterial)

local Util = Plugin.Src.Util
local MaterialController = require(Util.MaterialController)

local Components = Plugin.Src.Components
local MaterialPreview = require(Components.DEPRECATED_MaterialPreview)

local Flags = Plugin.Src.Flags
local getFFlagMaterialManagerGlassNeonForceField = require(Flags.getFFlagMaterialManagerGlassNeonForceField)
local getFFlagMaterialManagerHideDetails = require(Flags.getFFlagMaterialManagerHideDetails)

export type Props = {
	LayoutOrder: number?,
	MockMaterial: _Types.Material?,
}

type _Props = Props & { 
	Analytics: any,
	dispatchClearMaterial: () -> (),
	Localization: any,
	Material: _Types.Material?,
	MaterialController: any,
	Stylizer: any,
}

type _Style = {
	ButtonPosition: UDim2,
	ButtonSize: UDim2,
	ButtonStyle: string,
	Close: _Types.Image,
	CreateVariant: _Types.Image,
	Delete: _Types.Image,
	DropdownSize: UDim2,
	Edit: _Types.Image,
	HeaderBackground: Color3,
	HeaderFont: Enum.Font,
	HeaderSize: UDim2,
	ImagePosition: UDim2,
	ImageSize: UDim2,
	NameLabelSizeBuiltIn: UDim2,
	NameLabelSizeVariant: UDim2,
	NoTexture: string,
	LabelRowSize: UDim2,
	OverrideSize: UDim2,
	Padding: number,
	SectionHeaderTextSize: number,
	TextureLabelSize: UDim2,
	TextureRowSize: UDim2,
	TextureSize: UDim2,
	TitleTextSize: number,
}

local MaterialHeader = Roact.PureComponent:extend("MaterialHeader")

function MaterialHeader:init()
	-- Remove with FFlagMaterialManagerHideDetails
	self.onClose = function()
		local props: _Props = self.props

		props.dispatchClearMaterial()
	end
end

function MaterialHeader:willUnmount()
	if self.connection then
		self.connection:Disconnect()
		self.connection = nil
	end
end

function MaterialHeader:didMount()
	local props: _Props = self.props

	self.connection = props.MaterialController:getMaterialChangedSignal():Connect(function(materialVariant)
		if self.props.Material and materialVariant == self.props.Material.MaterialVariant then
			self:setState({})
		end
	end)
end

function MaterialHeader:render()
	local props: _Props = self.props
	local style = props.Stylizer.MaterialDetails
	local material = props.Material

	if not material then
		return Roact.createElement(Pane)
	end

	local materialVariant = material.MaterialVariant

	-- Move this back to the component and remove with FFlagMaterialManagerGlassNeonForceField
	local isBuiltin
	if getFFlagMaterialManagerGlassNeonForceField() then
		isBuiltin = not materialVariant
	else
		isBuiltin = material.IsBuiltin
	end

	return Roact.createElement(Pane, {
		LayoutOrder = props.LayoutOrder,
		Size = style.HeaderSize,
	}, {
		Preview = Roact.createElement(MaterialPreview, {
			BackgroundColor = style.HeaderBackground,
			DisableZoom = true,
			LayoutOrder = 1,
			Material = if getFFlagMaterialManagerGlassNeonForceField() then material.Material else materialVariant.BaseMaterial,
			MaterialVariant = if not isBuiltin then materialVariant.Name else nil,
			Position = UDim2.fromOffset(0, 0),
			Size = style.MaterialPreviewSize,
		}),
		Close = if not getFFlagMaterialManagerHideDetails() then
			Roact.createElement(Button, {
				OnClick = self.onClose,
				Position = style.ButtonPosition,
				Size = style.ButtonSize,
				Style = style.ButtonStyle,
				ZIndex = 2,
			}, {
				Image = Roact.createElement(Image, {
					Style = style.Close,
					Size = style.ImageSize,
					Position = style.ImagePosition,
				})
			}) else nil
	})
end

MaterialHeader = withContext({
	Analytics = Analytics,
	Localization = Localization,
	MaterialController = MaterialController,
	Stylizer = Stylizer,
})(MaterialHeader)

return RoactRodux.connect(
	function(state, props)
		return {
			Material = props.MockMaterial or state.MaterialBrowserReducer.Material,
		}
	end,
	function(dispatch)
		return {
			-- Remove with FFlagMaterialManagerHideDetails
			dispatchClearMaterial = function()
				dispatch(ClearMaterial())
			end,
		}
	end
)(MaterialHeader)
