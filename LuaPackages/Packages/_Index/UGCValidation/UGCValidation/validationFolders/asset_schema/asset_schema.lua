local root = script.Parent.Parent.Parent
local Types = require(root.util.Types)
local Constants = require(root.Constants)
local ValidationEnums = require(root.validationSystem.ValidationEnums)
local CreateAssetSchema = require(root.util.CreateAssetSchema)

local asset_schema = {}

asset_schema.categories = Constants.AllAssetValidationEnums
asset_schema.required_data = {
	ValidationEnums.SharedDataMember.ROOT_INSTANCE,
	ValidationEnums.SharedDataMember.UPLOAD_CATEGORY,
	ValidationEnums.SharedDataMember.ASSET_TYPE_ENUM,
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
			local errorDatas: { [string]: any } = {
				["ExpectedPath"] = instance:GetFullName(),
				["ExpectedClass"] = childSchema.ClassName,
				["ExpectedName"] = getReadableName(childSchema.Name),
			}
			reporter:fail(errorDatas, "ErrorLabel.AssetSchemaMissingItem")
		end
	end
end

local function validateNoInstancesOutsideSchema(
	instance: Instance,
	authorizedSet: {},
	reporter: Types.ValidationReporter
)
	for _, descendant in pairs(instance:GetDescendants()) do
		if authorizedSet[descendant] == nil then
			local errorDatas: { [string]: any } = {
				["Path"] = descendant:GetFullName(),
			}
			reporter:fail(errorDatas, "ErrorLabel.AssetSchemaUnexpectedItem")
		end
	end
end

asset_schema.run = function(reporter: Types.ValidationReporter, data: Types.SharedData)
	local instance: Instance, category: string, assetEnum: Enum.AssetType =
		data.root_instance, data.upload_category, data.asset_type_enum

	local instanceData = {}
	if category == ValidationEnums.UploadCategory.RIGID_ACCESSORY then
		-- There are two acceptable schemas for this category
		instanceData.isMeshPart = instance:FindFirstChildOfClass("MeshPart") ~= nil
	end

	local schema = CreateAssetSchema[category](assetEnum, instanceData) :: any
	local authorizedSet = {}
	if schema.ClassName ~= instance.ClassName or (schema.Name ~= nil and not checkName(schema.Name, instance.Name)) then
		-- If the root is wrong, they probably just misclicked. Tell them to fix their selection instead of flooding schema errors
		local errorDatas: { [string]: any } = {
			["ExpectedClass"] = schema.ClassName,
			["ExpectedName"] = getReadableName(schema.Name),
		}
		reporter:fail(errorDatas, "ErrorLabel.AssetSchemaWrongRoot")
	else
		validateInstancesFromSchema(instance, schema, authorizedSet, reporter)
		validateNoInstancesOutsideSchema(instance, authorizedSet, reporter)
	end
end

return asset_schema :: Types.ValidationModule
