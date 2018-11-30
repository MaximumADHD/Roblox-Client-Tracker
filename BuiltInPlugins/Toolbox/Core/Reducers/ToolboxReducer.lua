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

-- TODO CLIDEVSRVS-1595: Error handling/promise rejections

local FFlagStudioLuaWidgetToolboxV2 = settings():GetFFlag("StudioLuaWidgetToolboxV2")

local ToolboxReducer
if FFlagStudioLuaWidgetToolboxV2 then
	ToolboxReducer = Rodux.combineReducers({
		assets = Assets,
		networkErrors = NetworkErrors,
		pageInfo = PageInfo,
		sound = Sound,
		voting = VotingReducer,
	})
else
	ToolboxReducer = function (state, action)
		return {
			assets = Assets(state and state.assets, action),
			networkErrors = NetworkErrors(state and state.networkErrors, action),
			pageInfo = PageInfo(state and state.pageInfo, action),
			sound = Sound(state and state.sound, action),
			voting = VotingReducer(state and state.voting, action),
		}
	end
end

return function(state, action)
	if DebugFlags.shouldDebugState() then
		return ReducerLogger(ToolboxReducer, state, action)
	else
		return ToolboxReducer(state, action)
	end
end
