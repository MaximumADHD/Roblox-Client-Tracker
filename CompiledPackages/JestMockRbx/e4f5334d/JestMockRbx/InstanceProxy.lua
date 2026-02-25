--[[
	* Copyright (c) Roblox Corporation. All rights reserved.
	* Licensed under the MIT License (the "License");
	* you may not use this file except in compliance with the License.
	* You may obtain a copy of the License at
	*
	*     https://opensource.org/licenses/MIT
	*
	* Unless required by applicable law or agreed to in writing, software
	* distributed under the License is distributed on an "AS IS" BASIS,
	* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
	* See the License for the specific language governing permissions and
	* limitations under the License.
]]
--!strict
-- ROBLOX NOTE: no upstream

-- ROBLOX TODO: type checking lie - this should be replaced with something more
-- representative of the actual spy type when Luau has stable support for
-- metatables and type functions. For now, mimic the given instance for good
-- autocomplete support.
export type Spied<ClassType = Instance> = ClassType

type Function = (...any) -> ...any

type MockedMethodData = {
	methodFn: Function,
}

export type InstanceProxy<ClassType = Instance> = {
	spy: Spied<ClassType>,
	controls: ProxyControls<ClassType>,
	original: ClassType,
}

export type ProxyControls<ClassType = Instance> = {
	mockMethod: (self: ProxyControls<ClassType>, name: string, method: Function) -> () -> (),
	--[[
        ROBLOX TODO:
        * mock property / event / callback fields
        * figure out a strategy for mocking descendants and ancestry nicely
    ]]
}
type ProxyControls_private<ClassType = Instance> = ProxyControls<ClassType> & {
	_validSelfSet: { [unknown]: true },
	_mockedMethods: { [string]: MockedMethodData },
}

local function makeSpyInstance<ClassType>(
	original: ClassType & Instance,
	controls: ProxyControls_private<ClassType>
): Spied<ClassType>
	local meta = {}
	local spy = setmetatable({}, meta)
	-- Keep the spy empty to ensure metamethods run.
	table.freeze(spy)

	-- Separated from the main spy table to ensure that the metamethods always run.
	local wrappedOriginal = setmetatable({}, {
		__index = function(self, fieldName)
			local fieldValue = (original :: any)[fieldName]
			if typeof(fieldValue) == "function" then
				local wrapped = function(calledWithSelf: any, ...)
					assert(calledWithSelf == spy, `Expected ':' not '.' calling member function {fieldName}`)
					return fieldValue(original, ...)
				end
				-- Cache to ensure referential identity of methods.
				rawset(self, fieldName, wrapped)
				return wrapped
			else
				return fieldValue
			end
		end,
	})

	function meta:__index(key: string): unknown
		local mockedMethod = controls._mockedMethods[key]
		if mockedMethod ~= nil then
			return mockedMethod.methodFn
		else
			return wrappedOriginal[key]
		end
	end

	function meta:__newindex(key: unknown, value: unknown): ()
		(original :: any)[key] = value
	end

	function meta:__tostring(): string
		return tostring(meta.__index(self, "Name"))
	end

	meta.__metatable = "The metatable is locked"

	controls._validSelfSet[spy] = true

	-- ROBLOX TODO: type checking lie
	return spy :: any
end

local ProxyControls = {}
ProxyControls.__index = ProxyControls

function ProxyControls.mockMethod(self: ProxyControls_private, name: string, method: Function): () -> ()
	local data: MockedMethodData = {
		methodFn = function(calledWithSelf, ...)
			assert(self._validSelfSet[calledWithSelf], `Expected ':' not '.' calling member function {name}`)
			return method(calledWithSelf, ...)
		end,
	}
	self._mockedMethods[name] = data
	return function()
		-- don't overwrite a mock that was added in the meantime
		if self._mockedMethods[name] == data then
			self._mockedMethods[name] = nil
		end
	end
end

local exports = {}

function exports.new<ClassType>(original: ClassType & Instance): InstanceProxy<ClassType>
	local controls: ProxyControls_private<ClassType> = setmetatable({
		_validSelfSet = {},
		_mockedMethods = {},
	}, ProxyControls) :: any

	return {
		spy = makeSpyInstance(original, controls),
		controls = controls,
		original = original,
	}
end

return exports
