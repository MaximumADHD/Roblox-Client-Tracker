--!nonstrict
local CorePackages = game:GetService("CorePackages")
local VRService = game:GetService("VRService")

local InGameMenu = script.Parent.Parent

local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local UIBlox = InGameMenuDependencies.UIBlox
local Images = UIBlox.App.ImageSet.Images
local GameIconButton = require(InGameMenu.Components.SideNavigation.GameIconButton)

local Constants = require(InGameMenu.Resources.Constants)

local GetFFlagShareInviteLinkContextMenuV3Enabled = require(
	InGameMenu.Flags.GetFFlagShareInviteLinkContextMenuV3Enabled
)

local InGameMenuV3LanguageSwitcherEnabled = require(
	InGameMenu.Flags.InGameMenuV3LanguageSwitcherEnabled
)

local InspectAndBuyV2IXPTest = require(InGameMenu.Flags.InspectAndBuyV2IXPTest)


local navigationBar = {
	{
		page = Constants.LeaveToAppPromptPageKey,
		iconOn = Images["icons/menu/home_on"],
		iconOff = Images["icons/menu/home_off"],
	},
	{
		page = Constants.PlayersPageKey,
		iconOn = Images["icons/menu/friendsOn"],
		iconOff = Images["icons/menu/friends"],
	},
	{
		page = Constants.MainPagePageKey,
		iconComponent = GameIconButton,
	},
	{
		page = Constants.GameSettingsPageKey,
		iconOn = Images["icons/common/settingsOn"],
		iconOff = Images["icons/common/settings"],
	},
}

-- For root pages, the parentPage should be nil
local pages = {
	{
		key = Constants.InitalPageKey,
		navigationDepth = 0,
		component = script.InitalPage,
		parentPage = nil,
	},
	{
		key = Constants.MainPagePageKey,
		navigationDepth = 1,
		component = script.Parent.MainPage,
		parentPage = nil,
	},
	{
		key = Constants.PlayersPageKey,
		title = "CoreScripts.InGameMenu.PageTitle.Players",
		icon = Images["icons/controls/players"],
		component = script.PlayersPageWrapper,
		navigationDepth = 1,
		parentPage = nil,
	},
	{
		key = Constants.InviteFriendsPageKey,
		title = "CoreScripts.InGameMenu.PageTitle.Friends",
		icon = Images["icons/actions/friends/friendInvite"],
		component = script.Parent.InviteFriendsPage,
		navigationDepth = 2,
		parentPage = Constants.PlayersPageKey,
	},
	{
		key = "ShareServerLink",
		title = "CoreScripts.InGameMenu.Action.ShareServerLink",
		titleOn = "CoreScripts.InGameMenu.Label.Copied",
		icon = Images["icons/actions/share"],
		navigationDepth = 2,
		parentPage = GetFFlagShareInviteLinkContextMenuV3Enabled() and Constants.MainPagePageKey or nil,
		actionKey = "shareServerLink",
	},
	{
		key = "Favorite",
		title = "CoreScripts.InGameMenu.Action.Favorite",
		titleOn = "CoreScripts.InGameMenu.Action.Favorited",
		icon = Images["icons/actions/favoriteOff"],
		iconOn = Images["icons/actions/favoriteOn"],
		navigationDepth = 2,
		parentPage = Constants.MainPagePageKey,
		actionKey = "favorite",
	},
	{
		key = "Follow",
		title = "CoreScripts.InGameMenu.Action.Follow",
		titleOn = "CoreScripts.InGameMenu.Action.Following",
		icon = Images["icons/common/notificationOff"],
		iconOn = Images["icons/common/notificationOn"],
		navigationDepth = 2,
		parentPage = Constants.MainPagePageKey,
		actionKey = "follow",
	},
	{
		key = "ReportExperience",
		title = "CoreScripts.InGameMenu.Report.ReportTitle",
		icon = Images["icons/actions/feedback"],
		navigationDepth = 2,
		parentPage = Constants.MainPagePageKey,
		actionKey = "reportExperience",
	},
	{
		key = Constants.GameSettingsPageKey,
		title = "CoreScripts.InGameMenu.PageTitle.GameSettings",
		icon = Images["icons/common/settings"],
		component = script.Parent.GameSettingsPage.BasicPage,
		navigationDepth = 1,
		parentPage = nil,
	},
	{
		key = Constants.ControlsPageKey,
		title = "CoreScripts.InGameMenu.PageTitle.Controls",
		icon = Images["icons/controls/controls"],
		component = script.Parent.ControlsPage,
		isModal = not VRService.VREnabled,
		navigationDepth = 2,
		parentPage = Constants.MainPagePageKey,
	},
	{
		key = "AdvancedGameSettings",
		title = "CoreScripts.InGameMenu.PageTitle.GameSettings",
		icon = Images["icons/menu/settings_large"],
		component = script.Parent.GameSettingsPage.AdvancedPage,
		isSecondaryPage = true,
		navigationDepth = 2,
		parentPage = Constants.GameSettingsPageKey,
	},
	{
		key = "LanguageSelectionSettings",
		title = "CoreScripts.InGameMenu.PageTitle.LanguageSelection",
		icon = Images["icons/controls/language"],
		component = script.Parent.LanguageSettingsPage.BasicPage,
		isSecondaryPage = true,
		navigationDepth = 2,
		parentPage = InGameMenuV3LanguageSwitcherEnabled() and Constants.MainPagePageKey or nil,
	},
	{
		key = Constants.LeaveToAppPromptPageKey,
		navigationDepth = 10,
		component = script.Dialog.LeaveToAppPrompt,
		parentPage = nil,
	},
	{
		key = Constants.LeaveGamePromptPageKey,
		navigationDepth = 10,
		component = script.Dialog.LeaveGamePrompt,
		parentPage = nil,
	},
}

