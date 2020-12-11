--[[
	The toolbox itself

	Props (many of these come from the store):
		number initialWidth = 0
		number initialSelectedBackgroundIndex = 1
		string initialSelectedCategoryName = ""
		string initialSearchTerm = ""
		number initialSelectedSortIndex = 1

		Backgrounds backgrounds
		Categories categories
		Suggestions suggestions
		Sorts sorts

		callback updatePageInfo()
		callback tryOpenAssetConfig, invoke assetConfig page with an assetId.
]]
local MemStorageService = game:GetService("MemStorageService")

local Plugin = script.Parent.Parent.Parent

local Libs = Plugin.Libs
local Cryo = require(Libs.Cryo)
local Roact = require(Libs.Roact)
local RoactRodux = require(Libs.RoactRodux)
local Framework = require(Libs.Framework)

local SharedPluginConstants = require(Plugin.SharedPluginConstants)

local Util = Plugin.Core.Util
local Constants = require(Util.Constants)
local ContextGetter = require(Util.ContextGetter)
local PageInfoHelper = require(Util.PageInfoHelper)
local getTabs = require(Util.getTabs)
local Analytics = require(Util.Analytics.Analytics)

local Types = Plugin.Core.Types
local Sort = require(Types.Sort)
local Category = require(Types.Category)
local RequestReason = require(Types.RequestReason)

local getNetwork = ContextGetter.getNetwork

local Components = Plugin.Core.Components
local TabSet = require(Components.TabSet)
local Footer = require(Components.Footer.Footer)
local Header = require(Components.Header)
local MainView = require(Components.MainView.MainView)
local SoundPreviewComponent = require(Components.SoundPreviewComponent)

local Requests = Plugin.Core.Networking.Requests
local UpdatePageInfoAndSendRequest = require(Requests.UpdatePageInfoAndSendRequest)
local ChangeMarketplaceTab = require(Requests.ChangeMarketplaceTab)
local GetToolboxManageableGroupsRequest = require(Requests.GetToolboxManageableGroupsRequest)
local GetRolesRequest = require(Requests.GetRolesRequest)
local GetRolesDebugRequest = require(Requests.GetRolesDebugRequest)
local GetRobuxBalance = require(Requests.GetRobuxBalance)

local ContextServices = Framework.ContextServices
local Settings = require(Plugin.Core.ContextServices.Settings)

local RobloxAPI = Framework.RobloxAPI

local FFlagStudioToolboxPersistBackgroundColor = game:DefineFastFlag("StudioToolboxPersistsBackgroundColor", false)
local FFlagUseCategoryNameInToolbox = game:GetFastFlag("UseCategoryNameInToolbox")

local FFlagDebugToolboxGetRolesRequest = game:GetFastFlag("DebugToolboxGetRolesRequest")
local FFlagToolboxDisableMarketplaceAndRecentsForLuobu = game:GetFastFlag("ToolboxDisableMarketplaceAndRecentsForLuobu")
local FFlagToolboxShowRobloxCreatedAssetsForLuobu = game:GetFastFlag("ToolboxShowRobloxCreatedAssetsForLuobu")
local FFlagPluginManagementDirectlyOpenToolbox = game:GetFastFlag("PluginManagementDirectlyOpenToolbox")
local THEME_REFACTOR = Framework.Util.RefactorFlags.THEME_REFACTOR

local Toolbox = Roact.PureComponent:extend("Toolbox")

