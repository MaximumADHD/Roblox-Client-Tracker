--!nonstrict
local root = script.Parent.Parent

local getFFlagUGCValidationEnableFolderStructure = require(root.flags.getFFlagUGCValidationEnableFolderStructure)
local getFFlagUGCValidationCombineEntrypointResults = require(root.flags.getFFlagUGCValidationCombineEntrypointResults)
local getFFlagUGCValidationExtendSchemaToIgnoreDescendants =
	require(root.flags.getFFlagUGCValidationExtendSchemaToIgnoreDescendants)

local function checkName(nameList, instanceName)
	if type(nameList) == "table" then
		for _, name in pairs(nameList) do
			if name == instanceName then
				return true
			end
		end
	elseif type(nameList) == "string" then
		return nameList == instanceName
	end
	return false
end

local function getReadableName(nameList)
	if type(nameList) == "table" then
		return table.concat(nameList, " or ")
	elseif type(nameList) == "string" then
		return nameList
	end
	return "*"
end

local function validateWithSchemaHelper(schema, instance, authorizedSet)
	-- validate
	if instance.ClassName ~= schema.ClassName or (schema.Name ~= nil and not checkName(schema.Name, instance.Name)) then
		return { success = false }
	end

	if getFFlagUGCValidationExtendSchemaToIgnoreDescendants() then
		if schema._ignoreDescendants then
			assert(
				not schema._children,
				"if _ignoreDescendants is true, there should be no descendants in the schema as they would be ignored anyway"
			)
			for _, descendant in instance:GetDescendants() do
				authorizedSet[descendant] = true
			end

			authorizedSet[instance] = true
			return { success = true }
		end
	end

	-- validate children
	if schema._children then
		for _, childSchema in pairs(schema._children) do
			local found = false
			local mostRecentFailure
			for _, child in pairs(instance:GetChildren()) do
				if getFFlagUGCValidationExtendSchemaToIgnoreDescendants() then
					if authorizedSet[child] then -- don't want a single Instance to fit into two different child schema spots
						continue
					end
				end

				local result = validateWithSchemaHelper(childSchema, child, authorizedSet)
				if result.success then
					found = true
					break
				elseif result.message then
					mostRecentFailure = result
				end
			end
			if not found and not childSchema._optional then
				if mostRecentFailure then
					return mostRecentFailure
				else
					return {
						success = false,
						message = "Could not find a " .. childSchema.ClassName .. " called " .. getReadableName(
							childSchema.Name
						) .. " inside " .. instance.Name,
					}
				end
			end
		end
	end

	authorizedSet[instance] = true

	return { success = true }
end

local function validateWithSchema(schema, instance, _validationContext)
	if
		instance.ClassName ~= schema.ClassName or (schema.Name ~= nil and (not checkName(schema.Name, instance.Name)))
	then
		return {
			success = false,
			message = "Expected top-level instance to be a " .. schema.ClassName .. " named " .. getReadableName(
				schema.Name
			),
		}
	end

	local authorizedSet = {}
	local result = validateWithSchemaHelper(schema, instance, authorizedSet)

	if not result.success then
		if getFFlagUGCValidationEnableFolderStructure() and getFFlagUGCValidationCombineEntrypointResults() then
			return { success = false, message = "" }
		end

		return result
	end

	-- check for extra descendants
	local unauthorizedDescendantPaths = {}
	for _, descendant in pairs(instance:GetDescendants()) do
		if authorizedSet[descendant] == nil then
			unauthorizedDescendantPaths[#unauthorizedDescendantPaths + 1] = descendant:GetFullName()
		end
	end

	if #unauthorizedDescendantPaths > 0 then
		if getFFlagUGCValidationEnableFolderStructure() and getFFlagUGCValidationCombineEntrypointResults() then
			return { success = false, message = "" }
		end

		return {
			success = false,
			message = "Unexpected Descendants:\n" .. table.concat(unauthorizedDescendantPaths, "\n"),
		}
	end

	return { success = true }
end

return validateWithSchema
