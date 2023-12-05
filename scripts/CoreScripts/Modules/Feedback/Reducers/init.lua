local CorePackages = game:GetService("CorePackages")

local Rodux = require(CorePackages.Rodux)

-- Standard state management for module
local common = require(script.common)
local displayOptions = require(script.displayOptions)
local feedbackFlowState = require(script.feedbackFlowState)

-- Required state management library for using PerformFetch elsewhere to wrap network requests
local FetchingStatus = require(CorePackages.Workspace.Packages.Http).Reducers.FetchingStatus

local Reducer = Rodux.combineReducers({
	common = common,
	displayOptions = displayOptions,
	feedbackFlowState = feedbackFlowState,
	FetchingStatus = FetchingStatus,
})

return Reducer
