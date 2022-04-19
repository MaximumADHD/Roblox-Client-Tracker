local FriendsReducer = script:FindFirstAncestor("RoduxFriends")
local Root = FriendsReducer.Parent
local llama = require(Root.llama)
local addUser = require(script.Parent.addUser)
local removeUser = require(script.Parent.removeUser)

-- result: members in a that are not in b
function difference(a, b)
	local tempTable = {}
	for k, v in pairs(a) do
		tempTable[v] = true
	end

	for k, v in pairs(b) do
		tempTable[v] = nil
	end

	local resultTable = {}
	local n = 0
	for k, v in pairs(a) do
		if tempTable[v] then
			n = n + 1
			resultTable[n] = v
		end
	end

	return resultTable
end

-- @param state - "byUserId" field
-- @param action - the action represented by GetFriendsFromUserId
-- @return the resulting state after calculating friends list
return function(state, action)
	local baseFriendId = tostring(action.namedIds.users)
	local stateBaseFriends = state[baseFriendId] or {}

	local requestFriends = llama.List.map(llama.Dictionary.values(action.responseBody.data), function(friend)
		return tostring(friend.id)
	end)

	-- calculate friendships added and destroyed
	local addedFriends = difference(requestFriends, stateBaseFriends)
	local removedFriends = difference(stateBaseFriends, requestFriends)

	-- update state to take into account of created friendships
	for k, addedFriend in pairs(addedFriends) do
		state = llama.Dictionary.join(state, {
			[baseFriendId] = addUser(state[baseFriendId], addedFriend),
			[addedFriend] = addUser(state[addedFriend], baseFriendId),
		})
	end

	-- update state to take into account of destroyed friendships
	for k, removedFriend in pairs(removedFriends) do
		state = llama.Dictionary.join(state, {
			[baseFriendId] = removeUser(state[baseFriendId], removedFriend),
			[removedFriend] = removeUser(state[removedFriend], baseFriendId),
		})
	end

	-- update state to take into account of empty friend lists
	for k, v in pairs(state) do
		if llama.isEmpty(v) then
			state[k] = nil
		end
	end

	return state
end
