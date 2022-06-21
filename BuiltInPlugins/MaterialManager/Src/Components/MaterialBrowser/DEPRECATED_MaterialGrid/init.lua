
local Plugin = script.Parent.Parent.Parent.Parent
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
local Pane = UI.Pane
local InfiniteScrollingGrid = UI.InfiniteScrollingGrid
local IconButton = UI.IconButton

local Actions = Plugin.Src.Actions
local SetMaterial = require(Actions.SetMaterial)
local SetMenuHover = require(Actions.SetMenuHover)

local Components = Plugin.Src.Components
local MaterialItem = require(Components.MaterialBrowser.DEPRECATED_MaterialGrid.MaterialItem)
local MaterialTile = require(Components.MaterialBrowser.DEPRECATED_MaterialGrid.MaterialTile)

local Util = Plugin.Src.Util
local ContainsPath = require(Util.ContainsPath)
local MaterialController = require(Util.MaterialController)

local Constants = Plugin.Src.Resources.Constants
local getMaterialPath = require(Constants.getMaterialPath)

local Flags = Plugin.Src.Flags
local getFFlagDevFrameworkInfiniteScrollingGridBottomPadding = require(Flags.getFFlagDevFrameworkInfiniteScrollingGridBottomPadding)
local getFFlagMaterialManagerGridListView = require(Flags.getFFlagMaterialManagerGridListView)
local getFFlagMaterialManagerGlassNeonForceField = require(Flags.getFFlagMaterialManagerGlassNeonForceField)
local getFFlagMaterialManagerHideDetails = require(Flags.getFFlagMaterialManagerHideDetails)
local getFFlagMaterialManagerDetailsOverhaul = require(Flags.getFFlagMaterialManagerDetailsOverhaul)
local FFlagMaterialManagerSideBarHide = game:GetFastFlag("MaterialManagerSideBarHide")

local MaterialGrid = Roact.PureComponent:extend("MaterialGrid")

export type Props = {
	DetailsVisible: boolean?,
	LayoutOrder: number?,
	OnSidebarButtonClicked: (() -> ())?,
	OnShowButtonClicked: (() -> ())?,
	OnDetailsButtonClicked: (() -> ())?,
	SideBarVisible: boolean?,
	Size: UDim2?,
}

type _Props = Props & {
	Analytics: any,
	dispatchSetMenuHover: () -> (),
	GridLock: boolean,
	Localization: any,
	Material: _Types.Material,
	MaterialController: any,
	MaterialTileSize: number,
	Path: _Types.Path,
	Stylizer: any,
	Search: string,
	ViewType: string,
}

type _Style = {
	BackgroundColor: Color3,
	ChevronLeft: string,
	ChevronRight: string,
	IconColor: Color3,
	IconSize: UDim2,
	Padding: number,
	ShowIcon: string,
}

