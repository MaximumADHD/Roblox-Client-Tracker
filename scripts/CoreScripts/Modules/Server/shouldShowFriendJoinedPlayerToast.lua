return function(newPlayer: Player): boolean
	local joinData = newPlayer:GetJoinData()
	local referredByPlayerId = joinData and tonumber(joinData.ReferredByPlayerId)
	return referredByPlayerId == nil or referredByPlayerId == 0
end