function Toolbox:handleInitialSettings()
	local networkInterface = getNetwork(self)
	if not self.props.Settings then
		return
	end
	local settings = self.props.Settings:get("Plugin")
	local initialSettings = settings:loadInitialSettings()

	local initialTab
	if not FFlagUseCategoryNameInToolbox then
		initialTab = FFlagToolboxDisableMarketplaceAndRecentsForLuobu and Constants.DEFAULT_TAB or Category.MARKETPLACE_KEY
	end
	-- TODO remove initialSelectedCategoryIndex when FFlagUseCategoryNameInToolbox is retired
	local initialSelectedCategoryIndex
	local initialSelectedSortIndex
	local initialSearchTerm
	local initialSelectedBackgroundIndex
	-- We should reset the categoryName and sortIndex since release of tabs.
	if not FFlagUseCategoryNameInToolbox then
		initialSelectedCategoryIndex = 1
	end
	initialSelectedSortIndex = 1
	initialSearchTerm = ""
	initialSelectedBackgroundIndex = initialSettings.backgroundIndex or 1

	local pageInfoCategories
	if FFlagUseCategoryNameInToolbox then
		pageInfoCategories = Category.getTabForCategoryName(initialSettings.categoryName)
	else
		if FFlagToolboxDisableMarketplaceAndRecentsForLuobu and RobloxAPI:baseURLHasChineseHost() then
			pageInfoCategories = Category.INVENTORY_WITH_GROUPS
		else
			pageInfoCategories = Category.MARKETPLACE
		end
	end

	local newPageInfo = {
		currentTab = (not FFlagUseCategoryNameInToolbox) and (initialTab),
		categories = pageInfoCategories,
		categoryIndex = (not FFlagUseCategoryNameInToolbox) and (initialSelectedCategoryIndex),
		categoryName = initialSettings.categoryName,
		creator = initialSettings.creator,
		searchTerm = initialSearchTerm,
		sorts = Sort.SORT_OPTIONS,
		sortIndex = initialSelectedSortIndex,
		groupIndex = FFlagUseCategoryNameInToolbox and 1 or 0,
		targetPage = 1,
		selectedBackgroundIndex = initialSelectedBackgroundIndex,
		requestReason = RequestReason.InitLoad,
	}

	if FFlagUseCategoryNameInToolbox or FFlagToolboxDisableMarketplaceAndRecentsForLuobu then
		local shouldGetGroups = pageInfoCategories == Category.INVENTORY_WITH_GROUPS or pageInfoCategories == Category.INVENTORY or pageInfoCategories == Category.CREATIONS
		if shouldGetGroups then
			if FFlagUseCategoryNameInToolbox then
				self.props.getToolboxManageableGroups(networkInterface, settings, newPageInfo)
			else
				self.props.getToolboxManageableGroups(networkInterface)
			end
		end
	end

	-- Set the initial page info for the toolbox
	-- This will trigger a web request to load the first round of assets
	self.props.updatePageInfo(networkInterface, settings, newPageInfo)
end

