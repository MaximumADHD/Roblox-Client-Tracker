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

local MainReducer = require(Plugin.Src.Reducers.MainReducer)
local SetMaterial = require(Plugin.Src.Actions.SetMaterial)

local Constants = Plugin.Src.Resources.Constants
local getFullMaterialType = require(Constants.getFullMaterialType)
local getMaterialName = require(Constants.getMaterialName)

local Util = Plugin.Src.Util
local MaterialController = require(Util.MaterialController)
local ApplyToSelection = require(Util.ApplyToSelection)

local MaterialGrid = Plugin.Src.Components.MaterialBrowser.MaterialGrid
local MaterialListItem = require(MaterialGrid.MaterialListItem)
local MaterialTileItem = require(MaterialGrid.MaterialTileItem)

local FIntInfluxReportMaterialManagerHundrethPercent2 = game:GetFastInt("InfluxReportMaterialManagerHundrethPercent2")

export type Props = {
	MaterialItem: _Types.Material,
	LayoutOrder: number?,
}

type _Props = Props & {
	Analytics: any,
	dispatchSetMaterial: (material: _Types.Material) -> (),
	Localization: any,
	Material: _Types.Material,
	MaterialController: any,
	MaterialStatus: Enum.PropertyStatus,
	MaterialTileSize: number,
	MenuHover: boolean,
	Stylizer: any,
	ViewType: string,
}

type _Style = {
	ApplyIcon: _Types.Image,
	ApplyIconPosition: UDim2,
	ApplyIconAnchorPoint: Vector2,
	ButtonSize: UDim2,
	Gradient: string,
	GradientHover: string,
	GridPadding: number,
	IconSize: UDim2,
	ListHeight: number,
	ListPadding: number,
	MaterialVariantIcon: _Types.Image,
	MaterialVariantIconPosition: UDim2,
	MaterialVariantIconAnchorPoint: Vector2,
	Padding: number,
	Spacing: number,
	StatusIconPosition: UDim2,
	TextSize: number,
}

local MaterialItem = Roact.PureComponent:extend("MaterialItem")

function MaterialItem:init()
	self.onClick = function()
		local props : _Props = self.props

		props.dispatchSetMaterial(props.MaterialItem)
	end

	self.onMouseEnter = function()
		self:setState({
			hover = true
		})
	end

	self.onMouseLeave = function()
		self:setState({
			hover = false
		})
	end

	self.applyToSelection = function()
		local props : _Props = self.props
		local materialItem = props.MaterialItem

		ApplyToSelection(materialItem.Material, if materialItem.MaterialVariant then materialItem.MaterialVariant.Name else nil)

		if FIntInfluxReportMaterialManagerHundrethPercent2 > 0 then
			props.Analytics:report("applyToSelectionAction")
		end
	end

	self.state = {
		hover = false
	}
end

function MaterialItem:render()
	local props : _Props = self.props
	local localization = props.Localization

	local materialItem = props.MaterialItem
	local materialDescription = getFullMaterialType(materialItem, localization)
	local materialVariant = materialItem.MaterialVariant
	local name = if not materialVariant then localization:getText("Materials", getMaterialName(materialItem.Material)) else materialVariant.Name
	local viewType = props.ViewType

	if viewType == "List" then
		return Roact.createElement(MaterialListItem, {
			ApplyToSelection = self.applyToSelection,
			Hover = self.state.hover,
			LayoutOrder = props.LayoutOrder,
			Material = materialItem,
			MaterialDescription = materialDescription,
			MaterialName = name,
			MenuHover = props.MenuHover,
			OnClick = self.onClick,
			OnMouseEnter = self.onMouseEnter,
			OnMouseLeave = self.onMouseLeave,
			Selected = props.Material == materialItem,
			Status = props.MaterialStatus,
		})
	else
		return Roact.createElement(MaterialTileItem, {
			ApplyToSelection = self.applyToSelection,
			Hover = self.state.hover,
			LayoutOrder = props.LayoutOrder,
			Material = materialItem,
			MaterialDescription = materialDescription,
			MaterialName = name,
			MaterialTileSize = props.MaterialTileSize,
			MenuHover = props.MenuHover,
			OnClick = self.onClick,
			OnMouseEnter = self.onMouseEnter,
			OnMouseLeave = self.onMouseLeave,
			Selected = props.Material == materialItem,
			Status = props.MaterialStatus,
		})
	end
end

MaterialItem = withContext({
	Analytics = Analytics,
	Localization = Localization,
	MaterialController = MaterialController,
	Stylizer = Stylizer,
})(MaterialItem)

return RoactRodux.connect(
	function(state: MainReducer.State, props: Props)
		return {
			Material = state.MaterialBrowserReducer.Material,
			MaterialStatus = if not props.MaterialItem.MaterialVariant then state.MaterialBrowserReducer.MaterialStatus[props.MaterialItem.Material] else nil,
			MaterialTileSize = state.MaterialBrowserReducer.MaterialTileSize,
			MenuHover = state.MaterialBrowserReducer.MenuHover,
			ViewType = state.MaterialBrowserReducer.ViewType
		}
	end,
	function(dispatch)
		return {
			dispatchSetMaterial = function(material: _Types.Material)
				dispatch(SetMaterial(material))
			end,
		}
	end
)(MaterialItem)