return function(views, controlPointPositions)
	local viewsToRemove = {}
	-- build an array of MeshName, Index pairs for each view that needs to be removed
	for meshName, viewsForMesh in pairs(views) do
		if not controlPointPositions[meshName] then
			for index in ipairs(views.meshName) do
				table.insert(viewsToRemove, {
					MeshName = meshName,
					Index = index,
				})
			end
			continue
		end
		local startIndex = #controlPointPositions[meshName] + 1
		for i = startIndex, #views[meshName] do
			table.insert(viewsToRemove, {
				MeshName = meshName,
				Index = i,
			})
		end
	end

	for _, viewToRemove in ipairs(viewsToRemove) do
		local meshName = viewToRemove.MeshName
		local index = viewToRemove.Index
		views[meshName][index].Cleanup()
		views[meshName][index] = nil
	end
end