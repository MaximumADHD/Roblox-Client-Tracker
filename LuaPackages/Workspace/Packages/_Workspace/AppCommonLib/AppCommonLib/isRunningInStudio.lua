local function isRunningInStudio()
	-- We do a check for TESTEZ here so we can test for non-Studio branch in tests
	return game:GetService("RunService"):IsStudio() and not _G.__TESTEZ_RUNNING_TEST__
end

return isRunningInStudio
