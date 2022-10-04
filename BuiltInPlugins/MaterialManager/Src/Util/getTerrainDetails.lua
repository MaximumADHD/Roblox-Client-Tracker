return function(materialVariant: MaterialVariant)
	local terrainDetails = {}
	for _, child in materialVariant:GetChildren() do
		if child:IsA("TerrainDetail") and not terrainDetails[child.Face] then
			terrainDetails[child.Face] = child
		end
	end
	return terrainDetails
end
