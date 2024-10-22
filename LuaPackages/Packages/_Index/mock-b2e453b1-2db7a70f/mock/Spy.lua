-- Create a wrapper around a function to capture what arguments it was called
-- with.

local symbols = require(script.Parent.symbols)
local isAMagicMock = require(script.Parent.isAMagicMock)

local Spy = {}
Spy.__index = Spy
Spy.__call = function(self, ...)
	return self.inner(...)
end

local spyLookup = {}
setmetatable(spyLookup, {__mode = "kv"})

function Spy.new(inner)
	local spy = {
		[symbols.isSpy] = true,
		[symbols.Calls] = {}
	}
	setmetatable(spy, Spy)

	local wrapper = function(...)
		local call = {
			args = table.pack(...),
			result = table.pack(inner(...)),
		}
		table.insert(spy[symbols.Calls], call)
		return table.unpack(call.result)
	end

	spy.inner = wrapper
	spyLookup[wrapper] = spy

	return spy, wrapper
end

function Spy.lookup(wrapper)
	return spyLookup[wrapper]
end

function Spy.is(object)
	if not isAMagicMock(object) then
		return type(object) == "table" and object[symbols.isSpy] ~= nil
	end

	return false
end

return Spy
