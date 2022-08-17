local VerifiedBadges = script:FindFirstAncestor("VerifiedBadges")

local Rodux = require(VerifiedBadges.Parent.Rodux)
local Cryo = require(VerifiedBadges.Parent.Cryo)
local dependencies = require(VerifiedBadges.dependencies)

local UsersNetworking = dependencies.UsersNetworking
local FriendsNetworking = dependencies.FriendsNetworking

export type State = { [string]: boolean }

local DEFAULT_STATE: State = {}

export type User = {
	id: number,
	hasVerifiedBadge: boolean,
}

local addDataFromList = function(state: State, newUsers: { User })
	local verifiedUsers = {}

	for _, user in ipairs(newUsers) do
		verifiedUsers[tostring(user.id)] = if user.hasVerifiedBadge then true else Cryo.None
	end

	return Cryo.Dictionary.join(state, verifiedUsers)
end

return Rodux.createReducer(DEFAULT_STATE, {
	[UsersNetworking.GetUserV2FromUserId.Succeeded.name] = function(state: State, action: any)
		return addDataFromList(state, { action.responseBody })
	end,

	[FriendsNetworking.GetFriendsFromUserId.Succeeded.name] = function(state: State, action: any)
		return addDataFromList(state, action.responseBody.data)
	end,

	AddGameDetails = function(state: State, action: any)
		local verifiedUsers = {}

		for _, game in pairs(action.gameDetails) do
			local creatorId = tostring(game.creator.id)
			local creatorType = game.creator.type
			local creatorHasVerifiedBadge = game.creator.hasVerifiedBadge

			if creatorType == Enum.CreatorType.User.Name then
				verifiedUsers[creatorId] = if creatorHasVerifiedBadge then true else Cryo.None
			end
		end

		return Cryo.Dictionary.join(state, verifiedUsers)
	end,

	SetAssetInfoFromCatalogItemAction = function(state: State, action: any)
		local creatorType = action.assetData.creatorType
		if creatorType ~= Enum.CreatorType.User.Name then
			return state
		end

		local creatorId = tostring(action.assetData.creatorTargetId)
		local creatorHasVerifiedBadge = action.assetData.creatorHasVerifiedBadge
		return Cryo.Dictionary.join(state, {
			[creatorId] = if creatorHasVerifiedBadge then true else Cryo.None,
		})
	end,
})