function Toolbox:init(props)
	self.state = {
		toolboxWidth = math.max(props.initialWidth or 0, Constants.TOOLBOX_MIN_WIDTH),
		showSearchOptions = false,
		-- Keep track of the timestamp an asset was last inserted
		-- Allows us to track an analytic if a search is made and no asset is chosen
		mostRecentAssetInsertTime = 0
	}

	self.toolboxRef = Roact.createRef()

	-- If flag is on, use function that gets ref, else use old with rbx param
	self.onAbsoluteSizeChange = function()
		local toolboxWidth = math.max(self.toolboxRef.current.AbsoluteSize.x,
			Constants.TOOLBOX_MIN_WIDTH)
		if self.state.toolboxWidth ~= toolboxWidth then
			self:setState({
				toolboxWidth = toolboxWidth,
			})
		end
	end

	self:handleInitialSettings()

	self.toggleSearchOptions = function()
		local showSearchOptions = self.state.showSearchOptions

		if not showSearchOptions then
			Analytics.onSearchOptionsOpened()
		end

		self:setState({
			showSearchOptions = not showSearchOptions
		})
	end

	local networkInterface = getNetwork(self)

	-- TODO remove determineCategoryIndexOnTabChange when FFlagUseCategoryNameInToolbox is retired
	local function determineCategoryIndexOnTabChange(tabName, newCategories)
		if Category.CREATIONS_KEY == tabName then
			for index, data in ipairs(newCategories) do
				local isSelectable = data and (nil == data.selectable or data.selectable) -- nil for selectable defalts to selectable true
				if isSelectable then
					return index
				end
			end
		end
		return 1
	end

	local function determineCategoryNameOnTabChange(tabName, newCategories)
		if Category.CREATIONS_KEY == tabName then
			for _, category in ipairs(newCategories) do
				local isSelectable = category and (nil == category.selectable or category.selectable) -- nil for selectable defalts to selectable true
				if isSelectable then
					return category.name
				end
			end
		end
		return newCategories[1].name
	end

	local function getCreatorOverrideIfNeeded(tabName)
		if FFlagToolboxShowRobloxCreatedAssetsForLuobu and RobloxAPI:baseURLHasChineseHost() then
			if tabName == Category.MARKETPLACE_KEY then
				return Category.CREATOR_ROBLOX
			end
		end

		return nil
	end

	self.changeMarketplaceTab = function(tabName, optionsOverrides)
		-- TODO remove newCategoryIndex when FFlagUseCategoryNameInToolbox is retired
		local newCategoryIndex = 1
		-- Change tab will always set categoryName to the first category in the new tab.
		local newCategories = Category.getCategories(tabName, self.props.roles)
		local options = Cryo.Dictionary.join({
			categoryIndex = (not FFlagUseCategoryNameInToolbox) and (determineCategoryIndexOnTabChange(tabName, newCategories) or newCategoryIndex),
			categoryName = determineCategoryNameOnTabChange(tabName, newCategories),
			creator = getCreatorOverrideIfNeeded(tabName),
			searchTerm = "",
			sortIndex = 1,
			groupIndex = 0,
			selectedBackgroundIndex = (not FFlagStudioToolboxPersistBackgroundColor) and 0 or nil,
		}, FFlagPluginManagementDirectlyOpenToolbox and optionsOverrides or {})
		local mySettings = self.props.Settings:get("Plugin")
		self.props.changeMarketplaceTab(networkInterface, tabName, newCategories, mySettings, options)

		local currentCategory
		if FFlagUseCategoryNameInToolbox then
			currentCategory = PageInfoHelper.getCategory(self.props.categoryName)
		else
			currentCategory = PageInfoHelper.getCategory(self.props.categories, self.props.categoryIndex)
		end

		local newCategory
		if FFlagUseCategoryNameInToolbox then
			newCategory = PageInfoHelper.getCategory(options.categoryName)
		else
			newCategory = Category.CREATIONS_KEY == tabName and "" or PageInfoHelper.getCategory(newCategories, newCategoryIndex)
		end

		Analytics.onCategorySelected(
			currentCategory,
			newCategory
		)
	end

	self.updateMostRecentAssetTime = function()
		self:setState({
			mostRecentAssetInsertTime = tick()
		})
	end
end

function Toolbox:didMount()
	if self.toolboxRef.current then
		self.toolboxRef.current:GetPropertyChangedSignal("AbsoluteSize"):connect(self.onAbsoluteSizeChange)
	end

	self:handleInitialSettings()

	self.props.setRoles(getNetwork(self))

	self.props.getRobuxBalance(getNetwork(self))

	if FFlagPluginManagementDirectlyOpenToolbox then
		self._showPluginsConnection = MemStorageService:Bind(SharedPluginConstants.SHOW_TOOLBOX_PLUGINS_EVENT, function()
			local categoryIndex
			local categoryName

			if FFlagUseCategoryNameInToolbox then
				categoryName = Category.WHITELISTED_PLUGINS.name
			else
				categoryIndex = Cryo.List.find(Category.MARKETPLACE, Category.WHITELISTED_PLUGINS)

				if not categoryIndex then
					warn("Could not find categoryIndex for plugins to show toolbox plugins")
					return
				end
			end

			self.changeMarketplaceTab(Category.MARKETPLACE_KEY, {
				categoryIndex = categoryIndex,
				categoryName = categoryName,
			})

			Analytics.openedFromPluginManagement()
		end)
	end
end

function Toolbox:willUnmount()
	if FFlagPluginManagementDirectlyOpenToolbox then
		self._showPluginsConnection:Disconnect()
	end
end

