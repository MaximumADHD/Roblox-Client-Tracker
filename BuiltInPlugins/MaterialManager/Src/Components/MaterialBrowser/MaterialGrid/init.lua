
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

local SetMenuHover = require(Plugin.Src.Actions.SetMenuHover)

local Components = Plugin.Src.Components
local MaterialItem = require(Components.MaterialBrowser.MaterialGrid.MaterialItem)

local Flags = Plugin.Src.Flags
local getFFlagMaterialManagerHideDetails = require(Flags.getFFlagMaterialManagerHideDetails)
local getFFlagMaterialManagerDetailsOverhaul = require(Flags.getFFlagMaterialManagerDetailsOverhaul)
local FFlagMaterialManagerSideBarHide = game:GetFastFlag("MaterialManagerSideBarHide")

local MaterialGrid = Roact.PureComponent:extend("MaterialGrid")

-- Make functions non-optional on removal of FFlagMaterialManagerHideDetails
export type Props = {
	DetailsVisible: boolean?,
	LayoutOrder: number?,
	MockMaterial: _Types.Material?,
	OnSidebarButtonClicked: (() -> ())?,
	OnShowButtonClicked: (() -> ())?, -- Remove with FFlagMaterialManagerHideDetails
	OnDetailsButtonClicked: (() -> ())?,
	SideBarVisible: boolean?,
	Size: UDim2?,
}

type _Props = Props & {
	Analytics: any,
	dispatchSetMenuHover: (menuHover: boolean) -> (),
	GridLock: boolean,
	Localization: any,
	Material: _Types.Material,
	MaterialList: _Types.Array<_Types.Material>,
	MaterialTileSize: number,
	Stylizer: any,
	ViewType: string,
}

type _Style = {
	BackgroundColor: Color3,
	ChevronLeft: string,
	ChevronRight: string,
	GridPadding: number,
	IconColor: Color3,
	IconSize: UDim2,
	ListHeight: number,
	ListPadding: number,
	Padding: number, 
	ShowIcon: string, -- Remove with FFlagMaterialManagerHideDetails
}

function MaterialGrid:init()
	self.renderItem = function (layoutOrder: number, item: _Types.Material)
		return Roact.createElement(MaterialItem, {
			MaterialItem = item,
			LayoutOrder = layoutOrder,
		})
	end

	self.onMouseEnter = function()
		local props: _Props = self.props

		props.dispatchSetMenuHover(true)
	end

	self.onMouseLeave = function()
		local props: _Props = self.props

		props.dispatchSetMenuHover(false)
	end
end

function MaterialGrid:shouldUpdate(nextProps: _Props, nextState)
	return if getFFlagMaterialManagerDetailsOverhaul() and nextProps.GridLock then false else Roact.PureComponent.shouldUpdate(self, nextProps, nextState)
end

function MaterialGrid:render()
	local props: _Props = self.props
	local style: _Style = props.Stylizer.MaterialGrid

	local layoutOrder = props.LayoutOrder
	local materialTileSize = props.MaterialTileSize
	local size = props.Size
	local viewType = props.ViewType

	local sideBarButtonOnClick = if getFFlagMaterialManagerHideDetails() then props.OnSidebarButtonClicked else props.OnShowButtonClicked

	return Roact.createElement(Pane, {
		BackgroundColor = style.BackgroundColor,
		LayoutOrder = layoutOrder,
		Size = size
	}, {
		Grid = Roact.createElement(InfiniteScrollingGrid, {
			AbsoluteMax = #props.MaterialList,
			CellPadding = if viewType == "Grid" then
				UDim2.fromOffset(style.GridPadding, style.GridPadding)
				else
				UDim2.fromOffset(style.ListPadding, style.ListPadding),
			CellSize = if viewType == "Grid" then
				UDim2.fromOffset(materialTileSize, materialTileSize)
				else
				UDim2.new(1, -20, 0, style.ListHeight),
			BufferedRows = 2,
			Items = props.MaterialList,
			Loading = false,
			Padding = style.Padding,
			RenderItem = self.renderItem,
			Size = UDim2.fromScale(1, 1),
		}),
		SidebarButton = if FFlagMaterialManagerSideBarHide and not props.SideBarVisible then Roact.createElement(IconButton, {
			Size = style.IconSize,
			LeftIcon = style.ChevronRight,
			IconColor = style.IconColor,
			OnClick = sideBarButtonOnClick or function() end,
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
			OnClick = props.OnDetailsButtonClicked or function() end,
			OnMouseEnter = self.onMouseEnter,
			OnMouseLeave = self.onMouseLeave,
			AnchorPoint = Vector2.new(1, 0),
			Position = UDim2.new(1, -5, 0, 5),
			LayoutOrder = 3,
			ZIndex = 2,
		}) else nil,
	})
end

MaterialGrid = withContext({
	Analytics = Analytics,
	Localization = Localization,
	Stylizer = Stylizer,
})(MaterialGrid)

return RoactRodux.connect(
	function(state, props)
		return {
			GridLock = getFFlagMaterialManagerDetailsOverhaul() and state.MaterialBrowserReducer.GridLock or nil,
			Material = getFFlagMaterialManagerHideDetails() and state.MaterialBrowserReducer.Material or props.MockMaterial,
			MaterialList = state.MaterialBrowserReducer.MaterialList,
			MaterialTileSize = state.MaterialBrowserReducer.MaterialTileSize,
			ViewType = state.MaterialBrowserReducer.ViewType,
		}
	end,
	function(dispatch)
		return {
			dispatchSetMenuHover = function(menuHover: boolean)
				dispatch(SetMenuHover(menuHover))
			end,
		}
	end
)(MaterialGrid)
