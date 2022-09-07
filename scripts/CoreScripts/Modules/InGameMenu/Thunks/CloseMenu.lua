local GuiService = game:GetService("GuiService")

local InGameMenu = script.Parent.Parent
local SetMenuOpenAction = require(InGameMenu.Actions.SetMenuOpen)
local SendAnalytics = require(InGameMenu.Utility.SendAnalytics)
local Constants = require(InGameMenu.Resources.Constants)
local SetCurrentPage = require(InGameMenu.Actions.SetCurrentPage)

return function(store)
	GuiService:SetMenuIsOpen(false, "InGameMenu")
	GuiService.SelectedCoreObject = nil
	store:dispatch(SetMenuOpenAction(false))
	store:dispatch(SetCurrentPage(Constants.InitalPageKey))
	SendAnalytics(Constants.AnalyticsMenuCloseName, Constants.AnalyticsMenuActionName, {})
end