function Toolbox:render()
	local props = self.props
	local state = self.state

	local toolboxWidth = state.toolboxWidth
	local showSearchOptions = state.showSearchOptions

	local backgrounds = props.backgrounds
	local suggestions = props.suggestions or {}
	local currentTabKey
	if FFlagUseCategoryNameInToolbox then
		currentTabKey = Category.getTabKeyForCategoryName(props.categoryName)
	else
		currentTabKey = props.currentTab
	end

	local tryOpenAssetConfig = props.tryOpenAssetConfig
	local pluginGui = props.pluginGui

	local toolboxTheme
	if THEME_REFACTOR then
		toolboxTheme = self.props.Stylizer
	else
		toolboxTheme = self.props.Theme:get("Plugin")
	end
	local localizedContent = props.Localization

	local onAbsoluteSizeChange = self.onAbsoluteSizeChange

	local tabHeight = Constants.TAB_WIDGET_HEIGHT
	local headerOffset = tabHeight

	return Roact.createElement("Frame", {
		Position = UDim2.new(0, 0, 0, 0),
		Size = UDim2.new(1, 0, 1, 0),

		BorderSizePixel = 0,
		BackgroundColor3 = toolboxTheme.backgroundColor,

		[Roact.Ref] = self.toolboxRef,
		[Roact.Change.AbsoluteSize] = onAbsoluteSizeChange,
	}, {
		Tabs = Roact.createElement(TabSet, {
			Size = UDim2.new(1, 0, 0, Constants.TAB_WIDGET_HEIGHT),
			Tabs = getTabs(localizedContent),
			CurrentTab = currentTabKey,
			onTabSelected = self.changeMarketplaceTab,
		}),

		Header = Roact.createElement(Header, {
			Position = UDim2.new(0, 0, 0, headerOffset),
			maxWidth = toolboxWidth,
			onSearchOptionsToggled = self.toggleSearchOptions,
			pluginGui = pluginGui,
			mostRecentAssetInsertTime = self.state.mostRecentAssetInsertTime,
		}),

		MainView = Roact.createElement(MainView, {
			Position = UDim2.new(0, 0, 0, headerOffset + Constants.HEADER_HEIGHT + 1),
			Size = UDim2.new(1, 0, 1, -(Constants.HEADER_HEIGHT + Constants.FOOTER_HEIGHT + headerOffset + 2)),

			maxWidth = toolboxWidth,
			suggestions = suggestions,
			showSearchOptions = showSearchOptions,
			onSearchOptionsToggled = self.toggleSearchOptions,
			tryOpenAssetConfig = tryOpenAssetConfig,
			mostRecentAssetInsertTime = self.state.mostRecentAssetInsertTime,
			onAssetInsertionSuccesful = self.updateMostRecentAssetTime,

		}),

		Footer = Roact.createElement(Footer, {
			backgrounds = backgrounds,
		}),

		AudioPreview = Roact.createElement(SoundPreviewComponent),
	})
end

ContextServices.mapToProps(Toolbox, {
	Stylizer = THEME_REFACTOR and ContextServices.Stylizer or nil,
	Theme = (not THEME_REFACTOR) and ContextServices.Theme or nil,
	Localization = ContextServices.Localization,
	Settings = Settings,
})

local function mapStateToProps(state, props)
	state = state or {}
	local pageInfo = state.pageInfo or {}

	return {
		categories = pageInfo.categories or {},
		categoryIndex = (not FFlagUseCategoryNameInToolbox) and (pageInfo.categoryIndex or 0),
		categoryName = FFlagUseCategoryNameInToolbox and (pageInfo.categoryName or Category.DEFAULT.name) or nil,
		currentTab = PageInfoHelper.getCurrentTab(pageInfo),
		sorts = pageInfo.sorts or {},
		roles = state.roles or {}
	}
end

local function mapDispatchToProps(dispatch)
	return {
		setRoles = function(networkInterface)
			if FFlagDebugToolboxGetRolesRequest then
				dispatch(GetRolesDebugRequest(networkInterface))
			else
				dispatch(GetRolesRequest(networkInterface))
			end
		end,

		updatePageInfo = function(networkInterface, settings, newPageInfo)
			dispatch(UpdatePageInfoAndSendRequest(networkInterface, settings, newPageInfo))
		end,

		changeMarketplaceTab = function(networkInterface, tabName, newCategories, settings, options)
			dispatch(ChangeMarketplaceTab(networkInterface, tabName, newCategories, settings, options))
		end,

		getRobuxBalance = function(networkInterface)
			dispatch(GetRobuxBalance(networkInterface))
		end,

		getToolboxManageableGroups = function(networkInterface, settings, newPageInfo)
			dispatch(GetToolboxManageableGroupsRequest(networkInterface, settings, newPageInfo))
		end
	}
end

return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(Toolbox)