local GuiService = game:GetService("GuiService")
local RobloxGui = game:GetService("CoreGui"):WaitForChild("RobloxGui")

local InGameMenu = script.Parent.Parent
local SetMenuOpenAction = require(InGameMenu.Actions.SetMenuOpen)
local SendAnalytics = require(InGameMenu.Utility.SendAnalytics)
local Constants = require(InGameMenu.Resources.Constants)
local SetCurrentPage = require(InGameMenu.Actions.SetCurrentPage)

local GetFFlagInGameFixMenuIconHoverEatKeyboard =
	require(RobloxGui.Modules.Flags.GetFFlagInGameFixMenuIconHoverEatKeyboard)
local GetFFlagInGameMenuFixReportAbuseOpenSystemMenu =
	require(InGameMenu.Flags.GetFFlagInGameMenuFixReportAbuseOpenSystemMenu)

local SHOW_MENU_PAGE_KEY_DENYLIST = {
	Constants.ReportDialogKey,
}

return function(value, pageKey)
	return function(store)
		if not pageKey then
			pageKey = Constants.defaultPageKey
		end

		if GetFFlagInGameFixMenuIconHoverEatKeyboard() then
			-- Initial page should not eat keyboard input
			if pageKey ~= Constants.InitalPageKey then
				GuiService:SetMenuIsOpen(true, "InGameMenu")
			end
		else
			GuiService:SetMenuIsOpen(true, "InGameMenu")
		end
		if GetFFlagInGameMenuFixReportAbuseOpenSystemMenu() then
			if not table.find(SHOW_MENU_PAGE_KEY_DENYLIST, pageKey) then
				store:dispatch(SetMenuOpenAction(true))
			end
		else
			store:dispatch(SetMenuOpenAction(true))
		end
		store:dispatch(SetCurrentPage(pageKey))
		SendAnalytics(Constants.AnalyticsMenuOpenName, Constants.AnalyticsMenuActionName, {
			source = value,
		})
	end
end
