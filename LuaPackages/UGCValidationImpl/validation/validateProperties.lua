local CorePackages = game:GetService("CorePackages")

local Cryo = require(CorePackages.Cryo)

local root = script.Parent.Parent

local Constants = require(root.Constants)
local valueToString = require(root.util.valueToString)

local EPSILON = 1e-5

local function floatEq(a, b)
	return math.abs(a - b) <= EPSILON
end

local function v3FloatEq(a, b)
	return floatEq(a.X, b.X) and floatEq(a.Y, b.Y) and floatEq(a.Z, b.Z)
end

local function c3FloatEq(a, b)
	return floatEq(a.r, b.r) and floatEq(a.g, b.g) and floatEq(a.b, b.b)
end

local function propEq(propValue, expectedValue)
	local valueType = typeof(expectedValue)
	if expectedValue == Cryo.None then
		return propValue == nil
	elseif valueType == "number" then
		return floatEq(propValue, expectedValue)
	elseif valueType == "Vector3" then
		return v3FloatEq(propValue, expectedValue)
	elseif valueType == "Color3" then
		return c3FloatEq(propValue, expectedValue)
	else
		return propValue == expectedValue
	end
end

local function validateProperties(instance)

	-- full tree of instance + descendants
	local objects = instance:GetDescendants()
	table.insert(objects, instance)

	for _, object in pairs(objects) do
		for className, properties in pairs(Constants.PROPERTIES) do
			if object:IsA(className) then
				for propName, expectedValue in pairs(properties) do
					-- ensure property exists first
					local propExists, propValue = pcall(function() return object[propName] end)

					if not propExists then
						return false, {
							string.format("Property %s does not exist on type %s", propName, object.ClassName)
						}
					end

					if not propEq(propValue, expectedValue) then
						return false, {
							string.format("Expected %s.%s to be %s", object:GetFullName(), propName, valueToString(expectedValue))
						}
					end
				end
			end
		end
	end

	return true
end

return validateProperties