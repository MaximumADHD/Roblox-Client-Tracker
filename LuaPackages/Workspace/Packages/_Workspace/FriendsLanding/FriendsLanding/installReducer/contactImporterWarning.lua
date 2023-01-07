local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local dependencies = require(FriendsLanding.dependencies)
local Dash = dependencies.Dash
local llama = dependencies.llama

local Rodux = dependencies.Rodux
local FriendsNetworking = dependencies.FriendsNetworking
local FriendRequestCreated = dependencies.RoduxFriends.Actions.FriendRequestCreated
local ContactImporterWarningSeen = require(script.Parent.Actions.ContactImporterWarningSeen)
local ContactImporterConstants = dependencies.ContactImporterConstants

export type State = {
	contactImporterFriendRequests: { [string]: boolean },
	seenContactImporterFriendRequest: boolean,
}

local DEFAULT_STATE: State = {
	contactImporterFriendRequests = {},
	seenContactImporterFriendRequest = false,
}

local removeIdsFromRequestsStore = function(state: State, ids: { string })
	return {
		seenContactImporterFriendRequest = state.seenContactImporterFriendRequest,
		contactImporterFriendRequests = llama.Dictionary.filter(state.contactImporterFriendRequests, function(_, key)
			return not Dash.includes(ids, key)
		end),
	}
end

return Rodux.createReducer(DEFAULT_STATE, {
	[FriendsNetworking.AcceptFriendRequestFromUserId.Succeeded.name] = function(state: State, action: { ids: { string } })
		return removeIdsFromRequestsStore(state, action.ids)
	end,
	[FriendsNetworking.DeclineFriendRequestFromUserId.Succeeded.name] = function(state: State, action: { ids: { string } })
		return removeIdsFromRequestsStore(state, action.ids)
	end,
	[FriendRequestCreated.name] = function(state: State, action: any)
		local userId: string = action.id
		local originSourceType = action.originSourceType

		if originSourceType == ContactImporterConstants.PHONE_CONTACT_IMPORTER then
			return llama.Dictionary.join(state, {
				contactImporterFriendRequests = llama.Dictionary.join(state.contactImporterFriendRequests, {
					[tostring(userId)] = true,
				}),
			})
		end

		return state
	end,
	[FriendsNetworking.GetFriendRequests.Succeeded.name] = function(state: State, action: any)
		local response = action.responseBody
		local friendRequests = response.data

		local newIds: { [string]: boolean } = {}
		-- selene: allow(deprecated)
		table.foreach(friendRequests, function(_, request: any)
			if request.friendRequest.originSourceType == ContactImporterConstants.PHONE_CONTACT_IMPORTER then
				newIds[tostring(request.id)] = true
			end
		end)

		return llama.Dictionary.join(state, {
			contactImporterFriendRequests = llama.Dictionary.join(state.contactImporterFriendRequests, newIds),
		})
	end,

	[ContactImporterWarningSeen.name] = function(state: State, action)
		if not llama.isEmpty(state.contactImporterFriendRequests) then
			return llama.Dictionary.join(state, {
				seenContactImporterFriendRequest = true,
			})
		end

		return state
	end,
})
