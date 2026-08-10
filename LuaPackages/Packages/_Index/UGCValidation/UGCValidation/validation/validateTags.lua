local CollectionService = game:GetService("CollectionService")

local root = script.Parent.Parent
local Analytics = require(root.Analytics)

local Types = require(root.util.Types)

local function validateTags(instance: Instance, validationContext: Types.ValidationContext): (boolean, { string }?)
	local objects: { Instance } = instance:GetDescendants()
	table.insert(objects, instance)

	local hasTags = {}
	for _, obj in ipairs(objects) do
		if #CollectionService:GetTags(obj) > 0 then
			table.insert(hasTags, obj)
		end
	end

	if #hasTags > 0 then
		Analytics.reportFailure(Analytics.ErrorType.validateTags, nil, validationContext)

		return false, {}
	end

	return true
end

return validateTags
