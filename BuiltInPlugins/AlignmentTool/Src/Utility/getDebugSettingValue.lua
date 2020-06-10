local Workspace = game:GetService("Workspace")

return function(name, defaultValue)
	local setting = Workspace:FindFirstChild(name)
	return setting and setting.Value or defaultValue
end
