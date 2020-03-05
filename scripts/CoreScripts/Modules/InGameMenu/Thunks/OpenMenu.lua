local GuiService = game:GetService("GuiService")

local InGameMenu = script.Parent.Parent
local SetMenuOpenAction = require(InGameMenu.Actions.SetMenuOpen)
local SendAnalytics = require(InGameMenu.Utility.SendAnalytics)
local Constants = require(InGameMenu.Resources.Constants)
local SetCurrentPage = require(InGameMenu.Actions.SetCurrentPage)
local getFFlagInGameMenuSinglePaneDesign = require(InGameMenu.Flags.GetFFlagInGameMenuSinglePaneDesign)
local fflagInGameMenuSinglePaneDesign = getFFlagInGameMenuSinglePaneDesign()

return function(store)
	GuiService:SetMenuIsOpen(true, "InGameMenu")
	store:dispatch(SetMenuOpenAction(true))
	SendAnalytics(Constants.AnalyticsMenuActionName, Constants.AnalyticsMenuOpenName, {})
	if fflagInGameMenuSinglePaneDesign then
		store:dispatch(SetCurrentPage(Constants.defaultPageKey))
	end
end