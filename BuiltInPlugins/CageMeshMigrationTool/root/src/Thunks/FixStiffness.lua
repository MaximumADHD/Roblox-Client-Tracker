local Workspace = game:GetService("Workspace")

return function(plugin)
	return function(store)
		for _, descendant in ipairs(Workspace:GetDescendants()) do
			if descendant:IsA("WrapTarget") then
				descendant.Stiffness = 1
			end
		end
	end
end
