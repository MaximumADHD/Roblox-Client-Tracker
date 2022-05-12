return function(views, viewsToRemove)
	for _, viewToRemove in ipairs(viewsToRemove) do
		local meshName = viewToRemove.MeshName
		local index = viewToRemove.Index
		views[meshName][index]:cleanup()
		views[meshName][index] = nil
	end
end