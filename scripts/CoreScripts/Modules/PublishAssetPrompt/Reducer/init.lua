local CorePackages = game:GetService("CorePackages")

local Rodux = require(CorePackages.Rodux)

local PromptRequestReducer = require(script.PromptRequestReducer)

local Reducer = Rodux.combineReducers({
	promptRequest = PromptRequestReducer,
})

return Reducer
