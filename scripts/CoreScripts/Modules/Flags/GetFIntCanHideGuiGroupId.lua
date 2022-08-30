return function()
	local success, value = pcall(function()
		return game:GetFastInt("CanHideGuiGroupId") -- Defined in C++
	end)

	return success and value
end
