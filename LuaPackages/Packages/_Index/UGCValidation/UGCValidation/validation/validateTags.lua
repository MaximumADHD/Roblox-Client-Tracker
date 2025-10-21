local CollectionService = game:GetService("CollectionService")

local root = script.Parent.Parent
local getFFlagUGCValidationEnableFolderStructure = require(root.flags.getFFlagUGCValidationEnableFolderStructure)
local getFFlagUGCValidationCombineEntrypointResults = require(root.flags.getFFlagUGCValidationCombineEntrypointResults)
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
		local reasons = { "Found the following instance tags which are not allowed:" }
		for _, obj in ipairs(hasTags) do
			table.insert(reasons, obj:GetFullName())
		end
		Analytics.reportFailure(Analytics.ErrorType.validateTags, nil, validationContext)

		if getFFlagUGCValidationEnableFolderStructure() and getFFlagUGCValidationCombineEntrypointResults() then
			return false, {}
		end
		return false, reasons
	end

	return true
end

return validateTags
