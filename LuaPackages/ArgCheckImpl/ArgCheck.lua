local FFlagDebugLuaArgCheck = game:DefineFastFlag("DebugLuaArgCheck", false)

local function IsRunningInStudio()
	return game:GetService("RunService"):IsStudio()
end

local function assert_(condition, message)
	if FFlagDebugLuaArgCheck or IsRunningInStudio() or _G.__TESTEZ_RUNNING_TEST__ then
		assert(condition, message)
	end
end

local ArgCheck = {}

function ArgCheck.isNonNegativeNumber(value, name)
	-- Temporarily disabled outside of studio/tests. See MOBLUAPP-1161.
	assert_(typeof(value) == "number" and value >= 0, string.format("expects %s to be a non-negative number!", name))

	return value
end

function ArgCheck.isType(value, expectedType, name)
	assert_(typeof(value) == expectedType,
			string.format("expects %s to be a %s! it was: %s", name, expectedType, typeof(value)))

	return value
end

function ArgCheck.isInTypes(value, expectedTypes, name)
	for _, expectedType in ipairs(expectedTypes) do
		if typeof(value) == expectedType then
			return value
		end
	end

	assert_(false, string.format("expects %s to be one of expectedTypes! it was: %s", name, typeof(value)))

	return value
end

function ArgCheck.isTypeOrNil(value, expectedType, name)
	assert_(value == nil or typeof(value) == expectedType,
			string.format("expects %s to be a %s! it was: %s", name, expectedType, typeof(value)))

	return value
end

function ArgCheck.isNotNil(value, name)
	assert_(value ~= nil, string.format("expects %s to be not nil!", name))

	return value
end

function ArgCheck.isNonEmptyString(value, name)
	assert_(typeof(value) == "string" and value ~= "" ,
			string.format("expects %s to be a non-empty string!", name))

	return value
end

function ArgCheck.isEqual(value, expectedValue, name)
	assert_(value == expectedValue, string.format("expects %s to equal %s! it was: %s", name, tostring(expectedValue), tostring(value)))

	return value
end

-- checks for a number or string representing an integer
function ArgCheck.representsInteger(value, name)
	local numberValue = tonumber(value)
	assert_(numberValue ~= nil , string.format("expects %s to represent a number!", name))
	assert_(numberValue % 1 == 0 , string.format("expects %s to represent an integer!", name))

	return value
end

--[[
	Checks if the value matches the given interface
	iface is the interface description; it can be (in order of priority):
		* a custom type name: checks against a type from dependencies (see below)
		* an ArgCheck handler:
			* "integer" => ArgCheck.representsInteger
			* "nonEmptyString" => ArgCheck.isNonEmptyString
		* a lua type (string): equivalent to ArgCheck.isType
		* a list style table (only first item is considered):
			checks for a list table with items matching the given interface
		* a dict style table: checks for a table with keys matching the given interfaces
	dependencies is a table of named interfaces that can be referenced in iface
	Example:
	local myTypes = {
		Tree = {
			value = "string",
			leaves = {"string"},
			branches = {"Tree"},
		},
	}
	ArgCheck.matchesInterface(someValue, "Tree", "myVal", myTypes)
]]--
function ArgCheck.matchesInterface(value, iface, name, dependencies)
	if IsRunningInStudio() or _G.__TESTEZ_RUNNING_TEST__ then
		local checkFnList = {
			integer = ArgCheck.representsInteger,
			nonEmptyString = ArgCheck.isNonEmptyString,
		}
		if type(iface) == "string" then
			if dependencies and dependencies[iface] then
				ArgCheck.matchesInterface(value, dependencies[iface], name, dependencies)
			else
				local checkFn = checkFnList[iface]
				if type(checkFn) == "function" then
					checkFn(value, name)
				else
					ArgCheck.isType(value, iface, name)
				end
			end
		else
			-- assume iface describes a table (list or dict)
			ArgCheck.isType(value, "table", name)
			if iface[1] ~= nil then
				for index, item in ipairs(value) do
					ArgCheck.matchesInterface(item, iface[1], name .. "[" .. index .. "]", dependencies)
				end
			else
				for key, desc in pairs(iface) do
					if string.sub(key, 1, 1) ~= "_" then
						local itemName = name .. "." .. key
						local itemValue = value[key]
						local isRequired = iface._required and iface._required[key]
						if isRequired or itemValue ~= nil then
							ArgCheck.matchesInterface(itemValue, desc, itemName, dependencies)
						end
					end
				end
			end
		end
	end

	return value
end

function ArgCheck.assert(...)
	assert_(...)
end

return ArgCheck