if InspectAndBuyV2IXPTest.isEnabled() then
	table.insert(pages, {
		key = Constants.InspectAndBuyPageKey,
		icon = nil,
		component = script.Parent.InspectAndBuyPage.InspectAndBuyPage,
		navigationDepth = 3,
		parentPage = Constants.PlayersPageKey,
	})

	table.insert(pages, {
		key = Constants.InspectAndBuyAssetDetailsPageKey,
		icon = nil,
		component = script.Parent.InspectAndBuyPage.AssetDetailsPage,
		navigationDepth = 4,
		parentPage = Constants.InspectAndBuyPageKey,
	})
end

local pagesByKey = {}
local navigationBarByPageKey = {}

for index, navigationBarItem in ipairs(navigationBar) do
	navigationBarItem.index = index
	navigationBarByPageKey[navigationBarItem.page] = navigationBarItem
end

for index, page in ipairs(pages) do
	page.index = index
	page.navigationBar = navigationBarByPageKey[page.key]
	assert(pagesByKey[page.key] == nil, ("page key %s is duplicated"):format(page.key))
	pagesByKey[page.key] = page
end

local function getBaseNavigationBarItemForPage(pageKey)
	if pageKey ~= nil and pagesByKey[pageKey].navigationBar == nil and pagesByKey[pageKey].parentPage ~= nil then
		pagesByKey[pageKey].navigationBar = getBaseNavigationBarItemForPage(pagesByKey[pageKey].parentPage)
	end
	return pagesByKey[pageKey].navigationBar
end

local function navigationBarSelectedIndexForPage(pageKey)
	local navigationBarSelectedIndex = 1
	local page = pagesByKey[pageKey]
	if page and page.navigationBar ~= nil then
		navigationBarSelectedIndex = page.navigationBar.index
	end
	return navigationBarSelectedIndex
end

for index, page in ipairs(pages) do
	getBaseNavigationBarItemForPage(page.key)
end

return {
	pagesByIndex = pages,
	pagesByKey = pagesByKey,
	navigationBarByIndex = navigationBar,
	navigationBarByPageKey = navigationBarByPageKey,
	navigationBarSelectedIndexForPage = navigationBarSelectedIndexForPage,
}
