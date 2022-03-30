local Workspace = game:GetService("Workspace")

local getSelectableWithCache = require(script.Parent.getSelectableWithCache)
local shouldSelectSubPart = require(script.Parent.shouldSelectSubPart)

return function(draggerContext, mouseRay, currentSelection)
	local shouldDrillSelection = shouldSelectSubPart(draggerContext)
	local hitItem, hitDistance = nil
	local params = RaycastParams.new()
	params.BruteForceAllSlow = true
	local result = Workspace:Raycast(mouseRay.Origin, mouseRay.Direction, params)

	if result then
		hitItem = result.Instance
		hitDistance = result.Distance

		-- Selection favoring: If there is a selected object and a non-selected
		-- object almost exactly coincident underneath the mouse, then we should
		-- favor the selected one, even if due to floating point error the non
		-- selected one comes out slightly closer.
		-- Without this case, if you duplicate objects and try to drag them, you
		-- may end up dragging only one of the objects because you clicked on the
		-- old non-selected copy, as opposed to the selected one you meant to.
		params.FilterType = Enum.RaycastFilterType.Whitelist
		params.FilterDescendantsInstances = currentSelection
		local selectedResult = Workspace:raycast(mouseRay.Origin, mouseRay.Direction, params)
		if selectedResult and selectedResult.Position:FuzzyEq(result.Position) then
			hitItem = selectedResult.Instance
		end
	end

	local gizmoResult = draggerContext:gizmoRaycast(
		mouseRay.Origin, mouseRay.Direction, RaycastParams.new())
	if gizmoResult and
		(draggerContext:shouldDrawConstraintsOnTop() or (result and gizmoResult.Distance < result.Distance)) then
		hitItem = gizmoResult.Instance
		hitDistance = gizmoResult.Distance
	end

	if hitItem then -- raycasts have hit any part or gizmo
		local hitSelectable = getSelectableWithCache(hitItem, shouldDrillSelection, {})
		return hitSelectable, hitItem, hitDistance
	else
		return nil
	end

end