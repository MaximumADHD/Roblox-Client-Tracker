local BusinessLogic = {}





function BusinessLogic.GetVisibleAgeForPlayer(player)
	local accountTypeText = "Account: <13"
	if player and not player:GetUnder13() then
		accountTypeText = "Account: 13+"
	end
	return accountTypeText
end





return BusinessLogic
