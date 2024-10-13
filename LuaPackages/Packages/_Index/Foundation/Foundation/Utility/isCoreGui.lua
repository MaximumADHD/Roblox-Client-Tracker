local CoreGui = game:GetService("CoreGui")

local isCoreGui = pcall(function()
	local _ = CoreGui.Name
end)

return isCoreGui
