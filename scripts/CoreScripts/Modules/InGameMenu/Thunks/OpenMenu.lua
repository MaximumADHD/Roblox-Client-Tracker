local GuiService = game:GetService("GuiService")
local RobloxGui = game:GetService("CoreGui"):WaitForChild("RobloxGui")

local InGameMenu = script.Parent.Parent
local SetMenuOpenAction = require(InGameMenu.Actions.SetMenuOpen)
local SendAnalytics = require(InGameMenu.Utility.SendAnalytics)
local Constants = require(InGameMenu.Resources.Constants)
local SetCurrentPage = require(InGameMenu.Actions.SetCurrentPage)

local GetFFlagInGameFixMenuIconHoverEatKeyboard =
	require(RobloxGui.Modules.Flags.GetFFlagInGameFixMenuIconHoverEatKeyboard)

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
		store:dispatch(SetMenuOpenAction(true))
		store:dispatch(SetCurrentPage(pageKey))
		SendAnalytics(Constants.AnalyticsMenuOpenName, Constants.AnalyticsMenuActionName, {
			source = value,
		})
	end
end
