local root = script.Parent.Parent
local MagicMock = require(root.MagicMock)
local Spy = require(root.Spy)
local AnyCallMatches = require(root.AnyCallMatches)
local fmtArgs = require(root.fmtArgs)
local symbols = require(root.symbols)

local function getLiteralPredicate(value)
	return function(x)
		return x == value
	end
end

local function isPredicate(value)
	if type(value) == "table" and value[symbols.isPredicate] then
		return not MagicMock.is(value)
	end
end

return function(mock, ...)
	local isAMock = MagicMock.is(mock) or Spy.is(mock)
	if not isAMock then
		return {
			pass = false,
			message = string.format("expect(mock) must be a MagicMock or Spy when .toHaveBeenCalledWith is used. Given %s instead", tostring(mock))
		}
	end

	local expectedArgs = table.pack(...)

	local predicateArgs = {}
	for _, arg in ipairs(expectedArgs) do
		if isPredicate(arg) then
			table.insert(predicateArgs, arg.predicate)
		else
			table.insert(predicateArgs, getLiteralPredicate(arg))
		end
	end

	local pass, message = AnyCallMatches.predicates(mock, table.unpack(predicateArgs))
	return {
		pass = pass,
		message = pass and string.format("Expected %s to never have been called with args: %s", tostring(mock), fmtArgs(expectedArgs))
			or string.format("Expected %s to have been called with args: %s", tostring(mock), message),
	}
end
