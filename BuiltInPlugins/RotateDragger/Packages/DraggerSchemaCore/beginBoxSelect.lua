local Workspace = game:GetService("Workspace")

local getSelectableWithCache = require(script.Parent.getSelectableWithCache)
local shouldSelectSubPart = require(script.Parent.shouldSelectSubPart)

return function(draggerContext)
	local dragCandidates = {}

	local areConstraintDetailsShown = draggerContext:areConstraintDetailsShown()
	local shouldSelectIndividually = shouldSelectSubPart(draggerContext)
	local getSelectableCache = {}
	local alreadyAddedSet = {}
	local descendants = Workspace:GetDescendants()
	for _, object in ipairs(descendants) do
		-- TODO: Refactor this to not look through every BasePart
		-- unless shouldSelectIndividually is true
		-- (though it still has to look through every Attachment)
		if object:IsA("BasePart") then
			if not object.Locked then
				local selectable = getSelectableWithCache(object,
					shouldSelectIndividually, getSelectableCache)
				if selectable and not alreadyAddedSet[selectable] then
					local center
					if selectable:IsA("Tool") then
						center = object.Position
					elseif selectable:IsA("Model") then
						center = selectable:GetBoundingBox().Position
					else
						center = selectable.Position
					end
					alreadyAddedSet[selectable] = true
					table.insert(dragCandidates, {
						Center = center,
						Selectable = selectable,
					})
				end
			end
		elseif object:IsA("Attachment") then
			if object.Visible or areConstraintDetailsShown then
				table.insert(dragCandidates, {
					Center = object.WorldPosition,
					Selectable = object,
				})
			end
		end
	end

	return dragCandidates
end