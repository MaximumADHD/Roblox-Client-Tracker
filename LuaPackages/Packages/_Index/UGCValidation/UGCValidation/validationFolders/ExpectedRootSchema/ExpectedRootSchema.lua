local root = script.Parent.Parent.Parent
local Types = require(root.util.Types)
local Constants = require(root.Constants)
local ValidationEnums = require(root.validationSystem.ValidationEnums)
local CreateExpectedSchema = require(root.util.CreateExpectedSchema)

local ErrorSourceStrings = require(root.validationSystem.ErrorSourceStrings)
local ExpectedRootSchema = {}

ExpectedRootSchema.categories = Constants.AllUploadCategories
ExpectedRootSchema.required_data = {
	ValidationEnums.SharedDataMember.entrypointInput,
	ValidationEnums.SharedDataMember.rootInstance,
	ValidationEnums.SharedDataMember.uploadCategory,
	ValidationEnums.SharedDataMember.uploadEnum,
}

local function checkName(nameList: any, instanceName: string)
	if type(nameList) == "table" then
		return table.find(nameList, instanceName) ~= nil
	end
	return nameList == instanceName
end

local function getReadableName(nameList: any)
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
	authorizedSet: {},
	reporter: Types.ValidationReporter
)
	authorizedSet[instance] = true
	for _, childSchema in (schema._children or {}) do
		local found = false
		for _, child in instance:GetChildren() do
			if
				authorizedSet[child] == nil
				and child.ClassName == childSchema.ClassName
				and (childSchema.Name == nil or checkName(childSchema.Name, child.Name))
			then
				validateInstancesFromSchema(child, childSchema, authorizedSet, reporter)
				found = true
				break
			end
		end

		if not found and not childSchema._optional then
			reporter:fail(ErrorSourceStrings.Keys.AssetSchemaMissingItem, {
				ParentPath = instance:GetFullName(),
				ExpectedClass = childSchema.ClassName,
				ExpectedName = getReadableName(childSchema.Name),
			})
		end
	end
end

local function validateNoInstancesOutsideSchema(
	instance: Instance,
	authorizedSet: {},
	reporter: Types.ValidationReporter
)
	local unauthorizedDescendantPaths = {}
	for _, descendant in pairs(instance:GetDescendants()) do
		if authorizedSet[descendant] == nil then
			table.insert(unauthorizedDescendantPaths, descendant:GetFullName())
		end
	end

	if #unauthorizedDescendantPaths > 0 then
		reporter:fail(ErrorSourceStrings.Keys.AssetSchemaUnexpectedItems, {
			UnexpectedDescendantPaths = table.concat(unauthorizedDescendantPaths, ", "),
		})
	end
end

ExpectedRootSchema.run = function(reporter: Types.ValidationReporter, data: Types.SharedData)
	local instance: Instance, category: string, uploadEnum: Types.UploadEnum =
		data.rootInstance, data.uploadCategory, data.uploadEnum

	if instance == nil then
		-- We don't validate the selection input yet, so we should verify the root instance exists. Other validations can assume it exists as it passes schema check.

		reporter:fail(ErrorSourceStrings.Keys.SelectionCountNotOne)
		return
	end

	local schema

	if uploadEnum.bundleType then
		-- For bundle uploads, we will recheck all the asset schemas and display an early abort message upon failure
		local fullBodyData = data.entrypointInput :: Types.FullBodyData
		schema = CreateExpectedSchema.generateBundleSchema(fullBodyData)
	else
		schema = CreateExpectedSchema.generateAssetSchema(category, uploadEnum.assetType, instance)
	end

	local authorizedSet = {}
	if schema.ClassName ~= instance.ClassName then
		-- If the root is wrong, they probably just misclicked. Tell them to fix their selection instead of flooding schema errors

		reporter:fail(ErrorSourceStrings.Keys.AssetSchemaWrongRootClass, {
			RootClass = instance.ClassName,
			ExpectedClass = schema.ClassName,
		})
	elseif schema.Name ~= nil and not checkName(schema.Name, instance.Name) then
		reporter:fail(ErrorSourceStrings.Keys.AssetSchemaWrongRootName, {
			RootName = instance.Name,
			ExpectedName = schema.Name,
		})
	else
		validateInstancesFromSchema(instance, schema, authorizedSet, reporter)
		validateNoInstancesOutsideSchema(instance, authorizedSet, reporter)
	end
end

return ExpectedRootSchema :: Types.ValidationModule
