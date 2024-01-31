return function(state, participants)
	local localUserId = state.LocalUserId
	for _, userId in ipairs(participants) do
		if userId ~= localUserId then
			return userId
		end
	end

	return
end
