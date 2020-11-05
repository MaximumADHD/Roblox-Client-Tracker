local CorePackages = game:GetService("CorePackages")

local Rodux = require(CorePackages.Rodux)

local PromptInfo = require(script.PromptInfo)
local ScreenSize = require(script.ScreenSize)
local GameName = require(script.GameName)
local AnalyticsInfo = require(script.AnalyticsInfo)

local Reducer = Rodux.combineReducers({
	promptInfo = PromptInfo,
	screenSize = ScreenSize,
	gameName = GameName,
	analyticsInfo = AnalyticsInfo,
})

return Reducer