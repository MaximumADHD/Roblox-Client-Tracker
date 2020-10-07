local CorePackages = game:GetService("CorePackages")

local Rodux = require(CorePackages.Rodux)

local PromptInfo = require(script.PromptInfo)
local ScreenSize = require(script.ScreenSize)
local GameName = require(script.GameName)

local Reducer = Rodux.combineReducers({
	promptInfo = PromptInfo,
	screenSize = ScreenSize,
	gameName = GameName,
})

return Reducer