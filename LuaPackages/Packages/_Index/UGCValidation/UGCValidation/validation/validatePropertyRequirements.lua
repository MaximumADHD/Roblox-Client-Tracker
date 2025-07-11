--[[
	Flexible property validation. Acceptable formats are
	Constants.PROPERTIES[className][propertyName] = __Test__
		- Single value: will use equal or fuzzy equal based on the type and just validate for all enums
		- Dict with the following key/value pairs:
			[Any Constants.COMPARISON_METHOD] = value to enforce. Can use multiple comparison methods to define a range
			[Any Constants.INCLUSION_METHODS] = list of AssetType.Enums to include or ignore in the test
			[Custom subtest name, defined in extractSubProperty] = __Test__

		- List of multiple tests. Ie {{__Test__ for heads}, {__Test__ for Torsos}}
		- Mixed table: You can mix the above concepts for really niche needs. Eg
			["Transparency"] = {
				{Test that applies only for dynamicHead},
				{Test that applies only for Torso},
				[SMALLER] = 0.5,
				[EXCLUSION_LIST] = {LC Enums}
				["isMultipleOf0.1"] = true
			}
			
			Here, we should only run the suite of tests on Enums that are not LCs. After that, we would have the following tests to check for:
			- Transparency < 0.5
			- "isMultipleOf0.1" would be need to be added in extractSubProperty(), to convert the actual value into true/false.
			- For DynamicHead, an additional test is run
			- For Torsos, an additional test is run
--]]
local root = script.Parent.Parent

local Cryo = require(root.Parent.Cryo)

local Analytics = require(root.Analytics)
local Constants = require(root.Constants)

local Types = require(root.util.Types)
local valueToString = require(root.util.valueToString)
local FailureReasonsAccumulator = require(root.util.FailureReasonsAccumulator)
local getFFlagUGCValidateBindOffset = require(root.flags.getFFlagUGCValidateBindOffset)

local EPSILON = 1e-5

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

	-- Unspecified types such as bools and enums will only use EXACT_EQ
	return currentValue == expectedValue
end

local function validatePropertyValue(
	validationContext: Types.ValidationContext,
	object: Instance,
	displayName: string,
	currentValue: any,
	expectedValue: any,
	comparitorMethod: string
): (boolean, { string }?)
	if not doesPropertyMatchExpectations(currentValue, expectedValue, comparitorMethod) then
		Analytics.reportFailure(Analytics.ErrorType.validateProperties_PropertyMismatch, nil, validationContext)

		return false,
			{
				string.format(
					"Property %s of %s is invalid. Expected to be %s %s.",
					displayName,
					object:GetFullName(),
					comparitorMethod,
					valueToString(expectedValue)
				),
			}
	end
	return true
end

local function extractSubProperty(propName: string, currentValue: any): (boolean, any?)
	if typeof(currentValue) == "CFrame" and propName == "PositionMagnitude" then
		return true, currentValue.Position.Magnitude
	elseif typeof(currentValue) == "CFrame" and propName == "Orientation" then
		return true, Vector3.new(currentValue:ToOrientation())
	elseif getFFlagUGCValidateBindOffset() and (typeof(currentValue) == "CFrame" and propName == "Position") then
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
	-- Takes all possible propName/details formats and returns a unified format of all tests to run
	-- { {display name, currentValue, expectedValue, comparitor method} }
	if typeof(testDetails) ~= "table" then
		-- classic test
		return { { propName, currentValue, testDetails, Constants.COMPARISON_METHODS.FUZZY_EQ } }
	end

	-- first checks if we can ignore this test
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

	-- next, check if this specific value has a test on it
	local tests = {}
	for _, comparisonMethod in Constants.COMPARISON_METHODS do
		if testDetails[comparisonMethod] ~= nil then
			table.insert(tests, { propName, currentValue, testDetails[comparisonMethod], comparisonMethod })
		end
	end

	-- next, check if there are extra tests on this value. Eg Transparency = { {lower bound test}, {upper bound test} }
	local ind_extraTest = 1
	while testDetails[ind_extraTest] ~= nil do
		local extraTests =
			getAllActiveTestsOnProperty(assetTypeEnum, propName, currentValue, testDetails[ind_extraTest])
		table.move(extraTests, 1, #extraTests, #tests + 1, tests)

		ind_extraTest += 1
	end

	-- finally, look for any subproperty tests. Eg: CageOrigin is CFrame, and we want to test Orientation.
	for subPropertyName, specDetails in testDetails do
		local isSub, subValue = extractSubProperty(subPropertyName, currentValue)
		if isSub then
			local extraTests = getAllActiveTestsOnProperty(assetTypeEnum, subPropertyName, subValue, specDetails)

			for _, subtest in extraTests do
				subtest[1] = propName .. "." .. subtest[1] -- add the parent name as a prefix for the child property DISPLAY name
				table.insert(tests, subtest)
			end
		end
	end

	return tests
end

local function validatePropertyRequirements(
	instance,
	assetTypeEnum: Enum.AssetType?,
	validationContext: Types.ValidationContext
): (boolean, { string }?)
	if assetTypeEnum == nil then
		assetTypeEnum = validationContext.assetTypeEnum
	end

	-- full tree of instance + descendants
	local objects: { Instance } = instance:GetDescendants()
	table.insert(objects, instance)

	local reasonsAccumulator = FailureReasonsAccumulator.new()

	for _, object in objects do
		for className, properties in Constants.PROPERTIES do
			if object:IsA(className) then
				for propName, expectedValue in properties do
					-- ensure property exists first
					local propExists, propValue = pcall(function()
						return (object :: any)[propName]
					end)

					if not propExists then
						Analytics.reportFailure(
							Analytics.ErrorType.validateProperties_PropertyDoesNotExist,
							nil,
							validationContext
						)
						reasonsAccumulator:updateReasons(false, {
							string.format("Property '%s' not found in '%s'", propName, object:GetFullName()),
						})
						continue
					end

					local tests = getAllActiveTestsOnProperty(assetTypeEnum, propName, propValue, expectedValue)

					for _, test in tests do
						local displayName, currentValue, requiredValue, comparitorMethod = table.unpack(test)
						reasonsAccumulator:updateReasons(
							validatePropertyValue(
								validationContext,
								object,
								displayName,
								currentValue,
								requiredValue,
								comparitorMethod
							)
						)
					end
				end
			end
		end
	end

	return reasonsAccumulator:getFinalResults()
end

return validatePropertyRequirements
