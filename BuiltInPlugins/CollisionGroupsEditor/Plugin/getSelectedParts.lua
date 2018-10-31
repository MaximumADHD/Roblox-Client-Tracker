return function()
	local parts = {}

	for _, object in pairs(game.Selection:Get()) do
		if object:IsA("BasePart") then
			table.insert(parts, object)
		end

		for _, descendant in pairs(object:GetDescendants()) do
			if descendant:IsA("BasePart") then
				table.insert(parts, descendant)
			end
		end
	end

	return parts
end