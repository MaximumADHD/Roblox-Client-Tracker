local VerifiedBadges = script:FindFirstAncestor("VerifiedBadges")

local Rodux = require(VerifiedBadges.Parent.Rodux)
local Cryo = require(VerifiedBadges.Parent.Cryo)

export type State = { [string]: boolean }

local DEFAULT_STATE: State = {}

return Rodux.createReducer(DEFAULT_STATE, {
	AddGameDetails = function(state: State, action: any)
		local verifiedGroups = {}

		for _, game in pairs(action.gameDetails) do
			local creatorId = tostring(game.creator.id)
			local creatorType = game.creator.type
			local creatorHasVerifiedBadge = game.creator.hasVerifiedBadge

			if creatorType == Enum.CreatorType.Group.Name then
				verifiedGroups[creatorId] = if creatorHasVerifiedBadge then true else Cryo.None
			end
		end

		return Cryo.Dictionary.join(state, verifiedGroups)
	end,

	SetAssetInfoFromCatalogItemAction = function(state: State, action: any)
		local creatorType = action.assetData.creatorType
		if creatorType ~= Enum.CreatorType.Group.Name then
			return state
		end

		local creatorId = tostring(action.assetData.creatorTargetId)
		local creatorHasVerifiedBadge = action.assetData.creatorHasVerifiedBadge
		return Cryo.Dictionary.join(state, {
			[creatorId] = if creatorHasVerifiedBadge then true else Cryo.None,
		})
	end,
})
