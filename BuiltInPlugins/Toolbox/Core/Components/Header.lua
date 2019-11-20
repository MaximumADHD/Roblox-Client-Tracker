--[[
	Header of the toolbox

	Props:
		Categories categories
		number categoryIndex
		string searchTerm
		Groups groups
		number groupIndex

		number maxWidth

		callback onCategorySelected(number index)
		callback onSearchRequested(string searchTerm)
		callback onGroupSelected()
		callback onSearchOptionsToggled()
]]

local FFlagToolboxShowGroupCreations = game:GetFastFlag("ToolboxShowGroupCreations")
local FFlagToolboxHideSearchForMyPlugins = game:DefineFastFlag("ToolboxHideSearchForMyPlugins", false)

local Plugin = script.Parent.Parent.Parent

local Libs = Plugin.Libs
local Roact = require(Libs.Roact)
local RoactRodux = require(Libs.RoactRodux)

local Analytics = require(Plugin.Core.Util.Analytics.Analytics)
local Constants = require(Plugin.Core.Util.Constants)
local ContextGetter = require(Plugin.Core.Util.ContextGetter)
local ContextHelper = require(Plugin.Core.Util.ContextHelper)
local DebugFlags = require(Plugin.Core.Util.DebugFlags)
local PageInfoHelper = require(Plugin.Core.Util.PageInfoHelper)

local Category = require(Plugin.Core.Types.Category)

local getNetwork = ContextGetter.getNetwork
local getSettings = ContextGetter.getSettings
local withTheme = ContextHelper.withTheme
local withLocalization = ContextHelper.withLocalization

local DropdownMenu = require(Plugin.Core.Components.DropdownMenu)
local SearchBar = require(Plugin.Core.Components.SearchBar.SearchBar)
local SearchOptionsButton = require(Plugin.Core.Components.SearchOptions.SearchOptionsButton)

local RequestSearchRequest = require(Plugin.Core.Networking.Requests.RequestSearchRequest)
local SelectCategoryRequest = require(Plugin.Core.Networking.Requests.SelectCategoryRequest)
local SelectGroupRequest = require(Plugin.Core.Networking.Requests.SelectGroupRequest)

local Header = Roact.PureComponent:extend("Header")

function Header:init()
	local networkInterface = getNetwork(self)
	local settings = getSettings(self)

	self.onCategorySelected = function(index)
		if self.props.categoryIndex ~= index then
			local newCategory = PageInfoHelper.getCategory(self.props.categories, index)
			local currentCategory = PageInfoHelper.getCategory(self.props.categories, self.props.categoryIndex)

			Analytics.onCategorySelected(
				currentCategory,
				newCategory
			)

			self.props.selectCategory(networkInterface, settings, index)
		end
	end

	self.onGroupSelected = function(index)
		if self.props.groupIndex ~= index then
			self.props.selectGroup(networkInterface, index)
		end
	end

	self.onSearchRequested = function(searchTerm)
		if type(searchTerm) ~= "string" and DebugFlags.shouldDebugWarnings() then
			warn(("Toolbox onSearchRequested searchTerm = %s is not a string"):format(tostring(searchTerm)))
		end

		local creator = self.props.creatorFilter
		local creatorId = creator and creator.Id or nil

		Analytics.onTermSearched(
			PageInfoHelper.getCategory(self.props.categories, self.props.categoryIndex),
			searchTerm,
			creatorId
		)

		self.props.requestSearch(networkInterface, settings, searchTerm)
	end

	self.onSearchOptionsToggled = function()
		if self.props.onSearchOptionsToggled then
			self.props.onSearchOptionsToggled()
		end
	end
end

