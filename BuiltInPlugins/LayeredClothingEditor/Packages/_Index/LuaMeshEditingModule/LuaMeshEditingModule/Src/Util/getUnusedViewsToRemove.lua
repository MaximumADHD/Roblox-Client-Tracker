return function(views, controlPointLocationData)
	local viewsToRemove = {}

	-- build an array of MeshName, Index pairs for each view that needs to be removed
	for meshName, viewsForMesh in pairs(views) do
		if not controlPointLocationData[meshName] then
			for index in ipairs(views.meshName) do
				table.insert(viewsToRemove, {
					MeshName = meshName,
					Index = index,
				})
			end
			continue
		end
		local startIndex = #controlPointLocationData[meshName] + 1
		for i = startIndex, #views[meshName] do
			table.insert(viewsToRemove, {
				MeshName = meshName,
				Index = i,
			})
		end
	end
	return viewsToRemove
end
