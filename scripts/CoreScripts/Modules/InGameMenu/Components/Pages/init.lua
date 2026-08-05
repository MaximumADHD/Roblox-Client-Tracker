--!nonstrict
local CorePackages = game:GetService("CorePackages")

local InGameMenu = script.Parent.Parent

local InGameMenuDependencies = require(CorePackages.Packages.InGameMenuDependencies)
local UIBlox = InGameMenuDependencies.UIBlox
local Images = UIBlox.App.ImageSet.Images

local SharedFlags = require(CorePackages.Workspace.Packages.SharedFlags)
local FFlagCoreUiMigrateUIBloxToFoundation = SharedFlags.FFlagCoreUiMigrateUIBloxToFoundation

local Constants = require(InGameMenu.Resources.Constants)

-- For root pages, the parentPage should be nil
local pages = {
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
		icon = if FFlagCoreUiMigrateUIBloxToFoundation then "icons/controls/players" else Images["icons/controls/players"],
		component = script.PlayersPage,
		navigationDepth = 2,
		parentPage = Constants.MainPagePageKey,
	},
	{
		key = "InviteFriends",
		title = "CoreScripts.InGameMenu.PageTitle.InviteFriends",
		icon = if FFlagCoreUiMigrateUIBloxToFoundation
			then "icons/actions/friends/friendInvite"
			else Images["icons/actions/friends/friendInvite"],
		component = script.Parent.InviteFriendsPage,
		navigationDepth = 2,
		parentPage = Constants.MainPagePageKey,
	},
	{
		key = "GameSettings",
		title = "CoreScripts.InGameMenu.PageTitle.GameSettings",
		icon = if FFlagCoreUiMigrateUIBloxToFoundation then "icons/common/settings" else Images["icons/common/settings"],
		component = script.Parent.GameSettingsPage.BasicPage,
		navigationDepth = 2,
		parentPage = Constants.MainPagePageKey,
	},
	{
		key = "Report",
		title = "CoreScripts.InGameMenu.PageTitle.Report",
		icon = if FFlagCoreUiMigrateUIBloxToFoundation then "icons/actions/feedback" else Images["icons/actions/feedback"],
		component = script.Parent.ReportPage,
		navigationDepth = 2,
		parentPage = Constants.MainPagePageKey,
	},
	{
		key = "Controls",
		title = "CoreScripts.InGameMenu.PageTitle.Controls",
		icon = if FFlagCoreUiMigrateUIBloxToFoundation then "icons/controls/controls" else Images["icons/controls/controls"],
		component = script.Parent.ControlsPage,
		isModal = true,
		navigationDepth = 2,
		parentPage = Constants.MainPagePageKey,
	},
	{
		key = "AdvancedGameSettings",
		title = "CoreScripts.InGameMenu.PageTitle.GameSettings",
		icon = Images["icons/menu/settings_large"],
		component = script.Parent.GameSettingsPage.AdvancedPage,
		isSecondaryPage = true,
		navigationDepth = 3,
		parentPage = "GameSettings",
	},
	{
		key = "VRGameSettings",
		title = "CoreScripts.InGameMenu.PageTitle.VRComfortSettings",
		icon = Images["icons/menu/settings_large"],
		component = script.Parent.GameSettingsPage.VRComfortSettingsPage,
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
