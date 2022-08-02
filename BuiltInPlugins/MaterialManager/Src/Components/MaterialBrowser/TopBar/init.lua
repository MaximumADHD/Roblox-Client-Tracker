local Plugin = script.Parent.Parent.Parent.Parent
local _Types = require(Plugin.Src.Types)
local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)
local Framework = require(Plugin.Packages.Framework)

local FrameworkUtil = Framework.Util
local LayoutOrderIterator = FrameworkUtil.LayoutOrderIterator

local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext
local Analytics = ContextServices.Analytics
local Localization = ContextServices.Localization
local withAbsoluteSize = Framework.Wrappers.withAbsoluteSize

local join = Framework.Dash.join

local Stylizer = Framework.Style.Stylizer

local StudioUI = Framework.StudioUI
local SearchBar = StudioUI.SearchBar

local Pane = Framework.UI.Pane

local Actions = Plugin.Src.Actions
local ClearMaterialVariant = require(Actions.ClearMaterialVariant)
local SetSearch = require(Actions.SetSearch)
local SetMaterialTileSize = require(Actions.SetMaterialTileSize)
local SetMode = require(Actions.SetMode)
local MainReducer = require(Plugin.Src.Reducers.MainReducer)

local Controllers = Plugin.Src.Controllers
local GeneralServiceController = require(Controllers.GeneralServiceController)
local MaterialServiceController = require(Controllers.MaterialServiceController)
local PluginController = require(Controllers.PluginController)

local TopBarComponents = Plugin.Src.Components.MaterialBrowser.TopBar
local ActionButton = require(TopBarComponents.ActionButton)
local ViewTypeSelector = require(TopBarComponents.ViewTypeSelector)

local getFFlagMaterialManagerAnalyticsMaterialAsTool = require(
	Plugin.Src.Flags.getFFlagMaterialManagerAnalyticsMaterialAsTool
)

local TopBar = Roact.PureComponent:extend("TopBar")

export type Props = {
	LayoutOrder: number?,
	OpenPrompt: (type: _Types.MaterialPromptType) -> (),
	Size: UDim2?,
}

type _Props = Props & {
	ActiveAsTool: boolean,
	Analytics: any,
	dispatchClearMaterialVariant: () -> (),
	dispatchSetMaterialTileSize: (size : number) -> (),
	dispatchSetSearch: (string) -> (),
	dispatchSetMode: (mode : string) -> (),
	GeneralServiceController: any,
	Localization: any,
	Material: _Types.Material?,
	MaterialServiceController: any,
	MaterialTileSize: number,
	MenuHover: boolean,
	PluginController: any,
	Stylizer: any,
	ViewType: string,
	WrapperProps: any,
	AbsoluteSize: Vector2,
}

type _Image = {
	Image: string,
	Color: Color3,
}

type _Style = {
	BackgroundColor: Color3,
	ButtonSize: UDim2,
	CreateNewVariant: _Image,
	Grid: string,
	ImagePosition: UDim2,
	ImageSize: UDim2,
	List: string,
	MaterialAsToolMouseIcon: _Image,
	Padding: number,
	SearchBarMaxWidth: number,
	SpacerWidth: number,
	ShowInExplorer: _Image,
	TopBarButtonWidth: number,
	ViewTypeBackground: Color3,
	ViewTypeSize: UDim2,
}

local BUTTON_COUNT = 3
local SPACER_COUNT = 2

function TopBar:init()
	self.createMaterialVariant = function()
		local props: _Props = self.props

		props.dispatchClearMaterialVariant()
		props.dispatchSetMode("Create")
		props.OpenPrompt("Create")
	end

	self.showInExplorer = function()
		local props: _Props = self.props

		if props.Material and props.Material.MaterialVariant then
			props.GeneralServiceController:SetSelection({
				props.Material.MaterialVariant
			})
			props.Analytics:report("showInExplorer")
		end
	end

	self.materialAsTool = function()
		local props: _Props = self.props

		if not props.ActiveAsTool and props.Material then
			props.PluginController:toggleMaterialAsTool()
		elseif props.ActiveAsTool then
			props.PluginController:untoggleMaterialAsTool()
		end

		if getFFlagMaterialManagerAnalyticsMaterialAsTool() then
			props.Analytics:report("materialAsTool")
		end
	end

	self.setSearch = function(search)
		local props: _Props = self.props

		props.MaterialServiceController:setSearch(search)
		props.Analytics:report("searchBar")
	end
end

