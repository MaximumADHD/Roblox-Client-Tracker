export type State = {
	GameDetails: {
		[string]: {
			creator: {
				id: number,
				type: string,
			},
		},
	},
	VerifiedBadges: {
		VerifiedUsers: {
			[string]: boolean,
		},
		VerifiedGroups: {
			[string]: boolean,
		},
	},
}

export type Props = {
	universeId: string,
}

--[=[
	Returns whether a given creator is a verified creator,
	accounting for creatorType.

	Uses the piece of rodux state populated by GamesApi, 
	and universeId being passed as props.
	
	@within VerifiedBadges
]=]
local function isCreatorOfGameVerified(state: State, props: Props)
	local creator = state.GameDetails[props.universeId] and state.GameDetails[props.universeId].creator or nil
	local userId = ""
	if creator == nil or creator.id == nil then
		return false
	else
		userId = tostring(creator.id)
	end

	if creator and state.VerifiedBadges then
		if state.VerifiedBadges.VerifiedUsers and creator.type == Enum.CreatorType.User.Name then
			return state.VerifiedBadges.VerifiedUsers[tostring(userId)] == true
		elseif state.VerifiedBadges.VerifiedGroups and creator.type == Enum.CreatorType.Group.Name then
			return state.VerifiedBadges.VerifiedGroups[tostring(userId)] == true
		end
	end
	return false
end

return isCreatorOfGameVerified
