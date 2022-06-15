local Plugin = script.Parent.Parent.Parent.Parent
local _Types = require(Plugin.Src.Types)
local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)
local Framework = require(Plugin.Packages.Framework)

local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext
local Analytics = ContextServices.Analytics
local Localization = ContextServices.Localization

local LayoutOrderIterator = Framework.Util.LayoutOrderIterator

local Stylizer = Framework.Style.Stylizer

local UI = Framework.UI
local Pane = UI.Pane
local ScrollingFrame = UI.ScrollingFrame

local Actions = Plugin.Src.Actions
local ClearMaterial = require(Actions.ClearMaterial)

local MaterialDetailsComponents = Plugin.Src.Components.MaterialBrowser.DEPRECATED_MaterialDetails
local MaterialHeader = require(MaterialDetailsComponents.MaterialHeader)
local MaterialInformation = require(MaterialDetailsComponents.MaterialInformation)
local MaterialTextures = require(MaterialDetailsComponents.MaterialTextures)
local MaterialAdditional = require(MaterialDetailsComponents.MaterialAdditional)
local MaterialOverrides = require(MaterialDetailsComponents.MaterialOverrides)

local getSupportedMaterials = require(Plugin.Src.Resources.Constants.getSupportedMaterials)
local supportedMaterials = getSupportedMaterials()

local Util = Plugin.Src.Util
local MaterialController = require(Util.MaterialController)

local Flags = Plugin.Src.Flags
local getFFlagMaterialManagerGlassNeonForceField = require(Flags.getFFlagMaterialManagerGlassNeonForceField)

local MaterialDetails = Roact.PureComponent:extend("MaterialDetails")

export type Props = {
	LayoutOrder: number?,
	MaterialMock: _Types.Material?,
	OpenPrompt: (type: _Types.MaterialPromptType) -> (),
	Size: UDim2?,
}

type _Props = Props & {
	Analytics: any,
	dispatchClearMaterial: () -> (),
	Localization: any,
	Material: _Types.Material?,
	MaterialController: any,
	Stylizer: any,
}

function MaterialDetails:willUnmount()
	if self.connection then
		self.connection:Disconnect()
		self.connection = nil
	end
end

function MaterialDetails:didMount()
	local props: _Props = self.props

	if props.Material then
		if self.connection then
			self.connection:Disconnect()
		end

		self.connection = props.MaterialController:getMaterialRemovedSignal():Connect(function(_, materialVariant, moving)
			if not moving and materialVariant == self.props.Material.MaterialVariant then
				props.dispatchClearMaterial()
			end
		end)
	end
end

function MaterialDetails:render()
	local props: _Props = self.props

	local layoutOrder = props.LayoutOrder
	local size = props.Size

	if not props.Material then
		return Roact.createElement(Pane, {
			Layout = Enum.FillDirection.Vertical,
			LayoutOrder = layoutOrder,
			Size = size,
		})
	else
		local isBuiltin, overrideSupport
		if getFFlagMaterialManagerGlassNeonForceField() then
			isBuiltin = not props.Material.MaterialVariant
			overrideSupport = supportedMaterials[props.Material.Material]
		else
			isBuiltin = props.Material.IsBuiltin
		end

		local layoutOrderIterator = LayoutOrderIterator.new()

		return Roact.createElement(ScrollingFrame, {
			Layout = Enum.FillDirection.Vertical,
			LayoutOrder = layoutOrder,
			Size = size,
		}, {
			Pane = Roact.createElement(Pane, {
				AutomaticSize = Enum.AutomaticSize.Y,
				Layout = Enum.FillDirection.Vertical,
				VerticalAlignment = Enum.VerticalAlignment.Top,
			}, {
				MaterialHeader = Roact.createElement(MaterialHeader, {
					LayoutOrder = layoutOrderIterator:getNextOrder(),
				}),
				MaterialInformation = Roact.createElement(MaterialInformation, {
					LayoutOrder = layoutOrderIterator:getNextOrder(),
					OpenPrompt = props.OpenPrompt,
				}),
				MaterialOverrides = if not getFFlagMaterialManagerGlassNeonForceField() or overrideSupport then
					Roact.createElement(MaterialOverrides, {
						LayoutOrder = layoutOrderIterator:getNextOrder(),
						OpenPrompt = props.OpenPrompt
					})
					else nil,
				MaterialTextures = if not isBuiltin then
					Roact.createElement(MaterialTextures, {
						LayoutOrder = layoutOrderIterator:getNextOrder(),
					})
					else nil,
				MaterialAdditional = if not isBuiltin then
					Roact.createElement(MaterialAdditional, {
						LayoutOrder = layoutOrderIterator:getNextOrder(),
					})
					else nil,
			})
		})
	end
end

MaterialDetails = withContext({
	Analytics = Analytics,
	Localization = Localization,
	MaterialController = MaterialController,
	Stylizer = Stylizer,
})(MaterialDetails)

return RoactRodux.connect(
	function(state, props)
		return {
			Material = props.MaterialMock or state.MaterialBrowserReducer.Material,
		}
	end,
	function(dispatch)
		return {
			dispatchClearMaterial = function()
				dispatch(ClearMaterial())
			end,
		}
	end
)(MaterialDetails)
