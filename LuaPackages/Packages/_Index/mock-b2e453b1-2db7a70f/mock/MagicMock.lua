local symbols = require(script.Parent.symbols)
local Spy = require(script.Parent.Spy)
local setReturnValue = require(script.Parent.setReturnValue)
local setSideEffect = require(script.Parent.setSideEffect)

local DEFAULT_NAME = "mock"

local function isKeyInSpec(meta, key)
	local spec = meta[symbols.Spec]
	if spec then
		local isSafe, isValid = pcall(function()
			return spec[key]
		end)
		return isSafe and isValid
	end

	return true
end

local MagicMock = {}
MagicMock.is = require(script.Parent.isAMagicMock)

local MetaMock = {}
function MetaMock:__tostring()
	local meta = getmetatable(self)
	local fieldsToShow = { "id=" .. meta[symbols.Address] }

	local name = meta[symbols.Name]
	if name ~= nil and name ~= DEFAULT_NAME then
		table.insert(fieldsToShow, "name=" .. name)
	end

	return "<MagicMock " .. table.concat(fieldsToShow, " ") .. ">"
end

function MetaMock:__index(key)
	-- Any access to an undefined member will return a new MagicMock.
	local meta = getmetatable(self)

	if not isKeyInSpec(meta, key) then
		error(string.format("MagicMock Error: Cannot index key %q since it is out of spec.", tostring(key)))
	end

	local child = meta[symbols.Children][key]
	if child == nil then
		child = MagicMock.new({ name = meta[symbols.Name] .. "." .. tostring(key) })
		meta[symbols.Children][key] = child
		return child
	elseif child == symbols.None then
		return nil
	else
		return child
	end
end

function MetaMock:__newindex(key, value)
	-- Store any assigned values for later recall.
	local meta = getmetatable(self)

	if not isKeyInSpec(meta, key) then
		error(string.format("MagicMock Error: Cannot write key %q since it is out of spec", tostring(key)))
	end

	if type(value) == "function" then
		local _, wrapper = Spy.new(value)
		value = wrapper
	elseif value == nil then
		value = symbols.None
	end

	if key == symbols.ReturnValue then
		meta[symbols.ReturnValue] = { value, n=1 }
	else
		meta[symbols.Children][key] = value
	end
end

local function isTuple(object)
	if type(object) == "table" and object[symbols.isTuple] then
		return not MagicMock.is(object)
	end
end

local function getReturnValue(meta, ...)
	if meta[symbols.ReturnValue] then
		return meta[symbols.ReturnValue]
	end

	local sideEffect = meta[symbols.SideEffect]
	if sideEffect then
		sideEffect.calls += 1
		if type(sideEffect.value) == "function" or Spy.is(sideEffect.value) then
			return { sideEffect.value(...) }
		elseif type(sideEffect.value) == "table" then
			local timesCalled = sideEffect.calls
			local returnValue
			if isTuple(sideEffect.value) then
				local tuple = sideEffect.value
				returnValue = tuple.values[timesCalled]
			else
				returnValue = sideEffect.value[timesCalled]
			end

			if returnValue then
				return { returnValue }
			else
				error("MagicMock Error: SideEffect iteration reached")
			end
		else
			error("MagicMock Error: Invalid SideEffect")
		end
	end

	return nil
end

function MetaMock:__call(...)
	-- Any call to a MagicMock will store the args and then return the
	-- ReturnValue (or call that if it's a function). If no return
	-- value was set, this will create a new MagicMock.
	local meta = getmetatable(self)
	local call = {
		args = table.pack(...),
		result = getReturnValue(meta, ...),
	}
	if call.result == nil then
		local child = MagicMock.new({ name = meta[symbols.Name] .. "()" })
		call.result = { child, n=1 }
		meta[symbols.ReturnValue] = call.result
	elseif call.result == symbols.None then
		call.result = { n=1 }
	else
		local result = call.result[1]
		if isTuple(result) then
			local tuple = call.result[1]
			call.result = tuple.values
		end
	end

	table.insert(meta[symbols.Calls], call)
	return table.unpack(call.result)
end

local function operation(name)
	return function(left, right)
		local meta, nameModifier = nil, nil
		if type(left) ~= "string" and getmetatable(left) then
			meta = getmetatable(left)
			nameModifier = string.format("__%s()", name)
		else
			meta = getmetatable(right)
			nameModifier = string.format("__r_%s()", name)
		end

		local previousResult = meta[symbols.Operations][nameModifier]
		if previousResult == nil then
			-- never expressed before
			local newResult = MagicMock.new({ name = meta[symbols.Name] .. "." .. nameModifier })
			meta[symbols.Operations][nameModifier] = newResult
			return newResult
		else
			return previousResult
		end
	end
end

MetaMock.__add = operation("add")
MetaMock.__sub = operation("sub")
MetaMock.__div = operation("div")
MetaMock.__mul = operation("mul")
MetaMock.__mod = operation("mod")
MetaMock.__pow = operation("pow")
MetaMock.__unm = operation("neg")
MetaMock.__concat = operation("concat")

function MagicMock.new(properties)
	properties = properties or {}

	local function getName()
		if properties.name then
			return properties.name
		elseif properties.spec then
			return tostring(properties.spec)
		else
			return DEFAULT_NAME
		end
	end

	local self = {}
	local mock = {
		[symbols.isMagicMock] = true,
		[symbols.Address] = tostring(self),
		[symbols.Name] = getName(),
		[symbols.Operations] = {},
		[symbols.Calls] = {},
		[symbols.Children] = {},
		[symbols.Spec] = properties.spec or nil,
		[symbols.ReturnValue] = nil,
		[symbols.SideEffect] = nil,
	}

	-- Copy the Meta functions from MetaMock
	for k, v in pairs(MetaMock) do
		mock[k] = v
	end

	local magicMock = setmetatable(self, mock)
	if properties.returnValue then
		setReturnValue(magicMock, properties.returnValue)
	end
	if properties.sideEffect then
		setSideEffect(magicMock, properties.sideEffect)
	end

	return magicMock
end

function MagicMock.is(object)
	local meta = getmetatable(object)
	if meta then
		return meta[symbols.isMagicMock] ~= nil
	end

	return false
end

return MagicMock
