local Plugin = script.Parent.Parent.Parent
local _Types = require(Plugin.Src.Types)
local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)
local Framework = require(Plugin.Packages.Framework)

local Util = Framework.Util
local LayoutOrderIterator = Util.LayoutOrderIterator

local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext
local Analytics = ContextServices.Analytics
local Localization = ContextServices.Localization

local Stylizer = Framework.Style.Stylizer

local StudioUI = Framework.StudioUI
local SearchBar = StudioUI.SearchBar

local UI = Framework.UI
local Button = UI.Button
local Image = UI.Decoration.Image
local Pane = UI.Pane
local SelectInput = UI.SelectInput
local Tooltip = UI.Tooltip

local Src = Plugin.Src
local SetSearch = require(Src.Actions.SetSearch)
local MainReducer = require(Src.Reducers.MainReducer)

local Selection = game:GetService("Selection")

local TopBar = Roact.PureComponent:extend("TopBar")

export type Props = {
	LayoutOrder : number?,
	OpenPrompt : (type : _Types.MaterialPromptType) -> (),
	Size : UDim2?,
}

type _Props = Props & {
	Analytics : any,
	dispatchSetSearch : (string) -> (),
	Localization : any,
	Material : _Types.Material?,
	Stylizer : any,
}

type _Image = {
	Image : string,
	Color : Color3,
}

type _Style = {
	ApplyToSelection : _Image,
	BackgroundColor : Color3,
	ButtonSize : UDim2,
	CreateNewVariant : _Image,
	DropdownSize : UDim2,
	Filter : _Image,
	ImagePosition : UDim2,
	ImageSize : UDim2,
	Padding : number,
	SearchBarSize : UDim2,
	ShowInExplorer : _Image,
}

type _ButtonProps = {
	ImageStyle : _Image,
	LayoutOrder : number,
	OnClick : () -> (),
	TooltipText : string,
}

function TopBar:init()
	self.state = {
		sortOrderIndex = 1,
	}

	self.createMaterialVariant = function()
		local props : _Props = self.props

		local openPrompt = props.OpenPrompt
		openPrompt("Create")
	end

	self.showInExplorer = function()
		local props : _Props = self.props

		if props.Material then
			Selection:Set({
				props.Material.MaterialVariant
			})
		end
	end

	self.applyToSelection = function()
		-- TODO : Actually set material when per-part is ready
	end

	self.setSearch = function(search)
		local props : _Props = self.props
		local dispatchSetSearch = props.dispatchSetSearch

		dispatchSetSearch(search)
	end

	self.selectSortOrder = function(_, index)
		self:setState({
			sortOrderIndex = index,
		})
	end

	self.showFilters = function()
		-- TODO : Add filtering functionality
	end

	self.renderButton = function(buttonProps : _ButtonProps)
		local props : _Props = self.props
		local style : _Style = props.Stylizer.TopBar

		local buttonSize = style.ButtonSize
		local imagePosition = style.ImagePosition
		local imageSize = style.ImageSize

		return Roact.createElement(Button, {
			LayoutOrder = buttonProps.LayoutOrder,
			OnClick = buttonProps.OnClick,
			Size = buttonSize,
			Style = "Round",
		}, {
			Image = Roact.createElement(Image, {
				Position = imagePosition,
				Size = imageSize,
				Style = buttonProps.ImageStyle,
			}),
			Tooltip = Roact.createElement(Tooltip, {
				Text = buttonProps.TooltipText
			}),
		})
	end
end

function TopBar:render()
	local props : _Props = self.props
	local style : _Style = props.Stylizer.TopBar
	local layoutOrder = props.LayoutOrder
	local size = props.Size

	local localization = props.Localization

	local layoutOrderIterator = LayoutOrderIterator.new()

	local applyToSelection = style.ApplyToSelection
	local createNewVariant = style.CreateNewVariant
	local filter = style.Filter
	local showInExplorer = style.ShowInExplorer

	local backgroundColor = style.BackgroundColor
	local dropdownSize = style.DropdownSize
	local padding = style.Padding
	local searchBarSize = style.SearchBarSize

	return Roact.createElement(Pane, {
		BackgroundColor = backgroundColor,
		Layout = Enum.FillDirection.Horizontal,
		LayoutOrder = layoutOrder,
		Padding = padding,
		Size = size,
		Spacing = padding,
	}, {
		CreateMaterialVariant = self.renderButton({
			ImageStyle = createNewVariant,
			LayoutOrder = layoutOrderIterator:getNextOrder(),
			OnClick = self.createMaterialVariant,
			TooltipText = localization:getText("TopBar", "Create"),
		}),
		ShowInExplorer = self.renderButton({
			ImageStyle = showInExplorer,
			LayoutOrder = layoutOrderIterator:getNextOrder(),
			OnClick = self.showInExplorer,
			TooltipText = localization:getText("TopBar", "Show"),
		}),
		ApplyToSelection = self.renderButton({
			ImageStyle = applyToSelection,
			LayoutOrder = layoutOrderIterator:getNextOrder(),
			OnClick = self.applyToSelection,
			TooltipText = localization:getText("TopBar", "Apply"),
		}),
		SearchBar = Roact.createElement(SearchBar, {
			LayoutOrder = layoutOrderIterator:getNextOrder(),
			OnSearchRequested = self.setSearch,
			PlaceholderText = localization:getText("TopBar", "Search"),
			ShowSearchButton = false,
			ShowSearchIcon = true,
			Size = searchBarSize,
		}),
		-- TODO : Update sort order values when functionality is added
		SortOrder = Roact.createElement(Pane, {
			LayoutOrder = layoutOrderIterator:getNextOrder(),
			Size = dropdownSize,
		}, {
			SelectInput = Roact.createElement(SelectInput, {
				Items = { "Sort Order "},
				OnItemActivated = self.selectSortOrder,
				SelectedIndex = self.state.sortOrderIndex,
				Size = UDim2.fromScale(1, 1),
			})
		}),
		Filters = self.renderButton({
			ImageStyle = filter,
			LayoutOrder = layoutOrderIterator:getNextOrder(),
			OnClick = self.showFilters,
			TooltipText = localization:getText("TopBar", "Filters"),
		}),
	})
end

TopBar = withContext({
	Analytics = Analytics,
	Localization = Localization,
	Stylizer = Stylizer,
})(TopBar)

return RoactRodux.connect(
	function(state : MainReducer.State)
		return {
			Material = state.MaterialBrowserReducer.Material,
		}
	end,
	function(dispatch)
		return {
			dispatchSetSearch = function (search)
				dispatch(SetSearch(search))
			end,
		}
	end
)(TopBar)
