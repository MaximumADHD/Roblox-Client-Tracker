local CorePackages = game:GetService("CorePackages")

local InGameMenu = script.Parent.Parent

local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local UIBlox = InGameMenuDependencies.UIBlox
local Images = UIBlox.App.ImageSet.Images

local Constants = require(InGameMenu.Resources.Constants)

--todo: can remove assets when FFlagInGameMenuSinglePaneDesign and FFlagFixMenuIcons are on and removed
local Assets = require(InGameMenu.Resources.Assets)

local FFlagFixMenuIcons = require(InGameMenu.Flags.FFlagFixMenuIcons)
local FFlagFixInGameNavTreeCrash = require(InGameMenu.Flags.FFlagFixInGameNavTreeCrash)

-- For root pages, the parentPage should be nil
local pages
if FFlagFixInGameNavTreeCrash then
	pages = {
		{
			key = Constants.InitalPageKey,
			navigationDepth = 1,
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
			key = "Players",
			title = "CoreScripts.InGameMenu.PageTitle.Players",
			icon = FFlagFixMenuIcons and Images["icons/controls/players"] or Assets.Images.PlayersMenu,
			component = script.PlayersPage,
			navigationDepth = 2,
			parentPage = Constants.MainPagePageKey,
		},
		{
			key = "InviteFriends",
			title = "CoreScripts.InGameMenu.PageTitle.InviteFriends",
			icon = FFlagFixMenuIcons and Images["icons/actions/friends/friendInvite"] or Assets.Images.InviteMenu,
			component = script.Parent.InviteFriendsPage,
			navigationDepth = 2,
			parentPage = Constants.MainPagePageKey,
		},
		{
			key = "GameSettings",
			title = "CoreScripts.InGameMenu.PageTitle.GameSettings",
			icon = FFlagFixMenuIcons and Images["icons/common/settings"] or Assets.Images.GameSettings,
			component = script.Parent.GameSettingsPage.BasicPage,
			navigationDepth = 2,
			parentPage = Constants.MainPagePageKey,
		},
		{
			key = "Report",
			title = "CoreScripts.InGameMenu.PageTitle.Report",
			icon = FFlagFixMenuIcons and Images["icons/actions/feedback"] or Assets.Images.ReportIcon,
			component = script.Parent.ReportPage,
			navigationDepth = 2,
			parentPage = Constants.MainPagePageKey,
		},
		{
			key = "Controls",
			title = "CoreScripts.InGameMenu.PageTitle.Controls",
			icon = FFlagFixMenuIcons and Images["icons/controls/controls"] or Assets.Images.ControlsMenu,
			component = script.Parent.ControlsPage,
			isModal = true,
			navigationDepth = 2,
			parentPage = Constants.MainPagePageKey,
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
		{
			key = Constants.LeaveToAppPromptPageKey,
			navigationDepth = 1,
			component = script.Dialog.LeaveToAppPrompt,
			parentPage = nil,
		},
		{
			key = Constants.LeaveGamePromptPageKey,
			navigationDepth = 1,
			component = script.Dialog.LeaveGamePrompt,
			parentPage = nil,
		},
	}
else
	pages = {
		{
			key = Constants.InitalPageKey,
			navigationDepth = 1,
			component = script.InitalPage,
			parentPage = Constants.InitalPageKey,
		},
		{
			key = Constants.MainPagePageKey,
			navigationDepth = 1,
			component = script.Parent.MainPage,
			parentPage = Constants.MainPagePageKey,
		},
		{
			key = "Players",
			title = "CoreScripts.InGameMenu.PageTitle.Players",
			icon = FFlagFixMenuIcons and Images["icons/controls/players"] or Assets.Images.PlayersMenu,
			component = script.PlayersPage,
			navigationDepth = 2,
			parentPage = Constants.MainPagePageKey,
		},
		{
			key = "InviteFriends",
			title = "CoreScripts.InGameMenu.PageTitle.InviteFriends",
			icon = FFlagFixMenuIcons and Images["icons/actions/friends/friendInvite"] or Assets.Images.InviteMenu,
			component = script.Parent.InviteFriendsPage,
			navigationDepth = 2,
			parentPage = Constants.MainPagePageKey,
		},
		{
			key = "GameSettings",
			title = "CoreScripts.InGameMenu.PageTitle.GameSettings",
			icon = FFlagFixMenuIcons and Images["icons/common/settings"] or Assets.Images.GameSettings,
			component = script.Parent.GameSettingsPage.BasicPage,
			navigationDepth = 2,
			parentPage = Constants.MainPagePageKey,
		},
		{
			key = "Report",
			title = "CoreScripts.InGameMenu.PageTitle.Report",
			icon = FFlagFixMenuIcons and Images["icons/actions/feedback"] or Assets.Images.ReportIcon,
			component = script.Parent.ReportPage,
			navigationDepth = 2,
			parentPage = Constants.MainPagePageKey,
		},
		{
			key = "Controls",
			title = "CoreScripts.InGameMenu.PageTitle.Controls",
			icon = FFlagFixMenuIcons and Images["icons/controls/controls"] or Assets.Images.ControlsMenu,
			component = script.Parent.ControlsPage,
			isModal = true,
			navigationDepth = 2,
			parentPage = Constants.MainPagePageKey,
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
		{
			key = Constants.LeaveToAppPromptPageKey,
			navigationDepth = 1,
			component = script.Dialog.LeaveToAppPrompt,
			parentPage = Constants.LeaveToAppPromptPageKey,
		},
		{
			key = Constants.LeaveGamePromptPageKey,
			navigationDepth = 1,
			component = script.Dialog.LeaveGamePrompt,
			parentPage = Constants.LeaveGamePromptPageKey,
		},
	}
end

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
