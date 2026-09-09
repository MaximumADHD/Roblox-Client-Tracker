local root = script.Parent.Parent

local Types = require(root.util.Types)
local ErrorSourceStrings = require(root.validationSystem.ErrorSourceStrings)

local getFFlagUGCValidationExtendSchemaToIgnoreDescendants =
	require(root.flags.getFFlagUGCValidationExtendSchemaToIgnoreDescendants)

local function checkName(nameList: any, instanceName: string): boolean
	if type(nameList) == "table" then
		return table.find(nameList, instanceName) ~= nil
	end
	return nameList == instanceName
end

local function getReadableName(nameList: any): string
	if type(nameList) == "table" then
		return table.concat(nameList, " or ")
	elseif type(nameList) == "string" then
		return nameList
	end
	return "*"
end

local function validateInstancesFromSchema(
	instance: Instance,
	schema: any,
	authorizedSet: { [Instance]: boolean },
	reporter: Types.ValidationReporter,
	missingErrorKey: string?,
	skipInstanceContext: boolean?
)
	authorizedSet[instance] = true
	if getFFlagUGCValidationExtendSchemaToIgnoreDescendants() and schema._ignoreDescendants then
		assert(
			not schema._children,
			"if _ignoreDescendants is true, there should be no descendants in the schema as they would be ignored anyway"
		)
		for _, descendant in instance:GetDescendants() do
			authorizedSet[descendant] = true
		end

		return
	end

	for _, childSchema in (schema._children or {}) do
		local found = false
		for _, child in instance:GetChildren() do
			if
				authorizedSet[child] == nil
				and child.ClassName == childSchema.ClassName
				and (childSchema.Name == nil or checkName(childSchema.Name, child.Name))
			then
				validateInstancesFromSchema(
					child,
					childSchema,
					authorizedSet,
					reporter,
					missingErrorKey,
					skipInstanceContext
				)
				found = true
				break
			end
		end

		if not found and not childSchema._optional then
			local errorKey = missingErrorKey or ErrorSourceStrings.Keys.AssetSchemaMissingItem
			local context = if skipInstanceContext then nil else instance
			reporter:fail(errorKey, {
				ParentPath = instance:GetFullName(),
				ExpectedClass = childSchema.ClassName,
				ExpectedName = getReadableName(childSchema.Name),
				detail = `missing required {childSchema.ClassName}` .. (if childSchema.Name
					then ` named '{getReadableName(childSchema.Name)}'`
					else "") .. ` inside '{instance.Name}'`,
			}, context)
		end
	end
end

local function validateNoInstancesOutsideSchema(
	instance: Instance,
	authorizedSet: { [Instance]: boolean },
	reporter: Types.ValidationReporter,
	unauthorizedErrorKey: string?,
	skipInstanceContext: boolean?
)
	local unauthorizedDescendantPaths = {}
	for _, descendant in instance:GetDescendants() do
		if authorizedSet[descendant] == nil then
			table.insert(unauthorizedDescendantPaths, descendant:GetFullName())
		end
	end

	if #unauthorizedDescendantPaths > 0 then
		local errorKey = unauthorizedErrorKey or ErrorSourceStrings.Keys.AssetSchemaUnexpectedItems
		local context = if skipInstanceContext then nil else instance
		reporter:fail(errorKey, {
			UnexpectedDescendantPaths = table.concat(unauthorizedDescendantPaths, ", "),
			detail = `unauthorized instances found: {table.concat(unauthorizedDescendantPaths, ", ")}`,
		}, context)
	end
end

local function validateInstanceTreeAgainstSchema(
	rootInstance: Instance,
	schema: any,
	reporter: Types.ValidationReporter,
	options: {
		missingErrorKey: string?,
		unauthorizedErrorKey: string?,
		skipRootClassCheck: boolean?,
		skipInstanceContext: boolean?,
	}?
)
	local skipRootClassCheck = if options then options.skipRootClassCheck else nil
	local missingErrorKey = if options then options.missingErrorKey else nil
	local unauthorizedErrorKey = if options then options.unauthorizedErrorKey else nil
	local skipInstanceContext = if options then options.skipInstanceContext else nil
	local authorizedSet: { [Instance]: boolean } = {}

	if not skipRootClassCheck then
		if schema.ClassName ~= rootInstance.ClassName then
			reporter:fail(ErrorSourceStrings.Keys.AssetSchemaWrongRootClass, {
				RootClass = rootInstance.ClassName,
				ExpectedClass = schema.ClassName,
			})
			return
		elseif schema.Name ~= nil and not checkName(schema.Name, rootInstance.Name) then
			reporter:fail(ErrorSourceStrings.Keys.AssetSchemaWrongRootName, {
				RootName = rootInstance.Name,
				ExpectedName = schema.Name,
			})
			return
		end
	end

	validateInstancesFromSchema(rootInstance, schema, authorizedSet, reporter, missingErrorKey, skipInstanceContext)
	validateNoInstancesOutsideSchema(rootInstance, authorizedSet, reporter, unauthorizedErrorKey, skipInstanceContext)
end

return validateInstanceTreeAgainstSchema
