local CorePackages = game:GetService("CorePackages")

local Rodux = require(CorePackages.Packages.Rodux)

local PromptInfo = require(script.PromptInfo)
local ScreenSize = require(script.ScreenSize)
local GameName = require(script.GameName)
local AnalyticsInfo = require(script.AnalyticsInfo)

local Reducer = Rodux.combineReducers({
	promptInfo = PromptInfo,
	screenSize = ScreenSize,
	-- Modals that use AXPartialPageModal expects state.ScreenSize
	ScreenSize = ScreenSize,
	gameName = GameName,
	analyticsInfo = AnalyticsInfo,
})

return Reducer