function Header:render()
	return withTheme(function(theme)
		return withLocalization(function(localization, localizedContent)
			local props = self.props

			local categories = localization:getLocalizedCategories(props.categories)
			local categoryIndex = props.categoryIndex or 0
			local currentTab = props.currentTab
			local onCategorySelected = self.onCategorySelected

			local searchTerm = props.searchTerm
			local onSearchRequested = self.onSearchRequested

			local groups = props.groups
			local groupIndex = props.groupIndex
			local onGroupSelected = self.onGroupSelected

			local showSearchOptions = currentTab == Category.MARKETPLACE_KEY

			local dropdownWidth = showSearchOptions and Constants.HEADER_DROPDOWN_MIN_WIDTH
				or Constants.HEADER_DROPDOWN_MAX_WIDTH
			local optionsButtonWidth = showSearchOptions
				and Constants.HEADER_OPTIONSBUTTON_WIDTH + Constants.HEADER_INNER_PADDING or 0

			local onSearchOptionsToggled = self.onSearchOptionsToggled

			local maxWidth = props.maxWidth or 0
			local searchBarWidth = math.max(100, maxWidth
					- (2 * Constants.HEADER_OUTER_PADDING)
					- dropdownWidth
					- optionsButtonWidth
					- Constants.HEADER_INNER_PADDING)

			local isGroupCategory = Category.categoryIsGroupAsset(currentTab, categoryIndex)

			local headerTheme = theme.header

			local isCreationsTab = currentTab == Category.CREATIONS_KEY
			local isInventoryTab = currentTab == Category.INVENTORY_KEY

			local fullWidthDropdown
			if FFlagToolboxShowGroupCreations then
				fullWidthDropdown = isCreationsTab and not isGroupCategory
			else
				fullWidthDropdown = isCreationsTab
			end

			local showSearchBar
			if FFlagToolboxHideSearchForMyPlugins then
				local isPlugins = Category.categoryIsPlugin(currentTab, categoryIndex)
				showSearchBar = not isGroupCategory and not isCreationsTab
					and not (isInventoryTab and isPlugins)
			else
				showSearchBar = not isGroupCategory and not isCreationsTab
			end

			return Roact.createElement("ImageButton", {
				Position = props.Position,
				Size = UDim2.new(1, 0, 0, Constants.HEADER_HEIGHT),
				BackgroundColor3 = headerTheme.backgroundColor,
				BorderSizePixel = 0,
				ZIndex = 2,
				AutoButtonColor = false,
			},{
				UIPadding = Roact.createElement("UIPadding", {
					PaddingBottom = UDim.new(0, Constants.HEADER_OUTER_PADDING),
					PaddingLeft = UDim.new(0, Constants.HEADER_OUTER_PADDING),
					PaddingRight = UDim.new(0, Constants.HEADER_OUTER_PADDING),
					PaddingTop = UDim.new(0, Constants.HEADER_OUTER_PADDING),
				}),

				UIListLayout = Roact.createElement("UIListLayout", {
					FillDirection = Enum.FillDirection.Horizontal,
					SortOrder = Enum.SortOrder.LayoutOrder,
					Padding = UDim.new(0, Constants.HEADER_INNER_PADDING),
				}),

				CategoryMenu = Roact.createElement(DropdownMenu, {
					Position = UDim2.new(0, 0, 0, 0),
					Size = fullWidthDropdown and UDim2.new(1, 0, 1, 0) or UDim2.new(0, dropdownWidth, 1, 0),
					LayoutOrder = 0,
					visibleDropDownCount = 8,
					selectedDropDownIndex = categoryIndex,

					items = categories,
					key = (not isCreationsTab) and "category" or nil,
					onItemClicked = onCategorySelected,
				}),

				SearchBar = showSearchBar and Roact.createElement(SearchBar, {
					width = searchBarWidth,
					LayoutOrder = 1,

					searchTerm = searchTerm,
					showSearchButton = true,
					onSearchRequested = onSearchRequested,
				}),

				SearchOptionsButton = showSearchOptions and Roact.createElement(SearchOptionsButton, {
					LayoutOrder = 2,
					onClick = onSearchOptionsToggled,
				}),

				GroupMenu = isGroupCategory and Roact.createElement(DropdownMenu, {
					Position = UDim2.new(0, 0, 0, 0),
					Size = UDim2.new(0, searchBarWidth, 1, 0),
					LayoutOrder = 1,
					visibleDropDownCount = 8,
					selectedDropDownIndex = groupIndex,

					items = groups,
					key = "id",
					onItemClicked = onGroupSelected,
				}),
			})
		end)
	end)
end

local EventName = "tabRefresh"
local function getTabRefreshEvent(pluginGui)
	if not pluginGui then
		return nil
	end

	return pluginGui:FindFirstChild(EventName)
end

local function getOrCreateTabRefreshEvent(pluginGui)
	local theEvent = getTabRefreshEvent(pluginGui)
	if not theEvent then
		theEvent = Instance.new("BindableEvent")
		theEvent.Name = EventName
		theEvent.Parent = pluginGui
	end
	return theEvent
end

local function destroyTabRefreshEvent(pluginGui)
	local theEvent = getTabRefreshEvent(pluginGui)
	if theEvent then
		theEvent:Destroy()
	end
end

function Header:addTabRefreshCallback()
	if not self.tabRefreshConnection then
		local theEvent = getOrCreateTabRefreshEvent(self.props.pluginGui)
		self.tabRefreshConnection = theEvent.Event:connect(function()
			self.props.selectCategory(getNetwork(self), getSettings(self), self.props.categoryIndex)
		end)
	end
end

function Header:removeTabRefreshCallback()
	if self.tabRefreshConnection then
		self.tabRefreshConnection:disconnect()
		self.tabRefreshConnection = nil
	end
end

function Header:didMount()
	getOrCreateTabRefreshEvent(self.props.pluginGui)
	self:addTabRefreshCallback()
end

function Header:willUnmount()
	self:removeTabRefreshCallback()
	destroyTabRefreshEvent(self.props.pluginGui)
end

local function mapStateToProps(state, props)
	state = state or {}

	local pageInfo = state.pageInfo or {}

	return {
		categories = pageInfo.categories or {},
		currentTab = pageInfo.currentTab or Category.MARKETPLACE_KEY,
		categoryIndex = pageInfo.categoryIndex or 1,
		searchTerm = pageInfo.searchTerm or "",
		groups = pageInfo.groups or {},
		groupIndex = pageInfo.groupIndex or 0,
		creatorFilter = pageInfo.creator or {},
	}
end

local function mapDispatchToProps(dispatch)
	return {
		selectCategory = function(networkInterface, settings, categoryIndex)
			dispatch(SelectCategoryRequest(networkInterface, settings, categoryIndex))
		end,

		selectGroup = function(networkInterface, groupIndex)
			dispatch(SelectGroupRequest(networkInterface, groupIndex))
		end,

		requestSearch = function(networkInterface, settings, searchTerm)
			dispatch(RequestSearchRequest(networkInterface, settings, searchTerm))
		end,
	}
end

return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(Header)
