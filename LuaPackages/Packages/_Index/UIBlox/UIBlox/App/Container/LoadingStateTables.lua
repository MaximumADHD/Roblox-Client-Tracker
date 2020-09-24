local Container = script.Parent
local App = Container.Parent
local UIBlox = App.Parent

local StateTable = require(UIBlox.StateTable.StateTable)
local ReloadingStyle = require(UIBlox.App.Loading.Enum.ReloadingStyle)
local RetrievalStatus = require(UIBlox.App.Loading.Enum.RetrievalStatus)
local LoadingStateEnum = require(UIBlox.App.Loading.Enum.LoadingState)

local INITIAL_LOADING_STATE = LoadingStateEnum.Loading

local LoadingStateTables = {}

-- This state table allows reloading after it has loaded
LoadingStateTables[ReloadingStyle.AllowReload] = function()
	return StateTable.new('AllowReload', INITIAL_LOADING_STATE, {}, {
		[LoadingStateEnum.Loading] = {
			[RetrievalStatus.NotStarted] = {},
			[RetrievalStatus.Fetching] = {},
			[RetrievalStatus.Done] = { nextState = LoadingStateEnum.Loaded },
			[RetrievalStatus.Failed] = { nextState = LoadingStateEnum.Failed },
		},
		[LoadingStateEnum.Loaded] = {
			[RetrievalStatus.NotStarted] = {},
			[RetrievalStatus.Fetching] = { nextState = LoadingStateEnum.Loading },
			[RetrievalStatus.Done] = {},
			[RetrievalStatus.Failed] = { nextState = LoadingStateEnum.Failed },
		},
		[LoadingStateEnum.Failed] = {
			[RetrievalStatus.NotStarted] = {},
			[RetrievalStatus.Fetching] = { nextState = LoadingStateEnum.Loading },
			[RetrievalStatus.Done] = { nextState = LoadingStateEnum.Loaded },
			[RetrievalStatus.Failed] = {},
		},
	})
end

-- This state table locks reloading after it has loaded.
LoadingStateTables[ReloadingStyle.LockReload] = function()
	return StateTable.new('LockReload', INITIAL_LOADING_STATE, {}, {
		[LoadingStateEnum.Loading] = {
			[RetrievalStatus.NotStarted] = {},
			[RetrievalStatus.Fetching] = {},
			[RetrievalStatus.Done] = { nextState = LoadingStateEnum.Loaded },
			[RetrievalStatus.Failed] = { nextState = LoadingStateEnum.Failed },
		},
		[LoadingStateEnum.Loaded] = {
			[RetrievalStatus.NotStarted] = {},
			[RetrievalStatus.Fetching] = { nextState = LoadingStateEnum.Failed },
			[RetrievalStatus.Done] = {},
			[RetrievalStatus.Failed] = { nextState = LoadingStateEnum.Failed },
		},
		[LoadingStateEnum.Failed] = {
			[RetrievalStatus.NotStarted] = {},
			[RetrievalStatus.Fetching] = { nextState = LoadingStateEnum.Loading },
			[RetrievalStatus.Done] = { nextState = LoadingStateEnum.Loaded },
			[RetrievalStatus.Failed] = {},
		},
	})
end

return LoadingStateTables
