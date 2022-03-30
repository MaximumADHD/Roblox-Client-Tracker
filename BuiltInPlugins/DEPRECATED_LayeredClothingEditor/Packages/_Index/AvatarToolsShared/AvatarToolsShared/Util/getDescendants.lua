local function getDescendants(descendants, model)
	if not (model:IsA("Model") and model.Name == "AnimSaves") then
		for _, ch in ipairs(model:GetChildren()) do
			table.insert(descendants, ch)
			getDescendants(descendants, ch)
		end
	end
	return descendants
end

return getDescendants