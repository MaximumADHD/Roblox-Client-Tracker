--!strict

game:DefineFastFlag("DebugUGCDisableRCCOwnershipCheck", false)

return function()
	return game:GetFastFlag("DebugUGCDisableRCCOwnershipCheck")
end
