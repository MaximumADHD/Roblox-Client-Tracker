local GuiService = game:GetService("GuiService")

local InGameMenu = script.Parent.Parent
local SetMenuOpen = require(InGameMenu.Actions.SetMenuOpen)
local SendAnalytics = require(InGameMenu.Utility.SendAnalytics)
local Constants = require(InGameMenu.Resources.Constants)
local SetCurrentPage = require(InGameMenu.Actions.SetCurrentPage)
local SetMenuIconTooltipOpen = require(InGameMenu.Actions.SetMenuIconTooltipOpen)

return function(value)
	return function(store)
		GuiService:SetMenuIsOpen(true, "InGameMenu")
		store:dispatch(SetMenuOpen(true))
		store:dispatch(SetCurrentPage(Constants.MainPagePageKey))

		if store:getState().nativeClosePrompt.menuIconTooltipOpen then
			store:dispatch(SetMenuIconTooltipOpen(false))
		end

		SendAnalytics(Constants.AnalyticsMenuOpenName, Constants.AnalyticsMenuActionName, {
			source = value,
		})
	end
end
