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

local Util = Plugin.Src.Util
local ApplyToSelection = require(Util.ApplyToSelection)

local Controllers = Plugin.Src.Controllers
local GeneralServiceController = require(Controllers.GeneralServiceController)
local MaterialServiceController = require(Controllers.MaterialServiceController)
local PluginController = require(Controllers.PluginController)

local TopBarComponents = Plugin.Src.Components.MaterialBrowser.TopBar
local ActionButton = require(TopBarComponents.ActionButton)
local ViewTypeSelector = require(TopBarComponents.ViewTypeSelector)

local Flags = Plugin.Src.Flags
local getFFlagMaterialManagerMaterialAsTool = require(Flags.getFFlagMaterialManagerMaterialAsTool)
local getFFlagMaterialManagerUtilTests = require(Flags.getFFlagMaterialManagerUtilTests)
local FIntInfluxReportMaterialManagerHundrethPercent2 = game:GetFastInt("InfluxReportMaterialManagerHundrethPercent2")

local TopBar = Roact.PureComponent:extend("TopBar")

export type Props = {
	LayoutOrder: number?,
	OpenPrompt: (type: _Types.MaterialPromptType) -> (),
	Size: UDim2?,
}

type _Props = Props & {
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
	ApplyToSelection: _Image,
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
	self.state = {
		pressed = false,
	}

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
			if FIntInfluxReportMaterialManagerHundrethPercent2 > 0 then
				props.Analytics:report("showInExplorer")
			end
		end
	end

	self.applyToSelection = function()
		local props: _Props = self.props

		if props.Material then
			if getFFlagMaterialManagerUtilTests() then
				props.GeneralServiceController:ApplyToSelection(props.Material.Material,
					if props.Material.MaterialVariant then props.Material.MaterialVariant.Name else nil)
			else
				ApplyToSelection(props.Material.Material,
					if props.Material.MaterialVariant then props.Material.MaterialVariant.Name else nil)
			end

			if FIntInfluxReportMaterialManagerHundrethPercent2 > 0 then
				props.Analytics:report("applyToSelectionButton")
			end
		end
	end

	self.materialAsTool = function()
		local props: _Props = self.props
		local state = self.state

		if not state.pressed and props.Material then
			props.PluginController:toggleMaterialAsTool()
			self:setState({
				pressed = true,
			})
		elseif state.pressed then
			props.PluginController:untoggleMaterialAsTool()
			self:setState({
				pressed = false,
			})
		end
	end

	self.setSearch = function(search)
		local props: _Props = self.props

		props.MaterialServiceController:setSearch(search)

		if FIntInfluxReportMaterialManagerHundrethPercent2 > 0 then
			props.Analytics:report("searchBar")
		end
	end
end

function TopBar:render()
	local props: _Props = self.props
	local style: _Style = props.Stylizer.TopBar
	local state = self.state
	local layoutOrder = props.LayoutOrder
	local size = props.Size

	local localization = props.Localization

	local layoutOrderIterator = LayoutOrderIterator.new()

	local applyToSelection = style.ApplyToSelection
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
	local isDisabledApplyToSelection = not props.Material
	local isPressed = state.pressed

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
		ApplyToSelection = not getFFlagMaterialManagerMaterialAsTool() and Roact.createElement(ActionButton, {
			DefinitionId = "MaterialManagerApplyCallout",
			ImageStyle = applyToSelection,
			IsDisabled = isDisabledApplyToSelection,
			LayoutOrder = layoutOrderIterator:getNextOrder(),
			LocationId = "MaterialManagerApplyButton",
			OnClick = self.applyToSelection,
			TooltipText = localization:getText("TopBar", "Apply"),
		}) or nil,
		MaterialAsTool = getFFlagMaterialManagerMaterialAsTool() and Roact.createElement(ActionButton, {
			ImageStyle = materialAsToolMouseIcon,
			IsPressed = isPressed,
			LayoutOrder = layoutOrderIterator:getNextOrder(),
			OnClick = self.materialAsTool,
			TooltipText = localization:getText("TopBar", "MaterialAsTool"),
		}) or nil,
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
