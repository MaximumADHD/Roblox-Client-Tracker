local CoreGui = game:GetService("CoreGui")
local GuiService = game:GetService("GuiService")

local InGameMenu = script.Parent.Parent
local SetMenuOpenAction = require(InGameMenu.Actions.SetMenuOpen)
local SendAnalytics = require(InGameMenu.Utility.SendAnalytics)
local Constants = require(InGameMenu.Resources.Constants)
local SetCurrentPage = require(InGameMenu.Actions.SetCurrentPage)

local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local GetFFlagInstrumentMenuOpenMethods = require(RobloxGui.Modules.Flags.GetFFlagInstrumentMenuOpenMethods)

return function(value)
	-- The calling convention of this module is dependent on FFlagInstrumentMenuOpenMethods. We
	-- do this dynamically to allow the flag value to change at runtime.
	-- When FFlagInstrumentMenuOpenMethods is true, OpenMenu should return a thunk function that
	-- sends the passed context key to analytics. When it's false, it should just open the menu
	-- and return nil.
	if GetFFlagInstrumentMenuOpenMethods() then
		return function(store)
			GuiService:SetMenuIsOpen(true, "InGameMenu")
			store:dispatch(SetMenuOpenAction(true))
			store:dispatch(SetCurrentPage(Constants.defaultPageKey))
			SendAnalytics(Constants.AnalyticsMenuOpenName, Constants.AnalyticsMenuActionName, {
				source = value,
			})
		end
	else
		GuiService:SetMenuIsOpen(true, "InGameMenu")
		value:dispatch(SetMenuOpenAction(true))
		value:dispatch(SetCurrentPage(Constants.defaultPageKey))
		SendAnalytics(Constants.AnalyticsMenuOpenName, Constants.AnalyticsMenuActionName, {})
		return nil
	end
end