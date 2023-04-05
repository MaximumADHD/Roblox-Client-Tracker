local Root = script:FindFirstAncestor("TenFootUiGlobalNav")
local Packages = Root.Parent
local React = require(Packages.React)
local Cryo = require(Packages.Cryo)
local TenFootUiCommon = require(Packages.TenFootUiCommon)
local TenFootUiContext = TenFootUiCommon.TenFootUiContext
local AppNotificationService = require(Packages.RoactServiceTags).AppNotificationService
local LocalizationRoactContext = require(Packages.Localization).LocalizationRoactContext
local useNavigation = require(Packages.RoactUtils).Hooks.useNavigation
local makeGlobalNavAnalytics = require(Root.Analytics.makeGlobalNavAnalytics)
local GlobalNav = require(Root.Components.GlobalNav)

type GlobalNavItem = TenFootUiCommon.GlobalNavItem
type GlobalNavConfig = TenFootUiCommon.GlobalNavConfig

local function useGlobalNavProps(): GlobalNav.Props
	local tenFootUiContext = React.useContext(TenFootUiContext)

	assert(tenFootUiContext, "TenFootUiContext must be configured before using GlobalNav")

	local localization: any = React.useContext(LocalizationRoactContext)
	local navigation = useNavigation()
	local notificationService = tenFootUiContext.useRoactService(AppNotificationService)
	local analytics = tenFootUiContext.useRoactService(tenFootUiContext.RoactAnalytics)
	local globalNavAnalytics = makeGlobalNavAnalytics(analytics, tenFootUiContext.buttonClick)
	local globalNavConfig = tenFootUiContext.globalNavConfig

	local navigationState = navigation.state
	local currentRoute = navigationState.routes[navigationState.index]
	local currentRouteName = currentRoute.routeName

	local navigate = function(item)
		local page = item.page

		if currentRouteName == page then
			tenFootUiContext.LuaAppEvents.ReloadPage:fire(page)
			return
		end

		navigation.navigate(page)

		if item.actionType then
			notificationService:ActionTaken(item.actionType)
		end

		globalNavAnalytics.ButtonActivated(page, currentRouteName)
	end

	local tabGroupItems = Cryo.List.map(globalNavConfig.tabs, function(tab)
		return {
			title = localization:Format(tab.titleLocalizationKey),
			icon = tab.icon,
			iconComponent = tab.iconComponent,
			onActivated = function()
				navigate(tab)
			end,
			showRoundedBackground = currentRouteName == tab.page,
		}
	end)

	local optionGroupItems = Cryo.List.map(globalNavConfig.options, function(option)
		return {
			label = localization:Format(option.titleLocalizationKey),
			icon = option.iconComponent or option.icon,
			onActivated = function()
				navigate(option)
			end,
		}
	end)

	return {
		tabGroupProps = {
			items = tabGroupItems,
		},
		optionGroupProps = {
			items = optionGroupItems,
		},
	}
end

return useGlobalNavProps
