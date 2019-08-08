local function validateWithSchemaHelper(schema, instance, authorizedSet)
	-- validate
	if instance.ClassName ~= schema.ClassName or (schema.Name ~= nil and schema.Name ~= instance.Name) then
		return { success = false }
	end

	-- validate children
	if schema._children then
		for _, childSchema in pairs(schema._children) do
			local found = false
			local mostRecentFailure
			for _, child in pairs(instance:GetChildren()) do
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
						message = "Could not find a "
							.. childSchema.ClassName
							.. " called "
							.. (childSchema.Name or "*")
							.. " inside "
							.. instance.Name
					}
				end
			end
		end
	end

	authorizedSet[instance] = true

	return { success = true }
end

local function validateWithSchema(schema, instance)

	if instance.ClassName ~= schema.ClassName or (schema.Name ~= nil and schema.Name ~= instance.Name) then
		return {
			success = false,
			message = "Expected top-level instance to be a " .. schema.ClassName,
		}
	end

	local authorizedSet = {}
	local result = validateWithSchemaHelper(schema, instance, authorizedSet)

	if not result.success then
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
		return {
			success = false,
			message = "Unexpected Descendants:\n" .. table.concat(unauthorizedDescendantPaths, "\n")
		}
	end

	return { success = true }
end

return validateWithSchema