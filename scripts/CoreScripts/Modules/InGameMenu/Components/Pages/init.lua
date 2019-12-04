local InGameMenu = script.Parent.Parent

local Assets = require(InGameMenu.Resources.Assets)

local pages = {
	{
		key = "Players",
		title = "CoreScripts.InGameMenu.PageTitle.Players",
		icon = Assets.Images.PlayersMenu,
		component = require(script.PlayersPage),
	},
	{
		key = "InviteFriends",
		title = "CoreScripts.InGameMenu.PageTitle.InviteFriends",
		icon = Assets.Images.InviteMenu,
		component = require(script.Parent.InviteFriendsPage),
	},
	{
		key = "GameSettings",
		title = "CoreScripts.InGameMenu.PageTitle.GameSettings",
		icon = Assets.Images.GameSettings,
		component = require(script.Parent.GameSettingsPage),
	},
	{
		key = "Report",
		title = "CoreScripts.InGameMenu.PageTitle.Report",
		icon = Assets.Images.ReportIcon,
		component = require(script.Parent.ReportPage),
	},
	{
		key = "Controls",
		title = "CoreScripts.InGameMenu.PageTitle.Controls",
		icon = Assets.Images.ControlsMenu,
		component = require(script.Parent.ControlsPage),
		isModal = true,
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