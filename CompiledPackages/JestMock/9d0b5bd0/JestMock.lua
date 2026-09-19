--!nonstrict
local CurrentModule = script
local Packages = CurrentModule.Parent

local LuauPolyfill = require(Packages.LuauPolyfill)
local Error = LuauPolyfill.Error
local Set = LuauPolyfill.Set
local Symbol = require(Packages.Symbol)

local JestMockGenv = require(Packages.JestMockGenv)
type GlobalMocker = JestMockGenv.GlobalMocker
type GlobalAutomocks = JestMockGenv.GlobalAutomocks
local GlobalMocker = JestMockGenv.GlobalMocker

local JestTypes = require(Packages.JestTypes)
type Config_ProjectConfig = JestTypes.Config_ProjectConfig

local JestMockRbx = require(Packages.JestMockRbx)
local DataModelMocker = JestMockRbx.DataModelMocker

local ModuleMockerClass = {}

type MockDefaultY = { any }
type MockFunctionState<T, Y> = {
	calls: { Y },
	instances: { T },
	contexts: { T },
	invocationCallOrder: { number },
	lastCall: { T }?,
	results: { MockFunctionResult },
}

export type MaybeMockedDeep<T> = T
export type MaybeMocked<T> = T

export type UnknownFunction = (...unknown) -> ...unknown
export type Mock<T = UnknownFunction> = any

type MockFunctionResultType = string
type MockFunctionResult = {
	type: MockFunctionResultType,
	value: any,
}
type MockFunctionConfig = {
	mockImpl: any,
	mockName: string,
	specificReturnValues: { any },
	specificMockImpls: { any },
}

export type ModuleMocker = {
	isMockFunction: (_self: ModuleMocker, fn: any) -> boolean,
	fn: <T..., Y...>(_self: ModuleMocker, implementation: ((T...) -> Y...)?) -> (MockFn, (...any) -> ...any),
	clearAllMocks: (_self: ModuleMocker) -> (),
	resetAllMocks: (_self: ModuleMocker) -> (),
	restoreAllMocks: (_self: ModuleMocker) -> (),
	mocked: <T>(_self: ModuleMocker, item: T, _deep: boolean?) -> MaybeMocked<T> | MaybeMockedDeep<T>,
	spyOn: <M>(
		_self: ModuleMocker,
		object: { [any]: any } | Instance,
		methodName: M,
		accessType: ("get" | "set")?
	) -> Mock<any>,
	protectDataModel: (_self: ModuleMocker, predicate: (Instance, methodName: string) -> boolean) -> (),
	dataModelMocker: JestMockRbx.DataModelMocker,
	mockGlobals: (_self: ModuleMocker, globals: GlobalMocker, env: { [string]: any }) -> (),
	unmockGlobals: (_self: ModuleMocker, globals: GlobalMocker) -> (),
}

ModuleMockerClass.__index = ModuleMockerClass
function ModuleMockerClass.new(config: Config_ProjectConfig): ModuleMocker
	local self = {
		_projectConfig = config,
		_mocksOnObjectsMap = setmetatable({}, {
			-- weak keys: no need to hold info for discarded objects
			__mode = "k",
		}),
		_mockState = {},
		_mockConfigRegistry = {},
		_invocationCallCounter = 1,
		_spyState = Set.new(),
		dataModelMocker = DataModelMocker.new(),
		_dataModelProtector = function(_, _)
			return true
		end,
	}

	setmetatable(self, ModuleMockerClass)

	return (self :: any) :: ModuleMocker
end

function ModuleMockerClass:_ensureMockConfig(f): MockFunctionConfig
	local config = self._mockConfigRegistry[f]
	if not config then
		config = self:_defaultMockConfig()
		self._mockConfigRegistry[f] = config
	end

	return config
end

