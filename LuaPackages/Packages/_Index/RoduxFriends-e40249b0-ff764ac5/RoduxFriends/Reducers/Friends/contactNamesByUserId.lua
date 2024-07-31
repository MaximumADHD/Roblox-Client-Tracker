--!strict
local RoduxFriends = script.Parent.Parent.Parent
local Packages = RoduxFriends.Parent
local Rodux = require(Packages.Rodux) :: any
local llama = require(Packages.llama) :: any

local roduxFriendsTypes = require(RoduxFriends.roduxFriendsTypes)

local Actions: any = RoduxFriends.Actions
local FriendRequestCreated: any = require(Actions.FriendRequestCreated)

type ContactNamesByUserId = { [string]: string? }

local DEFAULT_STATE: ContactNamesByUserId = {}

return function(options)
	local FriendsNetworking = options.friendsNetworking

	return Rodux.createReducer(DEFAULT_STATE, {
		[FriendsNetworking.GetFriendRequests.Succeeded.name] = function(state: ContactNamesByUserId, action: roduxFriendsTypes.GetFriendRequestsSucceeded)
			local response = action.responseBody
			local friendRequests = response.data

			local newContactNames: ContactNamesByUserId = {}
			for _, request in pairs(friendRequests) do
				newContactNames[tostring(request.id)] = request.friendRequest.contactName
			end

			return llama.Dictionary.join(state, newContactNames)
		end,
		[FriendRequestCreated.name] = function(state: ContactNamesByUserId, action: any)
			local userId: string = tostring(action.requesteeId)
			local contactName: string? = action.contactName

			return llama.Dictionary.join(state, {
				[userId] = contactName
			})
		end,
	})
end
