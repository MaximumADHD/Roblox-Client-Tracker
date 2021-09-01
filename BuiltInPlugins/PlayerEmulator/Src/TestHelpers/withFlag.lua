local function withFlag(flagName, setValue, callback)
	local oldValue = game:SetFastFlagForTesting(flagName, setValue)
	local success, message = pcall(callback)

	game:SetFastFlagForTesting(flagName, oldValue)

	assert(success, message)
end

return withFlag