function TopBar:render()
	local props: _Props = self.props
	local style: _Style = props.Stylizer.TopBar
	local layoutOrder = props.LayoutOrder
	local size = props.Size

	local localization = props.Localization

	local layoutOrderIterator = LayoutOrderIterator.new()

	local createNewVariant = style.CreateNewVariant
	local showInExplorer = style.ShowInExplorer
	local materialAsToolMouseIcon = style.MaterialAsToolMouseIcon

	local backgroundColor = style.BackgroundColor
	local buttonWidth = style.ButtonSize.X.Offset
	local padding = style.Padding
	local spacerWidth = style.SpacerWidth
	local searchBarMaxWidth = style.SearchBarMaxWidth
	local topBarButtonWidth = style.TopBarButtonWidth
	local viewTypeWidth = style.ViewTypeSize.X.Offset

	local restWidth = props.AbsoluteSize.X - (BUTTON_COUNT * (buttonWidth + padding) + (viewTypeWidth + padding))
	local percentage = math.min(1, restWidth / (SPACER_COUNT * spacerWidth + searchBarMaxWidth))

	local isDisabledShowInExplorer = if not props.Material or not props.Material.MaterialVariant then true else false
	local isPressed = props.ActiveAsTool

	return Roact.createElement(Pane, join({
		BackgroundColor = backgroundColor,
		Layout = Enum.FillDirection.Horizontal,
		HorizontalAlignment = Enum.HorizontalAlignment.Left,
		LayoutOrder = layoutOrder,
		Padding = padding,
		Size = size,
		Spacing = padding,
	}, props.WrapperProps), {
		CreateMaterialVariant = Roact.createElement(ActionButton, {
			ImageStyle = createNewVariant,
			IsDisabled = false,
			LayoutOrder = layoutOrderIterator:getNextOrder(),
			OnClick = self.createMaterialVariant,
			TooltipText = localization:getText("TopBar", "Create"),
		}),
		ShowInExplorer = Roact.createElement(ActionButton, {
			ImageStyle = showInExplorer,
			IsDisabled = isDisabledShowInExplorer,
			LayoutOrder = layoutOrderIterator:getNextOrder(),
			OnClick = self.showInExplorer,
			TooltipText = localization:getText("TopBar", "Show"),
		}),
		MaterialAsTool = Roact.createElement(ActionButton, {
			ImageStyle = materialAsToolMouseIcon,
			IsPressed = isPressed,
			LayoutOrder = layoutOrderIterator:getNextOrder(),
			OnClick = self.materialAsTool,
			TooltipText = localization:getText("TopBar", "MaterialAsTool"),
		}),
		RestPane = Roact.createElement(Pane, {
			Size = UDim2.new(1, - (BUTTON_COUNT * (buttonWidth + padding) + (viewTypeWidth + padding)), 1, 0),
			LayoutOrder = layoutOrderIterator:getNextOrder(),
		}, {
			SearchBar = Roact.createElement(SearchBar, {
				Position = UDim2.new(0.5, 0, 0, 0),
				AnchorPoint = Vector2.new(0.5, 0),
				OnSearchRequested = self.setSearch,
				PlaceholderText = localization:getText("TopBar", "Search"),
				ShowSearchButton = false,
				ShowSearchIcon = true,
				Size = UDim2.new(0, searchBarMaxWidth * percentage, 0, topBarButtonWidth),
			}),
		}),
		ViewType = Roact.createElement(ViewTypeSelector, {
			LayoutOrder = layoutOrderIterator:getNextOrder(),
		}),
	})
end

TopBar = withContext({
	Analytics = Analytics,
	GeneralServiceController = GeneralServiceController,
	Localization = Localization,
	MaterialServiceController = MaterialServiceController,
	PluginController = PluginController,
	Stylizer = Stylizer,
})(TopBar)

return RoactRodux.connect(
	function(state: MainReducer.State)
		return {
			ActiveAsTool = state.MaterialBrowserReducer.ActiveAsTool,
			Material = state.MaterialBrowserReducer.Material,
			MaterialTileSize = state.MaterialBrowserReducer.MaterialTileSize,
			MenuHover = state.MaterialBrowserReducer.MenuHover,
			ViewType = state.MaterialBrowserReducer.ViewType,
		}
	end,
	function(dispatch)
		return {
			dispatchClearMaterialVariant = function()
				dispatch(ClearMaterialVariant())
			end,
			dispatchSetSearch = function (search: string)
				dispatch(SetSearch(search))
			end,
			dispatchSetMaterialTileSize = function(size: number)
				dispatch(SetMaterialTileSize(size))
			end,
			dispatchSetMode = function(mode: string)
				dispatch(SetMode(mode))
			end,
		}
	end
)(withAbsoluteSize(TopBar))
