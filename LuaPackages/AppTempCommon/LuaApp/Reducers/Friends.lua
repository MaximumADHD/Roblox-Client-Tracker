local CorePackages = game:GetService("CorePackages")

local Immutable = require(CorePackages.AppTempCommon.Common.Immutable)
local RetrievalStatus = require(CorePackages.AppTempCommon.LuaApp.Enum.RetrievalStatus)

local FetchUserFriendsStarted = require(CorePackages.AppTempCommon.LuaApp.Actions.FetchUserFriendsStarted)
local FetchUserFriendsFailed = require(CorePackages.AppTempCommon.LuaApp.Actions.FetchUserFriendsFailed)
local FetchUserFriendsCompleted = require(CorePackages.AppTempCommon.LuaApp.Actions.FetchUserFriendsCompleted)

local function setFieldPerUser(state, fieldName, userId, value)
	local field = state[fieldName] or {}
	return Immutable.JoinDictionaries(state, {
		[fieldName] = Immutable.JoinDictionaries(field, {
			[userId] = value
		})
	})
end

local function setRetrievalStatus(state, userId, status)
	return setFieldPerUser(state, "retrievalStatus", userId, status)
end

local function setRetrievalFailureResponse(state, userId, response)
	return setFieldPerUser(state, "retrievalFailureResponse", userId, response)
end

return function(state, action)
	state = state or {
		retrievalStatus = {},
		retrievalFailureResponse = {},
	}

	if action.type == FetchUserFriendsStarted.name then
		state = setRetrievalStatus(state, action.userId, RetrievalStatus.Fetching)
	elseif action.type == FetchUserFriendsFailed.name then
		state = setRetrievalStatus(state, action.userId, RetrievalStatus.Failed)
		state = setRetrievalFailureResponse(state, action.userId, action.response)
	elseif action.type == FetchUserFriendsCompleted.name then
		state = setRetrievalStatus(state, action.userId, RetrievalStatus.Done)
	end

	return state
end