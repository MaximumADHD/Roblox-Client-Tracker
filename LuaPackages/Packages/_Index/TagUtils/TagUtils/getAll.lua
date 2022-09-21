local CollectionService = game:GetService("CollectionService")

local function getAll(...: string): { Instance }
	local totalTags = select("#", ...)
	assert(totalTags ~= 0, "getAll should receive at least one tag")

	local firstTag = ...

	if totalTags == 1 then
		return CollectionService:GetTagged(firstTag)
	else
		local instances = {}
		for _, instance in ipairs(CollectionService:GetTagged(firstTag)) do
			local hasAllTags = true
			for i = 2, totalTags do
				local otherTag = select(i, ...)
				if not CollectionService:HasTag(instance, otherTag) then
					hasAllTags = false
					break
				end
			end

			if hasAllTags then
				table.insert(instances, instance)
			end
		end
		return instances
	end
end

return getAll
