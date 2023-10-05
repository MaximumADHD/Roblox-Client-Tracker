--!strict

game:DefineFastFlag("UGCValidateHandleRestrictedUserIds", false)

return function()
	return game:GetFastFlag("UGCValidateHandleRestrictedUserIds")
end
