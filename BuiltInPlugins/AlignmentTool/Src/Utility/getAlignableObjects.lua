local Workspace = game:GetService("Workspace")

--[[
	Get alignable objects. An alignable object is either a Model or BasePart,
	excluding Terrain.

	Returns an array of alignable parts and models, and an array of all parts
	including parts that are descendants of models.
]]
return function(objects)
	local alignableObjects = table.create(64)
	local alignableObjectSet = {}
	local allParts = table.create(64)
	local allPartsSet = {}

	local terrain = Workspace.Terrain

	local function addAlignable(object)
		if not alignableObjectSet[object] then
			table.insert(alignableObjects, object)
			alignableObjectSet[object] = true
		end
	end

	local function addPart(part)
		if not allPartsSet[part] then
			table.insert(allParts, part)
			allPartsSet[part] = true
		end
	end

	for _, object in ipairs(objects) do
		if object:IsA("BasePart") and object ~= terrain then
			addAlignable(object)
			addPart(object)
		elseif object:IsA("Model") then
			addAlignable(object)
			for _, descendant in ipairs(object:GetDescendants()) do
				if descendant:IsA("BasePart") then
					addPart(descendant)
				end
			end
		end
	end

	return alignableObjects, allParts
end
