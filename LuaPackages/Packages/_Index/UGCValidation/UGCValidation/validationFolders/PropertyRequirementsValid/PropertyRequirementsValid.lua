local root = script.Parent.Parent.Parent

local Cryo = require(root.Parent.Cryo)

local Constants = require(root.Constants)
local Types = require(root.util.Types)
local ValidationEnums = require(root.validationSystem.ValidationEnums)
local ErrorSourceStrings = require(root.validationSystem.ErrorSourceStrings)
local valueToString = require(root.util.valueToString)
local getFFlagUGCValidationEyebrowEyelashSupport = require(root.flags.getFFlagUGCValidationEyebrowEyelashSupport)

local getFFlagUGCValidateMigrateSchemaProperties = require(root.flags.getFFlagUGCValidateMigrateSchemaProperties)

local EPSILON = 1e-5

local PropertyRequirementsValid = {}

PropertyRequirementsValid.categories = {
	ValidationEnums.UploadCategory.TORSO_AND_LIMBS,
	ValidationEnums.UploadCategory.DYNAMIC_HEAD,
	ValidationEnums.UploadCategory.LAYERED_CLOTHING,
	ValidationEnums.UploadCategory.RIGID_ACCESSORY,
	ValidationEnums.UploadCategory.MAKEUP,
}
PropertyRequirementsValid.requiredData = {
	ValidationEnums.SharedDataMember.rootInstance,
	ValidationEnums.SharedDataMember.uploadEnum,
}
PropertyRequirementsValid.fflag = getFFlagUGCValidateMigrateSchemaProperties
PropertyRequirementsValid.expectedFailures = {}

local function comparitorMethodImpl(a: number, b: number, comparitorMethod: string): boolean
	if comparitorMethod == Constants.COMPARISON_METHODS.SMALLER then
		return a < b
	elseif comparitorMethod == Constants.COMPARISON_METHODS.SMALLER_EQ then
		return a <= b
	elseif comparitorMethod == Constants.COMPARISON_METHODS.FUZZY_EQ then
		return math.abs(a - b) <= EPSILON
	elseif comparitorMethod == Constants.COMPARISON_METHODS.EXACT_EQ then
		return a == b
	elseif comparitorMethod == Constants.COMPARISON_METHODS.GREATER_EQ then
		return a >= b
	elseif comparitorMethod == Constants.COMPARISON_METHODS.GREATER then
		return a > b
	end

	error("Invalid comparitor method: " .. comparitorMethod)
end

local function doesPropertyMatchExpectations(currentValue: any, expectedValue: any, comparitorMethod: string): boolean
	if expectedValue == Cryo.None then
		return currentValue == nil
	end

	if getFFlagUGCValidationEyebrowEyelashSupport() then
		if typeof(expectedValue) == "table" and comparitorMethod == Constants.COMPARISON_METHODS.FOUND_IN then
			local result = false
			for _, v in expectedValue do
				result = result or doesPropertyMatchExpectations(currentValue, v, Constants.COMPARISON_METHODS.EXACT_EQ)
			end
			return result
		end
	end

	if typeof(currentValue) ~= typeof(expectedValue) then
		return false
	end

	if typeof(expectedValue) == "number" then
		return comparitorMethodImpl(currentValue, expectedValue, comparitorMethod)
	elseif typeof(expectedValue) == "Vector3" then
		return comparitorMethodImpl(currentValue.X, expectedValue.X, comparitorMethod)
			and comparitorMethodImpl(currentValue.Y, expectedValue.Y, comparitorMethod)
			and comparitorMethodImpl(currentValue.Z, expectedValue.Z, comparitorMethod)
	elseif typeof(expectedValue) == "Color3" then
		return comparitorMethodImpl(currentValue.R, expectedValue.R, comparitorMethod)
			and comparitorMethodImpl(currentValue.G, expectedValue.G, comparitorMethod)
			and comparitorMethodImpl(currentValue.B, expectedValue.B, comparitorMethod)
	end

	return currentValue == expectedValue
end

local function extractSubProperty(propName: string, currentValue: any): (boolean, any?)
	if typeof(currentValue) == "CFrame" and propName == "PositionMagnitude" then
		return true, currentValue.Position.Magnitude
	elseif typeof(currentValue) == "CFrame" and propName == "Orientation" then
		return true, Vector3.new(currentValue:ToOrientation())
	elseif typeof(currentValue) == "CFrame" and propName == "Position" then
		return true, currentValue.Position
	end

	return false
end

local function getAllActiveTestsOnProperty(
	assetTypeEnum: Enum.AssetType?,
	propName: string,
	currentValue: any,
	testDetails: any
): { any }
	if typeof(testDetails) ~= "table" then
		return { { propName, currentValue, testDetails, Constants.COMPARISON_METHODS.FUZZY_EQ } }
	end

	for specification, specDetails in testDetails do
		if specification == Constants.INCLUSION_METHODS.INCLUSION_LIST then
			if table.find(specDetails, assetTypeEnum) == nil then
				return {}
			end
		elseif specification == Constants.INCLUSION_METHODS.EXCLUSION_LIST then
			if table.find(specDetails, assetTypeEnum) ~= nil then
				return {}
			end
		end
	end

	local tests = {}
	for _, comparisonMethod in Constants.COMPARISON_METHODS do
		if testDetails[comparisonMethod] ~= nil then
			table.insert(tests, { propName, currentValue, testDetails[comparisonMethod], comparisonMethod })
		end
	end

	local ind_extraTest = 1
	while testDetails[ind_extraTest] ~= nil do
		local extraTests =
			getAllActiveTestsOnProperty(assetTypeEnum, propName, currentValue, testDetails[ind_extraTest])
		table.move(extraTests, 1, #extraTests, #tests + 1, tests)

		ind_extraTest += 1
	end

	for subPropertyName, specDetails in testDetails do
		local isSub, subValue = extractSubProperty(subPropertyName, currentValue)
		if isSub then
			local extraTests = getAllActiveTestsOnProperty(assetTypeEnum, subPropertyName, subValue, specDetails)

			for _, subtest in extraTests do
				subtest[1] = propName .. "." .. subtest[1]
				table.insert(tests, subtest)
			end
		end
	end

	return tests
end

PropertyRequirementsValid.run = function(reporter: Types.ValidationReporter, data: Types.SharedData)
	local instance = data.rootInstance :: Instance
	local assetTypeEnum: Enum.AssetType? = data.uploadEnum.assetType

	local objects: { Instance } = instance:GetDescendants()
	table.insert(objects, instance)

	for _, object in objects do
		for className, properties in Constants.PROPERTIES do
			if object:IsA(className) then
				for propName, expectedValue in properties do
					local propExists, propValue = pcall(function()
						return (object :: any)[propName]
					end)

					if not propExists then
						reporter:fail(ErrorSourceStrings.Keys.PropertyNotFound, {
							PropertyName = propName,
							InstancePath = object:GetFullName(),
						})
						continue
					end

					local tests = getAllActiveTestsOnProperty(assetTypeEnum, propName, propValue, expectedValue)

					for _, test in tests do
						local displayName, currentValue, requiredValue, comparitorMethod = table.unpack(test)
						if not doesPropertyMatchExpectations(currentValue, requiredValue, comparitorMethod) then
							reporter:fail(ErrorSourceStrings.Keys.PropertyValueInvalid, {
								PropertyName = displayName,
								InstancePath = object:GetFullName(),
								ComparisonMethod = comparitorMethod,
								ExpectedValue = valueToString(requiredValue),
							})
						end
					end
				end
			end
		end
	end
end

return PropertyRequirementsValid :: Types.ValidationModule