function ModuleMockerClass:_ensureMockState(f): MockFunctionState<any, any>
	local state = self._mockState[f]
	if not state then
		state = self:_defaultMockState()
		self._mockState[f] = state
	end

	if #state.calls > 0 then
		state.lastCall = state.calls[#state.calls]
	end

	return state
end

function ModuleMockerClass:_defaultMockConfig(): MockFunctionConfig
	return {
		mockImpl = nil,
		mockName = "jest.fn()",
		specificMockImpls = {},
		specificReturnValues = {},
	}
end

function ModuleMockerClass:_defaultMockState()
	return {
		calls = {},
		contexts = {},
		instances = {},
		invocationCallOrder = {},
		results = {},
	}
end

function ModuleMockerClass:_makeComponent(metadata: any, restore)
	if metadata.type == "function" then
		local mocker = self

		local mockConstructor = function(f, ...)
			local args = { ... }

			local mockState = mocker:_ensureMockState(f)
			local mockConfig = mocker:_ensureMockConfig(f)

			table.insert(mockState.instances, f)
			table.insert(mockState.contexts, args[1])

			-- Use a Symbol to represent nil instead of actual nil values
			for i = 1, select("#", ...) do
				if args[i] == nil then
					args[i] = Symbol.for_("$$nil")
				end
			end
			table.insert(mockState.calls, args)

			-- Create and record an "incomplete" mock result immediately upon
			-- calling rather than waiting for the mock to return. This avoids
			-- issues caused by recursion where results can be recorded in the
			-- wrong order.
			local mockResult = {
				type = "incomplete",
				value = nil,
			}

			table.insert(mockState.results, mockResult)
			table.insert(mockState.invocationCallOrder, mocker._invocationCallCounter)
			mocker._invocationCallCounter = mocker._invocationCallCounter + 1

			local ok, result = pcall(function(args_)
				local specificMockImpl = table.remove(mockConfig.specificMockImpls, 1)
				if specificMockImpl == nil then
					specificMockImpl = mockConfig.mockImpl
				end

				if specificMockImpl then
					return specificMockImpl(unpack(args_))
				end

				return nil
			end, { ... })

			if not ok then
				mockResult.type = "throw"
				mockResult.value = result

				error(result)
			end

			mockResult.type = "return"
			mockResult.value = result

			return result
		end

		local f = setmetatable({}, { __call = mockConstructor })

		f._isMockFunction = true
		f.getMockImplementation = function()
			return mocker:_ensureMockConfig(f).mockImpl
		end

		if typeof(restore) == "function" then
			mocker._spyState:add(restore)
		end

		mocker._mockState[f] = mocker._defaultMockState()
		mocker._mockConfigRegistry[f] = mocker._defaultMockConfig()

		f.mock = setmetatable({}, {
			__index = function(tbl, key)
				return mocker:_ensureMockState(f)[key]
			end,
		})

		f.mockClear = function()
			mocker._mockState[f] = nil
			return f
		end

		f.mockReset = function()
			f.mockClear()
			mocker._mockConfigRegistry[f] = nil
			return f
		end

		f.mockRestore = function()
			f.mockReset()
			if restore then
				return restore()
			else
				return nil
			end
		end

		f.mockImplementationOnce = function(fn)
			-- next function call will use this mock implementation return value
			-- or default mock implementation return value
			local mockConfig = mocker:_ensureMockConfig(f)
			table.insert(mockConfig.specificMockImpls, fn)
			return f
		end

		f.mockImplementation = function(fn)
			-- next function call will use mock implementation return value
			local mockConfig = mocker:_ensureMockConfig(f)
			mockConfig.mockImpl = fn
			return f
		end

		f.mockReturnValueOnce = function(value)
			-- next function call will return this value or default return value
			return f.mockImplementationOnce(function()
				return value
			end)
		end

		f.mockReturnValue = function(value)
			-- next function call will return specified return value or this one
			return f.mockImplementation(function()
				return value
			end)
		end

		f.mockReturnThis = function()
			return f.mockImplementation(function(this)
				return f
			end)
		end

		f.mockName = function(name)
			if name then
				local mockConfig = mocker:_ensureMockConfig(f)
				mockConfig.mockName = name
			end
			return f
		end

		f.getMockName = function()
			local mockConfig = mocker:_ensureMockConfig(f)
			return mockConfig.mockName or "jest.fn()"
		end

		f.new = function(...)
			f(...)
			return f
		end

		if metadata.mockImpl then
			f.mockImplementation(metadata.mockImpl)
		end

		-- fn is a callable table; also return a forwarding function
		return f, function(...)
			return mockConstructor(f, ...)
		end
	else
		error("Call to _makeComponent with non-function")
	end
end

function ModuleMockerClass:_createMockFunction(metadata, mockConstructor)
	local name = metadata.name
	if not name then
		return mockConstructor
	end

	return mockConstructor
end

function ModuleMockerClass:isMockFunction(fn: any)
	return typeof(fn) == "table" and fn._isMockFunction == true
end

type MockFn = any
function ModuleMockerClass:fn<T..., Y...>(implementation: ((T...) -> Y...)?): (MockFn, (T...) -> Y...)
	local length = 0
	-- fn is a callable table; also return a forwarding function
	local fn, mockFn = self:_makeComponent({ length = length, type = "function" })
	if implementation then
		fn.mockImplementation(implementation)
	end
	return fn, mockFn
end

function ModuleMockerClass:protectDataModel(predicate: (Instance, string) -> boolean)
	self._dataModelProtector = predicate
end

function ModuleMockerClass:spyOn<M>(object: { [any]: any } | Instance, methodName: M): Mock<any>
	local projectConfig = self._projectConfig :: Config_ProjectConfig
	local mocksOnObject = self._mocksOnObjectsMap[object]
	if mocksOnObject == nil then
		mocksOnObject = {}
		self._mocksOnObjectsMap[object] = mocksOnObject
	end

	-- Case 1:
	-- Roblox-style instance spying
	local instanceProxy: JestMockRbx.InstanceProxy? = self.dataModelMocker:intoProxy(object)

	-- Explicitly test if it's an instance, in case there is no underlying
	-- InstanceProxy prepared for this instance.
	if typeof(object) == "Instance" or instanceProxy ~= nil then
		if not projectConfig.mockDataModel then
			error(Error.new("Can't spy on instances - the `mockDataModel` setting is not enabled."))
		elseif typeof(methodName) ~= "string" then
			error(Error.new(`Method names must be strings when spying on instances.`))
		elseif instanceProxy == nil or not self._dataModelProtector(instanceProxy.original, methodName) then
			error(Error.new(`Can't spy on {object.Name}:{methodName}() because it is not mockable.`))
		end

		if mocksOnObject[methodName] == nil then
			local methodName: string = methodName :: any

			local unmock
			local mock, mockFn = self:_makeComponent({ type = "function" }, function()
				unmock()
			end)
			unmock = instanceProxy.controls:mockMethod(methodName, mockFn)
			mocksOnObject[methodName] = mock
			mock.mockImplementation(function(_, ...)
				return (instanceProxy.original :: any)[methodName](instanceProxy.original, ...)
			end)
		end

		return mocksOnObject[methodName]
	end

	-- Case 2:
	-- Global environment spying
	if GlobalMocker:isMockGlobalLibrary(object) then
		local object: JestMockGenv.GlobalEnvLibrary = object :: any
		local automocks = object._automocksRef
		-- note: indexing non-mockable functions in `globalEnv` will error,
		-- making this index operation subtly, but expectedly, fallible.
		local automockFn = automocks[methodName]
		if typeof(automockFn) ~= "table" or not automockFn._isGlobalAutomockFn then
			error(
				Error.new(
					("Cannot spy the %s property because it is not a function; %s given instead"):format(
						tostring(methodName),
						typeof(automockFn)
					)
				)
			)
		elseif automockFn._maybeMock == nil then
			error(Error.new("globalEnv has not been initialised by Jest here"))
		end

		return automockFn._maybeMock
	end

	-- Case 3:
	-- Jest-style object spying
	if typeof(object) == "table" then
		if mocksOnObject[methodName] == nil then
			local original = object[methodName]
			local isMethodOwner = rawget(object, methodName) ~= nil
			local callableMetatable = nil
			if typeof(original) == "table" then
				local meta = getmetatable(original)
				if typeof(meta) == "table" and meta.__call ~= nil then
					callableMetatable = meta
				end
			end
			local mock, mockFn = self:_makeComponent({ type = "function" }, function()
				object[methodName] = if isMethodOwner then original else nil
			end)
			if typeof(original) == "function" then
				-- Object method spying (closure as method)

				object[methodName] = if projectConfig.oldFunctionSpying then mock else mockFn
				mocksOnObject[methodName] = mock
				mock.mockImplementation(function(...)
					return original(...)
				end)
			elseif callableMetatable ~= nil then
				-- Object method spying (callable table as method)

				local ok, mockTable = pcall(table.clone, original)
				if not ok then
					error(
						Error.new(
							("Cannot spy the %s property because it cannot be cloned. (%s)"):format(
								tostring(methodName),
								mockTable:match("protected metatable") or mockTable
							)
						)
					)
				end
				local mockMetatable = table.clone(callableMetatable)
				mockMetatable.__call = mockFn
				-- It's unclear whether `original` should be deeply cloned here. See
				-- the APT-1914 ticket on Jira for a discussion of this.
				object[methodName] = setmetatable(mockTable, mockMetatable)
				mocksOnObject[methodName] = mock
				mock.mockImplementation(function(...)
					return callableMetatable.__call(...)
				end)
			else
				error(
					Error.new(
						("Cannot spy the %s property because it is not a function or callable table; %s given instead"):format(
							tostring(methodName),
							typeof(original)
						)
					)
				)
			end
		end

		return mocksOnObject[methodName]
	end

	-- Fallthrough case:
	error(Error.new(("Cannot spyOn on a primitive value; %s given"):format(typeof(object))))
end
function ModuleMockerClass:clearAllMocks()
	self._mockState = {}
end

function ModuleMockerClass:resetAllMocks()
	self._mockConfigRegistry = {}
	self._mockState = {}
end

function ModuleMockerClass:restoreAllMocks()
	for _, value in self._spyState do
		value()
	end
	self._spyState = Set.new()
end

function ModuleMockerClass:mocked<T>(item: T, _deep: boolean?): MaybeMocked<T> | MaybeMockedDeep<T>
	return item :: any
end

function ModuleMockerClass:mockGlobals(globalMocker: GlobalMocker, env: { [string]: any })
	assert(not globalMocker.currentlyMocked, "Attempt to mock globals while they're already mocked")
	globalMocker.currentlyMocked = true
	local function implement(automocks: GlobalAutomocks, env: { [string]: any })
		for name, automock in automocks do
			if automock._isGlobalAutomockFn then
				local original = env[name]
				local mock
				local function mockOriginalImplementation()
					mock.mockImplementation(function(...)
						return original(...)
					end)
				end
				mock = self:_makeComponent({
					type = "function",
				}, mockOriginalImplementation)
				mockOriginalImplementation()
				automock._maybeUnmocked = original
				automock._maybeMock = mock
			else
				implement(automock, env[name])
			end
		end
	end
	implement(globalMocker.automocks, env)
end

function ModuleMockerClass:unmockGlobals(globalMocker: GlobalMocker)
	globalMocker.currentlyMocked = false
	local function unimplement(automocks: GlobalAutomocks)
		for name, automock in automocks do
			if automock._isGlobalAutomockFn then
				automock._maybeUnmocked = nil
				automock._maybeMock = nil
			else
				unimplement(automock)
			end
		end
	end
	unimplement(globalMocker.automocks)
end

export type JestFuncFn = <T..., Y...>(implementation: ((T...) -> Y...)?) -> (MockFn, (T...) -> Y...)
export type JestFuncSpyOn = <M>(object: { [any]: any }, methodName: M) -> Mock<any>
export type JestFuncMocked = <T>(item: T, _deep: boolean?) -> MaybeMocked<T> | MaybeMockedDeep<T>

return { ModuleMocker = ModuleMockerClass }
