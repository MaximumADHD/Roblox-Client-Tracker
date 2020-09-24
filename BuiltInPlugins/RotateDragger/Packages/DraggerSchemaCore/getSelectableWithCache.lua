local Workspace = game:GetService("Workspace")

--[[
	Get the selectable object from the passed-in part or model.

	If the instance is an Attachment or Constraint, it is returned directly.

	If the instance belongs to a model the top-level model is returned, unless
	the alt key is held, in which case the part itself is returned. Locked parts
	are not considered selectable.

	getMostNested specifies whether to drill down to the most nested selectable
	object instead of taking the least nested object like normal.

	Accept a cache parameter to optimize the box selection tight loop case
]]
return function(instance, getMostNested, cache)
	-- First, the easy nil and attachment cases.
	if not instance then
		return nil
	elseif instance:IsA("Attachment") or instance:IsA("Constraint") or
		instance:IsA("WeldConstraint") or instance:IsA("NoCollisionConstraint") then
		-- Note, this attachment case has to come before the fast-flat-model
		-- optimization, otherwise selecting an attachment might result in the
		-- parent part of the attachment being selected instead for cases with
		-- parts nested under other parts.
		return instance
	end

	-- Fast-flat-model optimization. Most places have a large number of parts
	-- directly underneath models with no further nesting of models. We have a
	-- nice optimization in this case, where we can cache what selectable
	-- a given parent will result in. That way we can handle many of the
	-- selectable determinations with a single hashtable lookup.
	local instanceParent = instance.Parent
	local fastCached = cache[instanceParent]
	if fastCached then
		-- Note: We don't need to worry about the locked case here. In order to
		-- return a Model as a selectable thanks to a locked part here, we would
		-- already have had to have already found an unlocked part in the same
		-- model, in which case it does not hurt to return it.
		return fastCached
	end

	-- Make sure that instance is a model or non-locked instance
	if instance:IsA("BasePart") then
		if instance.Locked then
			return nil
		end
	elseif not (instance:IsA("Model") or instance:IsA("Tool")) then
		return nil
	end

	if getMostNested then
		return instance
	else
		local selectableInstance = instance
		local candidate = instanceParent
		while candidate do
			if (candidate:IsA("Model") or candidate:IsA("Tool")) and candidate ~= Workspace then
				selectableInstance = candidate
			end
			candidate = candidate.Parent
		end

		-- Add to cache. Note: We could add all of the entries in the hierarchy
		-- between instance and selectableInstance to the cache, but that
		-- actually has worse perf, since it costs time to modify cache, while
		-- most models are flat and thus don't benefit from it.
		if selectableInstance ~= instance then
			cache[instanceParent] = selectableInstance
		end

		return selectableInstance
	end
end