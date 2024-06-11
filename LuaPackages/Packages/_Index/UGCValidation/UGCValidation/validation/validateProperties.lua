--!nonstrict
local root = script.Parent.Parent

local Cryo = require(root.Parent.Cryo)

local getFFlagUGCValidateAddSpecificPropertyRequirements =
	require(root.flags.getFFlagUGCValidateAddSpecificPropertyRequirements)

local Analytics = require(root.Analytics)
local Constants = require(root.Constants)

local valueToString = require(root.util.valueToString)

local EPSILON = 1e-5

local function floatEq(a: number, b: number)
	return math.abs(a - b) <= EPSILON
end

local function v3FloatEq(a: Vector3, b: Vector3)
	return floatEq(a.X, b.X) and floatEq(a.Y, b.Y) and floatEq(a.Z, b.Z)
end

local function c3FloatEq(a: Color3, b: Color3)
	return floatEq(a.R, b.R) and floatEq(a.G, b.G) and floatEq(a.B, b.B)
end

local function propEq(propValue: any, expectedValue: any)
	if expectedValue == Cryo.None then
		return propValue == nil
	elseif typeof(expectedValue) == "number" then
		return floatEq(propValue, expectedValue)
	elseif typeof(expectedValue) == "Vector3" then
		return v3FloatEq(propValue, expectedValue)
	elseif typeof(expectedValue) == "Color3" then
		return c3FloatEq(propValue, expectedValue)
	else
		return propValue == expectedValue
	end
end

local function getSpecificExpectedValue(
	expectedValue: any,
	className: string,
	propName: string,
	assetTypeEnum: Enum.AssetType?
): any
	if
		not assetTypeEnum
		or not Constants.SPECIFIC_PROPERTIES[assetTypeEnum :: Enum.AssetType]
		or not Constants.SPECIFIC_PROPERTIES[assetTypeEnum :: Enum.AssetType][className]
		or not Constants.SPECIFIC_PROPERTIES[assetTypeEnum :: Enum.AssetType][className][propName]
	then
		return expectedValue
	end

	return Constants.SPECIFIC_PROPERTIES[assetTypeEnum :: Enum.AssetType][className][propName]
end

local function validateProperties(instance, assetTypeEnum: Enum.AssetType?): (boolean, { string }?)
	-- full tree of instance + descendants
	local objects: { Instance } = instance:GetDescendants()
	table.insert(objects, instance)

	for _, object in pairs(objects) do
		for className, properties in pairs(Constants.PROPERTIES) do
			if object:IsA(className) then
				for propName, expectedValue in pairs(properties) do
					-- ensure property exists first
					local propExists, propValue = pcall(function()
						return (object :: any)[propName]
					end)

					if not propExists then
						Analytics.reportFailure(Analytics.ErrorType.validateProperties_PropertyDoesNotExist)
						return false,
							{
								string.format(
									"Property '%s' does not exist on type '%s'. Delete the property and try again.",
									propName,
									object.ClassName
								),
							}
					end

					local specificExpectedValue = expectedValue
					if getFFlagUGCValidateAddSpecificPropertyRequirements() then
						specificExpectedValue =
							getSpecificExpectedValue(expectedValue, className, propName, assetTypeEnum)
						if specificExpectedValue == Constants.PROPERTIES_UNRESTRICTED then
							continue
						end
					end
					if not propEq(propValue, specificExpectedValue) then
						Analytics.reportFailure(Analytics.ErrorType.validateProperties_PropertyMismatch)
						return false,
							{
								string.format(
									"Tying to access property '%s.%s' using the incorrect type for it. Expected '%s' to be '%s'.",
									object:GetFullName(),
									propName,
									propName,
									valueToString(specificExpectedValue)
								),
							}
					end
				end
			end
		end
	end

	return true
end

return validateProperties
