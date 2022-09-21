local CollectionService = game:GetService("CollectionService")

local function getAny(...: string): { Instance }
	local totalTags = select("#", ...)
	assert(totalTags ~= 0, "getAny should receive at least one tag")

	if totalTags == 1 then
		local firstTag = ...
		return CollectionService:GetTagged(firstTag)
	else
		local inserted = {}
		local instances = {}
		for i = 1, totalTags do
			local tag = select(i, ...)
			for _, taggedInstance in ipairs(CollectionService:GetTagged(tag)) do
				if not inserted[taggedInstance] then
					inserted[taggedInstance] = true
					table.insert(instances, taggedInstance)
				end
			end
		end
		return instances
	end
end

return getAny
