local CorePackages = game:GetService("CorePackages")

local InGameMenu = script.Parent.Parent

local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local UIBlox = InGameMenuDependencies.UIBlox
local Images = UIBlox.App.ImageSet.Images

--todo: can remove assets when FFlagInGameMenuSinglePaneDesign and FFlagFixMenuIcons are on and removed
local Assets = require(InGameMenu.Resources.Assets)
local getFFlagInGameMenuSinglePaneDesign = require(InGameMenu.Flags.GetFFlagInGameMenuSinglePaneDesign)
local fflagInGameMenuSinglePaneDesign = getFFlagInGameMenuSinglePaneDesign()

local FFlagFixMenuIcons = require(InGameMenu.Flags.FFlagFixMenuIcons)

local singlePanePages = {
	{
		key = "MainPage",
		navigationDepth = 1,
		component = script.Parent.MainPage,
		parentPage = "MainPage",
	},
	{
		key = "Players",
		title = "CoreScripts.InGameMenu.PageTitle.Players",
		icon = FFlagFixMenuIcons and Images["icons/controls/players"] or Assets.Images.PlayersMenu,
		component = script.PlayersPage,
		navigationDepth = 2,
		parentPage = "MainPage",
	},
	{
		key = "InviteFriends",
		title = "CoreScripts.InGameMenu.PageTitle.InviteFriends",
		icon = FFlagFixMenuIcons and Images["icons/actions/friends/friendInvite"] or Assets.Images.InviteMenu,
		component = script.Parent.InviteFriendsPage,
		navigationDepth = 2,
		parentPage = "MainPage",
	},
	{
		key = "GameSettings",
		title = "CoreScripts.InGameMenu.PageTitle.GameSettings",
		icon = FFlagFixMenuIcons and Images["icons/common/settings"] or Assets.Images.GameSettings,
		component = script.Parent.GameSettingsPage.BasicPage,
		navigationDepth = 2,
		parentPage = "MainPage",
	},
	{
		key = "Report",
		title = "CoreScripts.InGameMenu.PageTitle.Report",
		icon = FFlagFixMenuIcons and Images["icons/actions/feedback"] or Assets.Images.ReportIcon,
		component = script.Parent.ReportPage,
		navigationDepth = 2,
		parentPage = "MainPage",
	},
	{
		key = "Controls",
		title = "CoreScripts.InGameMenu.PageTitle.Controls",
		icon = FFlagFixMenuIcons and Images["icons/controls/controls"] or Assets.Images.ControlsMenu,
		component = script.Parent.ControlsPage,
		isModal = true,
		navigationDepth = 2,
		parentPage = "MainPage",
	},
	{
		key = "AdvancedGameSettings",
		title = "CoreScripts.InGameMenu.PageTitle.GameSettings",
		icon = FFlagFixMenuIcons and Images["icons/menu/settings_large"] or Assets.Images.GameSettings,
		component = script.Parent.GameSettingsPage.AdvancedPage,
		isSecondaryPage = true,
		navigationDepth = 3,
		parentPage = "GameSettings",
	},
}

local doublePanePages = {
	{
		key = "Players",
		title = "CoreScripts.InGameMenu.PageTitle.Players",
		icon = Assets.Images.PlayersMenu,
		component = script.PlayersPage,
	},
	{
		key = "InviteFriends",
		title = "CoreScripts.InGameMenu.PageTitle.InviteFriends",
		icon = Assets.Images.InviteMenu,
		component = script.Parent.InviteFriendsPage,
	},
	{
		key = "GameSettings",
		title = "CoreScripts.InGameMenu.PageTitle.GameSettings",
		icon = Assets.Images.GameSettings,
		component = script.Parent.GameSettingsPage,
	},
	{
		key = "Report",
		title = "CoreScripts.InGameMenu.PageTitle.Report",
		icon = Assets.Images.ReportIcon,
		component = script.Parent.ReportPage,
	},
	{
		key = "Controls",
		title = "CoreScripts.InGameMenu.PageTitle.Controls",
		icon = Assets.Images.ControlsMenu,
		component = script.Parent.ControlsPage,
		isModal = true,
	},
}

local pages = fflagInGameMenuSinglePaneDesign and singlePanePages or doublePanePages

local pagesByKey = {}

for index, page in ipairs(pages) do
	page.index = index
	assert(pagesByKey[page.key] == nil, ("page key %s is duplicated"):format(page.key))
	pagesByKey[page.key] = page
end

return {
	pagesByIndex = pages,
	pagesByKey = pagesByKey,
}