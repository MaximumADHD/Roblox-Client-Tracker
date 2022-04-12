local Plugin = script.Parent.Parent.Parent
local FFlagToolboxAssetCategorization3 = game:GetFastFlag("ToolboxAssetCategorization3")

local Packages = Plugin.Packages
local Rodux = require(Packages.Rodux)

local DebugFlags = require(Plugin.Core.Util.DebugFlags)

local Reducers = Plugin.Core.Reducers
local Assets = require(Reducers.Assets)
local AutocompleteResults = require(Reducers.Autocomplete)
local NetworkErrors = require(Reducers.NetworkErrors)
local PageInfo = require(Reducers.PageInfo)
local ReducerLogger = require(Reducers.ReducerLogger)
local Sound = require(Reducers.Sound)
local VotingReducer = require(Reducers.VotingReducer)
local LiveSearch = require(Reducers.LiveSearch)
local Favorite = require(Reducers.Favorite)
local RolesReducer = require(Reducers.RolesReducer)
local ItemTagsReducer = require(Reducers.ItemTagsReducer)
local Purchase = require(Reducers.Purchase)
local Packages = require(Reducers.Packages)
local HomeConfiguration = if FFlagToolboxAssetCategorization3 then require(Reducers.HomeConfiguration) else nil

-- TODO CLIDEVSRVS-1595: Error handling/promise rejections

local ToolboxReducer = Rodux.combineReducers({
	assets = Assets,
	autocompleteResults = AutocompleteResults,
	homeConfiguration = HomeConfiguration,
	networkErrors = NetworkErrors,
	pageInfo = PageInfo,
	sound = Sound,
	voting = VotingReducer,
	liveSearch = LiveSearch,
	favorite = Favorite,
	roles = RolesReducer,
	itemTags = ItemTagsReducer,
	purchase = Purchase,
	packages = Packages,
})

return function(state, action)
	if DebugFlags.shouldDebugState() then
		return ReducerLogger(ToolboxReducer, state, action)
	else
		return ToolboxReducer(state, action)
	end
end
