local Root = script.Parent
local Packages = Root.Parent

local JestGlobals = require(Packages.JestGlobals)
local jest = JestGlobals.jest

local function createMemberFunctionMocker(class: any)
	local st = {}
	local mt = getmetatable(class)

	local function mockMemberFunction(functionName)
		local prev = mt[functionName]
		local mockFn = jest.fn()
		mt[functionName] = mockFn
		table.insert(st, function()
			mt[functionName] = prev
		end)
		return mockFn
	end

	local function reset()
		for i = #st, 1, -1 do
			st[i]()
		end
		table.clear(st)
	end

	return mockMemberFunction, reset
end

return createMemberFunctionMocker
