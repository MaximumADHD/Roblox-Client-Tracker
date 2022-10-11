--[[
	This component is responsible for configuring the asset's access field.

	Props:
	owner.creatorId, number, id of currently selected owner for asset
	onDropDownSelect, function, will return current selected item if selected.
]]
local FFlagRemoveUILibraryStyledDropdown = game:GetFastFlag("RemoveUILibraryStyledDropdown")
local FFlagDevFrameworkDropdownShowsLabel = game:GetFastFlag("DevFrameworkDropdownShowsLabel")

local Plugin = script.Parent.Parent.Parent.Parent

local Packages = Plugin.Packages
local Roact = require(Packages.Roact)
local RoactRodux = require(Packages.RoactRodux)
local Framework = require(Plugin.Packages.Framework)
local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext

local Util = Plugin.Src.Util
local Constants = require(Util.Constants)

local UI = Framework.UI
local SelectInput = UI.SelectInput

local Dash = Framework.Dash
local map = Dash.map

local UILibrary = if not FFlagRemoveUILibraryStyledDropdown or not FFlagDevFrameworkDropdownShowsLabel
	then require(Packages.UILibrary)
	else nil
local StyledDropdownMenu = if not FFlagRemoveUILibraryStyledDropdown or not FFlagDevFrameworkDropdownShowsLabel
	then UILibrary.Component.StyledDropdown
	else nil

local Thunks = Plugin.Src.Thunks

local GetMyGroupsRequest = require(Thunks.GetMyGroupsRequest)

local NetworkContext = require(Plugin.Src.ContextServices.NetworkContext)

local ConfigAccess = Roact.PureComponent:extend("ConfigAccess")
local DROP_DOWN_WIDTH = 220
local DROP_DOWN_HEIGHT = 38

function ConfigAccess:didMount()
	-- Initial request
	self.props.getMyGroups(self.props.Network:get())
end

function ConfigAccess:init()
	self.createContentForSelectInput = if FFlagRemoveUILibraryStyledDropdown
			and FFlagDevFrameworkDropdownShowsLabel
		then function(item)
			return {
				creatorId = item.creatorId,
				creatorType = item.creatorType,
				Id = item.name,
				item = item,
				Key = item.Key,
				Label = item.name,
				name = item.name,
				Text = item.Text,
			}
		end
		else nil
end

function ConfigAccess:render()
	local props = self.props
	local localization = props.Localization
	local style = props.Stylizer

	local Title = props.Title
	local LayoutOrder = props.LayoutOrder
	local TotalHeight = props.TotalHeight
	local owner = props.owner or {}
	local onDropDownSelect = props.onDropDownSelect

	self.dropdownContent = Constants.getOwnerDropDownContent(props.groupsArray, localization)

	local ownerIndex
	-- find index of item in dropdown that corresponds to selected owner id
	for index, creator in pairs(self.dropdownContent) do
		if creator.creatorId == owner.creatorId then
			ownerIndex = index
		end
	end
	assert(ownerIndex)

	local publishAssetTheme = style.publishAsset

	local ownerName
	if
		ownerIndex > #self.dropdownContent
		or (game.CreatorType == Enum.CreatorType.Group and #self.dropdownContent == 1)
	then
		ownerName = ""
	else
		ownerName = self.dropdownContent[ownerIndex].Text
	end

	return Roact.createElement("Frame", {
		Size = UDim2.new(1, 0, 0, TotalHeight),

		BackgroundTransparency = 1,
		BackgroundColor3 = Color3.fromRGB(227, 227, 227),
		BorderSizePixel = 0,

		LayoutOrder = LayoutOrder,
	}, {
		UIListLayout = Roact.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Horizontal,
			HorizontalAlignment = Enum.HorizontalAlignment.Left,
			VerticalAlignment = Enum.VerticalAlignment.Top,
			SortOrder = Enum.SortOrder.LayoutOrder,
			Padding = UDim.new(0, 0),
		}),

		Title = Roact.createElement("TextLabel", {
			Size = UDim2.new(0, Constants.TITLE_GUTTER_WIDTH, 1, 0),

			BackgroundTransparency = 1,
			BorderSizePixel = 0,

			Text = Title,
			TextXAlignment = Enum.TextXAlignment.Left,
			TextYAlignment = Enum.TextYAlignment.Top,
			TextSize = Constants.FONT_SIZE_TITLE,
			TextColor3 = publishAssetTheme.titleTextColor,
			Font = Constants.FONT,
			LayoutOrder = 1,
		}),

		DropDown = if not FFlagRemoveUILibraryStyledDropdown or not FFlagDevFrameworkDropdownShowsLabel
			then Roact.createElement(StyledDropdownMenu, {
				Size = UDim2.new(0, DROP_DOWN_WIDTH, 0, DROP_DOWN_HEIGHT),
				MaxItems = 5,
				ItemHeight = DROP_DOWN_HEIGHT,
				ButtonText = ownerName,
				TextSize = Constants.FONT_SIZE_TITLE,
				SelectedItem = publishAssetTheme.highlightDropdownSelectedItem and self.dropdownContent[ownerIndex].Key,
				ScrollBarThickness = Constants.SCROLLBAR_BACKGROUND_THICKNESS,
				ShowRibbon = publishAssetTheme.showDropdownRibbon,
				ScrollBarPadding = Constants.SCROLLBAR_PADDING,
				Items = self.dropdownContent,
				OnItemClicked = onDropDownSelect,
				LayoutOrder = 2,
				ListWidth = DROP_DOWN_WIDTH,
			})
			else nil,

		DropdownMenu = if FFlagRemoveUILibraryStyledDropdown and FFlagDevFrameworkDropdownShowsLabel
			then Roact.createElement(SelectInput, {
				Items = map(self.dropdownContent, self.createContentForSelectInput),
				LayoutOrder = 2,
				OnItemActivated = onDropDownSelect,
				PlaceholderText = ownerName,
				SelectedIndex = self.dropdownContent[ownerIndex].Key,
				Size = UDim2.new(0, DROP_DOWN_WIDTH, 0, DROP_DOWN_HEIGHT),
				Width = DROP_DOWN_WIDTH,
			})
			else nil,
	})
end

ConfigAccess = withContext({
	Localization = ContextServices.Localization,
	Network = NetworkContext,
	Stylizer = ContextServices.Stylizer,
})(ConfigAccess)

local function mapStateToProps(state, props)
	state = state or {}

	return {
		groupsArray = state.GroupReducer.groupsArray or {},
	}
end

local function mapDispatchToProps(dispatch)
	return {
		getMyGroups = function(networkInterface)
			dispatch(GetMyGroupsRequest(networkInterface))
		end,
	}
end

return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(ConfigAccess)
