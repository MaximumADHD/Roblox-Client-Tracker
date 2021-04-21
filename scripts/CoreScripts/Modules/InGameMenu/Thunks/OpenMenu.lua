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

		if not GetFFlagInGameMenuFixReportAbuseOpenSystemMenu() or not table.find(SHOW_MENU_PAGE_KEY_DENYLIST, pageKey) then
			if GetFFlagInGameFixMenuIconHoverEatKeyboard() then
				-- Initial page should not eat keyboard input
				if pageKey ~= Constants.InitalPageKey then
					GuiService:SetMenuIsOpen(true, "InGameMenu")
				end
			else
				GuiService:SetMenuIsOpen(true, "InGameMenu")
			end
			store:dispatch(SetMenuOpenAction(true))
			store:dispatch(SetCurrentPage(pageKey))
		end
		SendAnalytics(Constants.AnalyticsMenuOpenName, Constants.AnalyticsMenuActionName, {
			source = value,
		})
	end
end
