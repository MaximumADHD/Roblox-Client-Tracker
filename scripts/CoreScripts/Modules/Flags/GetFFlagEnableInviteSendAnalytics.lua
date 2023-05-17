-- enable the fix to the inputShareGameInviteSent analytics
game:DefineFastFlag("EnableInviteSendAnalytics", false)

return function()
	return game:GetFastFlag("EnableInviteSendAnalytics")
end
