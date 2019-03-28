local Plugin = script.Parent.Parent.Parent

local Libs = Plugin.Libs
local Rodux = require(Libs.Rodux)

local DebugFlags = require(Plugin.Core.Util.DebugFlags)

local Assets = require(Plugin.Core.Reducers.Assets)
local NetworkErrors = require(Plugin.Core.Reducers.NetworkErrors)
local PageInfo = require(Plugin.Core.Reducers.PageInfo)
local ReducerLogger = require(Plugin.Core.Reducers.ReducerLogger)
local Sound = require(Plugin.Core.Reducers.Sound)
local VotingReducer = require(Plugin.Core.Reducers.VotingReducer)
local LiveSearch = require(Plugin.Core.Reducers.LiveSearch)

-- TODO CLIDEVSRVS-1595: Error handling/promise rejections

local ToolboxReducer = Rodux.combineReducers({
		assets = Assets,
		networkErrors = NetworkErrors,
		pageInfo = PageInfo,
		sound = Sound,
		voting = VotingReducer,
		liveSearch = LiveSearch,
	})

return function(state, action)
	if DebugFlags.shouldDebugState() then
		return ReducerLogger(ToolboxReducer, state, action)
	else
		return ToolboxReducer(state, action)
	end
end