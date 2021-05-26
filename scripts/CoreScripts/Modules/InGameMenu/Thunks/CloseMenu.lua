local GuiService = game:GetService("GuiService")
local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local InGameMenu = script.Parent.Parent
local SetMenuOpenAction = require(InGameMenu.Actions.SetMenuOpen)
local SendAnalytics = require(InGameMenu.Utility.SendAnalytics)
local Constants = require(InGameMenu.Resources.Constants)
local SetCurrentPage = require(InGameMenu.Actions.SetCurrentPage)

local GetFFlagInGameMenuOpenOnHover = require(RobloxGui.Modules.Flags.GetFFlagInGameMenuOpenOnHover)

return function(store)
	GuiService:SetMenuIsOpen(false, "InGameMenu")
	store:dispatch(SetMenuOpenAction(false))
	if GetFFlagInGameMenuOpenOnHover() then
		store:dispatch(SetCurrentPage(Constants.InitalPageKey))
	end
	SendAnalytics(Constants.AnalyticsMenuCloseName, Constants.AnalyticsMenuActionName, {})
end
