local GuiService = game:GetService("GuiService")

local InGameMenu = script.Parent.Parent
local SetMenuOpenAction = require(InGameMenu.Actions.SetMenuOpen)
local SendAnalytics = require(InGameMenu.Utility.SendAnalytics)
local Constants = require(InGameMenu.Resources.Constants)
local SetCurrentPage = require(InGameMenu.Actions.SetCurrentPage)

return function(value)
	return function(store)
		GuiService:SetMenuIsOpen(true, "InGameMenu")
		store:dispatch(SetMenuOpenAction(true))
		store:dispatch(SetCurrentPage(Constants.MainPagePageKey))
		SendAnalytics(Constants.AnalyticsMenuOpenName, Constants.AnalyticsMenuActionName, {
			source = value,
		})
	end
end
