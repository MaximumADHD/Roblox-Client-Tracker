local CollectionService = game:GetService("CollectionService")

local function validateTags(instance)
	local objects = instance:GetDescendants()
	table.insert(objects, instance)

	local hasTags = {}
	for _, obj in pairs(objects) do
		if #CollectionService:GetTags(obj) > 0 then
			table.insert(hasTags, obj)
		end
	end

	if #hasTags > 0 then
		local reasons = { "The following objects contain CollectionService tags:" }
		for _, obj in pairs(hasTags) do
			table.insert(reasons, obj:GetFullName())
		end
		return false, reasons
	end

	return true
end

return validateTags