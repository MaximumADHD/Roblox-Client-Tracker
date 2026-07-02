-- Checks that the code is run through CLI, e.g. in tests. Required until we can check explicitly which datamodels are available
local isCli, _ = pcall(function()
	-- selene: allow(incorrect_standard_library_use)
	return game:GetService("ProcessService")
end)

return function()
	return isCli
end