type _MaterialItemStyle = {
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

-- Remove MaterialTile with FFlagMaterialManagerGridListView
type _MaterialTileStyle = {
	IconSize: UDim2,
	MaterialVariant: _Types.Image,
	MaterialVariantIconPosition: UDim2,
	MaxWidth: number,
	Padding: number,
	Size: UDim2,
	Spacing: number,
	StatusIconPosition: UDim2,
	TextLabelSize: UDim2,
	TextSize: number,
}

function MaterialGrid:init()
	self.onClick = function(item)
		self.props.dispatchSetMaterial(item)
	end

	if getFFlagMaterialManagerGridListView() then
		self.renderItem = function (layoutOrder: number, item: _Types.Material)
			return Roact.createElement(MaterialItem, {
				Item = item,
				LayoutOrder = layoutOrder,
				OnClick = self.onClick,
				SetUpdate = function() end,
			})
		end
	else
		self.renderTile = function (layoutOrder: number, item: _Types.Material)
			return Roact.createElement(MaterialTile, {
				Item = item,
				LayoutOrder = layoutOrder,
				OnClick = self.onClick,
				SetUpdate = function() end,
			})
		end
	end

	self.setupMaterialConnections = function()
		local props: _Props = self.props

		self.materialAddedConnection = props.MaterialController:getMaterialAddedSignal():Connect(function(materialPath)
			if (ContainsPath(self.props.Path, materialPath)) then
				self:setState({
					materials = props.MaterialController:getMaterials(self.props.Path, self.props.Search)
				})
			end
		end)

		self.materialNameChangedConnection = props.MaterialController:getMaterialNameChangedSignal():Connect(function(materialVariant)
			if (ContainsPath(self.props.Path, getMaterialPath(if getFFlagMaterialManagerGlassNeonForceField() then materialVariant.BaseMaterial else materialVariant))) then
				self:setState({
					materials = props.MaterialController:getMaterials(self.props.Path, self.props.Search)
				})
			end
		end)

		self.materialRemovedConnection = props.MaterialController:getMaterialRemovedSignal():Connect(function(materialPath)
			if (ContainsPath(self.props.Path, materialPath)) then
				self:setState({
					materials = props.MaterialController:getMaterials(self.props.Path, self.props.Search)
				})
			end
		end)
	end

	self.onMouseEnter = function()
		self.props.dispatchSetMenuHover(true)
	end

	self.onMouseLeave = function()
		self.props.dispatchSetMenuHover(false)
	end

	self.state = {
		materials = {},
		lastSearchItem = nil,
		lastPath = nil,
	}
end

function MaterialGrid:willUnmount()
	if self.materialAddedConnection then
		self.materialAddedConnection:Disconnect()
		self.materialAddedConnection = nil
	end

	if self.materialNameChangedConnection then
		self.materialNameChangedConnection:Disconnect()
		self.materialNameChangedConnection = nil
	end

	if self.materialRemovedConnection then
		self.materialRemovedConnection:Disconnect()
		self.materialRemovedConnection = nil
	end
end

function MaterialGrid:didMount()
	local props: _Props = self.props

	if #self.state.materials == 0 then
		self:setState({
			materials = props.MaterialController:getMaterials(props.Path, props.Search)
		})
	end

	self.setupMaterialConnections()
end

function MaterialGrid:didUpdate(prevProps)
	local props: _Props = self.props

	if prevProps.Path ~= props.Path or prevProps.Search ~= props.Search then
		self:setState({
			materials = props.MaterialController:getMaterials(props.Path, props.Search)
		})
	end
end

function MaterialGrid:shouldUpdate(nextProps: _Props, nextState)
	return if getFFlagMaterialManagerDetailsOverhaul() and nextProps.GridLock then false else Roact.PureComponent.shouldUpdate(self, nextProps, nextState)
end

function MaterialGrid:render()
	local props: _Props = self.props
	local style: _Style = props.Stylizer.MaterialGrid
	local materialTileStyle: _MaterialTileStyle = props.Stylizer.MaterialTile
	local materialItemStyle: _MaterialItemStyle = props.Stylizer.MaterialItem

	local layoutOrder = props.LayoutOrder
	local materialTileSize = props.MaterialTileSize
	local size = props.Size
	local viewType = props.ViewType

	if getFFlagMaterialManagerGridListView() then
		return Roact.createElement(Pane, {
			BackgroundColor = style.BackgroundColor,
			LayoutOrder = layoutOrder,
			Size = size
		}, {
			Grid = Roact.createElement(InfiniteScrollingGrid, {
				AbsoluteMax = #self.state.materials,
				CellPadding = if viewType == "Grid" then
					UDim2.fromOffset(materialItemStyle.GridPadding, materialItemStyle.GridPadding)
					else
					UDim2.fromOffset(materialItemStyle.ListPadding, materialItemStyle.ListPadding),
				CellSize = if viewType == "Grid" then
					UDim2.fromOffset(materialTileSize, materialTileSize)
					else
					UDim2.new(1, -20, 0, materialItemStyle.ListHeight),
				BufferedRows = 2,
				Items = self.state.materials,
				Loading = false,
				Padding = style.Padding,
				RenderItem = self.renderItem,
				Size = UDim2.fromScale(1, 1),
			}),
			ShowButton = if FFlagMaterialManagerSideBarHide and not props.SideBarVisible then Roact.createElement(IconButton, {
				Size = style.IconSize,
				LeftIcon = if getFFlagMaterialManagerHideDetails() then style.ChevronRight else style.ShowIcon,
				IconColor = style.IconColor,
				OnClick = if getFFlagMaterialManagerHideDetails() then props.OnSidebarButtonClicked else props.OnShowButtonClicked,
				OnMouseEnter = self.onMouseEnter,
				OnMouseLeave = self.onMouseLeave,
				AnchorPoint = Vector2.new(0, 1),
				Position = UDim2.new(0, 5, 1, -5),
				LayoutOrder = 2,
				ZIndex = 2,
			}) else nil,
			DetailsButton = if getFFlagMaterialManagerHideDetails() and not props.DetailsVisible and props.Material then Roact.createElement(IconButton, {
				Size = style.IconSize,
				LeftIcon = style.ChevronLeft,
				IconColor = style.IconColor,
				OnClick = props.OnDetailsButtonClicked,
				OnMouseEnter = self.onMouseEnter,
				OnMouseLeave = self.onMouseLeave,
				AnchorPoint = Vector2.new(1, 0),
				Position = UDim2.new(1, -5, 0, 5),
				LayoutOrder = 3,
				ZIndex = 2,
			}) else nil,
		})
	else
		return Roact.createElement(Pane, {
			BackgroundColor = style.BackgroundColor,
			LayoutOrder = layoutOrder,
			Size = size
		}, {
			Grid = Roact.createElement(InfiniteScrollingGrid, {
				AbsoluteMax = #self.state.materials,
				CellPadding = if getFFlagDevFrameworkInfiniteScrollingGridBottomPadding() then
					UDim2.fromOffset(style.Padding, style.Padding)
					else
					UDim2.fromOffset(materialTileStyle.Padding, materialTileStyle.Padding),
				CellSize = materialTileStyle.Size,
				BufferedRows = 2,
				Items = self.state.materials,
				Loading = false,
				Padding = if getFFlagDevFrameworkInfiniteScrollingGridBottomPadding() then
					style.Padding
					else
					materialTileStyle.Padding,
				RenderItem = self.renderTile,
				Size = UDim2.fromScale(1, 1),
				Position = UDim2.fromOffset(0, 0),
				ZIndex = 1,
			}),
			Pane = Roact.createElement(Pane, {
				LayoutOrder = 2,
				Size = UDim2.fromScale(1, 1),
				Position = UDim2.fromOffset(0, 0),
				ZIndex = 2,
			}, {
				SidebarButton = if FFlagMaterialManagerSideBarHide and not props.SideBarVisible then Roact.createElement(IconButton, {
					Size = style.IconSize,
					LeftIcon = if getFFlagMaterialManagerHideDetails() then style.ChevronRight else style.ShowIcon,
					IconColor = style.IconColor,
					OnClick = if getFFlagMaterialManagerHideDetails() then props.OnSidebarButtonClicked else props.OnShowButtonClicked,
					OnMouseEnter = self.onMouseEnter,
					OnMouseLeave = self.onMouseLeave,
					AnchorPoint = Vector2.new(0, 1),
					Position = UDim2.new(0, 5, 1, -5),
					LayoutOrder = 1,
					ZIndex = 2,
				}) else nil,
				DetailsButton = if getFFlagMaterialManagerHideDetails() and not props.DetailsVisible and props.Material then Roact.createElement(IconButton, {
					Size = style.IconSize,
					LeftIcon = style.ChevronLeft,
					IconColor = style.IconColor,
					OnClick = props.OnDetailsButtonClicked,
					OnMouseEnter = self.onMouseEnter,
					OnMouseLeave = self.onMouseLeave,
					AnchorPoint = Vector2.new(1, 0),
					Position = UDim2.new(1, -5, 0, 5),
					LayoutOrder = 2,
					ZIndex = 2,
				}) else nil,
			})

		})
	end
end

MaterialGrid = withContext({
	Analytics = Analytics,
	Localization = Localization,
	MaterialController = MaterialController,
	Stylizer = Stylizer,
})(MaterialGrid)

return RoactRodux.connect(
	function(state, props)
		return {
			GridLock = getFFlagMaterialManagerDetailsOverhaul() and state.MaterialBrowserReducer.GridLock or nil,
			Material = getFFlagMaterialManagerHideDetails() and state.MaterialBrowserReducer.Material or nil,
			Path = state.MaterialBrowserReducer.Path,
			MaterialTileSize = state.MaterialBrowserReducer.MaterialTileSize,
			Search = state.MaterialBrowserReducer.Search,
			ViewType = state.MaterialBrowserReducer.ViewType,
		}
	end,
	function(dispatch)
		return {
			dispatchSetMaterial = function(material)
				dispatch(SetMaterial(material))
			end,
			dispatchSetMenuHover = function(menuHover)
				dispatch(SetMenuHover(menuHover))
			end,
		}
	end
)(MaterialGrid)
