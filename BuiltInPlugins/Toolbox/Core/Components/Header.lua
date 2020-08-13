--[[
	Header of the toolbox

	Props:
		Categories categories
		string categoryName
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
local FFlagToolboxHideSearchForRecent = game:DefineFastFlag("ToolboxHideSearchForRecent", false)
local FFlagEnableSearchedWithoutInsertionAnalytic = game:GetFastFlag("EnableSearchedWithoutInsertionAnalytic")
local FFlagUseCategoryNameInToolbox = game:GetFastFlag("UseCategoryNameInToolbox")

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

local ContextServices = require(Libs.Framework.ContextServices)
local Settings = require(Plugin.Core.ContextServices.Settings)

local DropdownMenu = require(Plugin.Core.Components.DropdownMenu)
local SearchBar = require(Plugin.Core.Components.SearchBar.SearchBar)
local SearchOptionsButton = require(Plugin.Core.Components.SearchOptions.SearchOptionsButton)

local RequestSearchRequest = require(Plugin.Core.Networking.Requests.RequestSearchRequest)
local SelectCategoryRequest = require(Plugin.Core.Networking.Requests.SelectCategoryRequest)
local SelectGroupRequest = require(Plugin.Core.Networking.Requests.SelectGroupRequest)


local Header = Roact.PureComponent:extend("Header")

local globalSettings = settings

function Header:init()
	local networkInterface = getNetwork(self)
	local settings

	if FFlagUseCategoryNameInToolbox then
		self.onCategorySelected = function(index)
			local categoryName = self.props.categories[index].name
			if self.props.categoryName ~= categoryName then
				settings = self.props.Settings:get("Plugin")

				Analytics.onCategorySelected(
					self.props.categoryName,
					categoryName
				)

				self.props.selectCategory(networkInterface, settings, categoryName)
			end
		end

	else

		self.onCategorySelected = function(index)
			if self.props.categoryIndex ~= index then
				settings = self.props.Settings:get("Plugin")
				local newCategory = PageInfoHelper.getCategory(self.props.categories, index)
				local currentCategory = PageInfoHelper.getCategory(self.props.categories, self.props.categoryIndex)

				Analytics.onCategorySelected(
					currentCategory,
					newCategory
				)

				self.props.selectCategory(networkInterface, settings, index)
			end
		end

	end

	self.onGroupSelected = function(index)
		if self.props.groupIndex ~= index then
			self.props.selectGroup(networkInterface, index)
		end
	end

	self.onSearchRequested = function(searchTerm)
		local settings = self.props.Settings:get("Plugin")
		if type(searchTerm) ~= "string" and DebugFlags.shouldDebugWarnings() then
			warn(("Toolbox onSearchRequested searchTerm = %s is not a string"):format(tostring(searchTerm)))
		end

		local creator = self.props.creatorFilter
		local creatorId = creator and creator.Id or nil

		local category
		if FFlagUseCategoryNameInToolbox then
			category = PageInfoHelper.getCategory(self.props.categoryName)
		else
			category = PageInfoHelper.getCategory(self.props.categories, self.props.categoryIndex)
        end

		Analytics.onTermSearched(
			category,
			searchTerm,
			creatorId
		)

		if FFlagEnableSearchedWithoutInsertionAnalytic then

			-- Set up a delayed callback to check if an asset was inserted
			self.mostRecentSearchRequestTime = tick()
			local mySearchRequestTime = self.mostRecentSearchRequestTime
			local StudioSearchWithoutInsertionTimeSeconds = globalSettings():GetFVariable("StudioSearchWithoutInsertionTimeSeconds")
			delay(StudioSearchWithoutInsertionTimeSeconds, function()
				-- Only use the callback for the most recent search
				if (mySearchRequestTime == self.mostRecentSearchRequestTime) then
					-- Check if an asset has been inserted recently
					self:checkRecentAssetInsertion()
				end
			end)

		end

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
			local categoryName = props.categoryName
			local categoryIndex
			if FFlagUseCategoryNameInToolbox then
				categoryIndex = Category.getCategoryIndex(categoryName)
			else
				categoryIndex = props.categoryIndex or 0
			end
			-- TODO remove currentTab when FFlagUseCategoryNameInToolbox is retired
			local currentTab = props.currentTab
			local onCategorySelected = self.onCategorySelected

			local searchTerm = props.searchTerm
			local onSearchRequested = self.onSearchRequested

			local groups = props.groups
			local groupIndex = props.groupIndex
			local onGroupSelected = self.onGroupSelected


			local showSearchOptions
			if FFlagUseCategoryNameInToolbox then
				showSearchOptions = Category.getTabForCategoryName(props.categoryName) == Category.MARKETPLACE
			else
				showSearchOptions = currentTab == Category.MARKETPLACE_KEY
			end

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

			local isGroupCategory
			if FFlagUseCategoryNameInToolbox then
				isGroupCategory = Category.categoryIsGroupAsset(categoryName)
			else
				isGroupCategory = Category.categoryIsGroupAsset(currentTab, categoryIndex)
			end

			local headerTheme = theme.header

			local isCreationsTab
			if FFlagUseCategoryNameInToolbox then
				isCreationsTab = Category.getTabForCategoryName(categoryName) == Category.CREATIONS
			else
				isCreationsTab = currentTab == Category.CREATIONS_KEY
			end
			local isInventoryTab
			if FFlagUseCategoryNameInToolbox then
				isInventoryTab = Category.getTabForCategoryName(categoryName) == Category.INVENTORY
			else
				isInventoryTab = currentTab == Category.INVENTORY_KEY
			end

			local fullWidthDropdown
			if FFlagToolboxShowGroupCreations then
				fullWidthDropdown = isCreationsTab and not isGroupCategory
			else
				fullWidthDropdown = isCreationsTab
			end

			local showSearchBar
			if FFlagToolboxHideSearchForMyPlugins then
				local isPlugins
				if FFlagUseCategoryNameInToolbox then
					isPlugins = Category.categoryIsPlugin(categoryName)
				else
					isPlugins = Category.categoryIsPlugin(currentTab, categoryIndex)
				end
				showSearchBar = not isGroupCategory and not isCreationsTab
					and not (isInventoryTab and isPlugins)
			else
				showSearchBar = not isGroupCategory and not isCreationsTab
			end

			if FFlagToolboxHideSearchForRecent then
				local isRecentsTab
				if FFlagUseCategoryNameInToolbox then
					isRecentsTab = Category.getTabForCategoryName(categoryName) == Category.RECENT
				else
					isRecentsTab = currentTab == Category.RECENT_KEY
				end
				if isRecentsTab then
					showSearchBar = false
					fullWidthDropdown = true
				end
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

function Header:checkRecentAssetInsertion()
	-- Check if an asset has been inserted since the most recent search was entered
	if (self.mostRecentSearchRequestTime > self.props.mostRecentAssetInsertTime) then
		local creator = self.props.creatorFilter
		local creatorId = creator and creator.Id or nil
		-- No asset has been added
		Analytics.onTermSearchedWithoutInsertion(
			PageInfoHelper.getCategory(self.props.categories, self.props.categoryIndex),
			self.props.searchTerm,
			creatorId
		)
	end
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

			local categoryKey
			if FFlagUseCategoryNameInToolbox then
				categoryKey = self.props.categoryName
			else
				categoryKey = self.props.categoryIndex
			end

			local settings = self.props.Settings:get("Plugin")
			self.props.selectCategory(getNetwork(self), settings, categoryKey)
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

ContextServices.mapToProps(Header, {
	Settings = Settings,
})

local function mapStateToProps(state, props)
	state = state or {}

	local pageInfo = state.pageInfo or {}

	return {
		categories = pageInfo.categories or {},
		currentTab = PageInfoHelper.getCurrentTab(pageInfo),
		categoryIndex = (not FFlagUseCategoryNameInToolbox) and (pageInfo.categoryIndex or 0),
		categoryName = FFlagUseCategoryNameInToolbox and (pageInfo.categoryName or Category.DEFAULT.name) or nil,
		searchTerm = pageInfo.searchTerm or "",
		groups = pageInfo.groups or {},
		groupIndex = pageInfo.groupIndex or 0,
		creatorFilter = pageInfo.creator or {},
	}
end

local function mapDispatchToProps(dispatch)
	return {
		-- TODO rename categoryKey to categoryName when FFlagUseCategoryNameInToolbox is retired
		selectCategory = function(networkInterface, settings, categoryKey)
			dispatch(SelectCategoryRequest(networkInterface, settings, categoryKey))
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
