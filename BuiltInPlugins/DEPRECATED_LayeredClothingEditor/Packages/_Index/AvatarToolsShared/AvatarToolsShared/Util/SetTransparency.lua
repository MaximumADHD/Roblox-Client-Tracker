return function (item, transparency)
	transparency = tonumber(transparency)
	if not item then
		warn("Try to modify transparency on nil")
		return
	end

	if not item.Parent then
		warn("Item isn't parented to anything.")
		return
	end

	if item:IsA("MeshPart") then
		if item.Parent:IsA("Model") then
			item = item.Parent
		else
			item.Transparency = transparency
			return
		end
	end

	if item:IsA("Model") then
		for _, v in pairs(item:GetChildren()) do
			if v:IsA("BasePart") and v.Name ~= "HumanoidRootPart" then
				v.Transparency = transparency
			end
		end
		for _, v in pairs(item:GetDescendants()) do
			if v:IsA("Decal") and v.Name == "face" then
				v.Transparency = transparency
			end
		end
	else
		warn("Try to modify transparency on inavlid item "..item.Name)
	end
end