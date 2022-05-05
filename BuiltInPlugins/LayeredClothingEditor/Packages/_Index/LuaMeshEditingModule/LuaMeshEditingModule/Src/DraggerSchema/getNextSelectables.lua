--[[
	function getNextSelectables

	This function allows you to select a "next" set of selectables when clicking
	or double clicking on an object which is already in the selection.

	This may be usefull for drilling to a more specific context, or broadening
	the selection on clicked, or selecting a sub-selectable underneath the
	clicked selectable.
]]
local LuaMeshEditingModule = script.Parent.Parent.Parent

return function(draggerContext, currentSelection, dragInfo, isDoubleClick)
	-- When the user double clicks, this looks at the last point clicked on, and
	-- selects all other control points for whatever mesh it belongs to.
	if isDoubleClick then
		local lastPoint = currentSelection[#currentSelection]
		local meshName = lastPoint.MeshName
		local selectables = draggerContext.vertexToolBase:getSelectablesForMesh(meshName)
		for _, selectable in ipairs(selectables) do
			table.insert(currentSelection, selectable.Selectable)
		end
	end
	return currentSelection
end