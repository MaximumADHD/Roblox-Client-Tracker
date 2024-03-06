local CollectionService = game:GetService("CollectionService")

local root = script.Parent.Parent

local Analytics = require(root.Analytics)

local function validateTags(instance: Instance): (boolean, { string }?)
	local objects: { Instance } = instance:GetDescendants()
	table.insert(objects, instance)

	local hasTags = {}
	for _, obj in ipairs(objects) do
		if #CollectionService:GetTags(obj) > 0 then
			table.insert(hasTags, obj)
		end
	end

	if #hasTags > 0 then
		local reasons = { "Found the following instance tags which are not allowed:" }
		for _, obj in ipairs(hasTags) do
			table.insert(reasons, obj:GetFullName())
		end
		Analytics.reportFailure(Analytics.ErrorType.validateTags)
		return false, reasons
	end

	return true
end

return validateTags
