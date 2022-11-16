-- ROBLOX upstream: https://github.com/facebook/jest/blob/v27.4.7/packages/jest-runtime/src/index.ts

--[[*
 * Copyright (c) Facebook, Inc. and its affiliates. All Rights Reserved.
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
 ]]

local Packages = script.Parent

local LuauPolyfill = require(Packages.LuauPolyfill)
local Map = LuauPolyfill.Map
local Object = LuauPolyfill.Object
local setTimeout = LuauPolyfill.setTimeout
type Map<T, U> = LuauPolyfill.Map<T, U>
type Array<T> = LuauPolyfill.Array<T>

--[[
	ROBLOX deviation: skipped lines 8-45
	original code: https://github.com/facebook/jest/blob/v27.4.7/packages/jest-runtime/src/index.ts#L8-L45
]]

local jestTypesModule = require(Packages.JestTypes)
type Config_Path = jestTypesModule.Config_Path
-- ROBLOX deviation: Global_TestFrameworkGlobals not implemented yet
type Global_TestFrameworkGlobals = {}

--[[
	ROBLOX deviation: skipped lines 47-49
	original code: https://github.com/facebook/jest/blob/v27.4.7/packages/jest-runtime/src/index.ts#L47-L49
]]

local moduleMockerModule = require(Packages.JestMock)
-- ROBLOX deviation: not implemented yet
-- type MockFunctionMetadata = moduleMockerModule.MockFunctionMetadata
type ModuleMocker = moduleMockerModule.ModuleMocker
-- ROBLOX deviation (addition): importing ModuleMocker class instead of injecting it via runTests
local ModuleMocker = moduleMockerModule.ModuleMocker

--[[
	ROBLOX deviation: skipped lines 51-59
	original code: https://github.com/facebook/jest/blob/v27.4.7/packages/jest-runtime/src/index.ts#L51-L59
]]

local typesModule = require(script.types)

export type Context = typesModule.Context

-- ROBLOX deviation: adding mocked ResolveModuleConfig type until implemented
type ResolveModuleConfig = any

-- ROBLOX deviation START: additional dependencies
local _typesModule = require(script._types)
export type Jest = _typesModule.Jest
type MockFactory = _typesModule.MockFactory

local jestExpectModule = require(Packages.Expect)
type Expect = jestExpectModule.Expect
local JestFakeTimers = require(Packages.JestFakeTimers)
type FakeTimers = JestFakeTimers.FakeTimers
-- ROBLOX deviation END

type JestGlobals = {
	expect: any,
	expectExtended: any,
	jestSnapshot: {
		toMatchSnapshot: (...any) -> any,
		toThrowErrorMatchingSnapshot: (...any) -> any,
	},
}

type JestGlobalsWithJest = JestGlobals & {
	jest: Jest,
}

--[[
	ROBLOX deviation: skipped lines 74-92
	original code: https://github.com/facebook/jest/blob/v27.4.7/packages/jest-runtime/src/index.ts#L74-L92
]]

type Module = any
type InitialModule = any
type ModuleRegistry = Map<ModuleScript, InitialModule | Module>

--[[
	ROBLOX deviation: skipped lines 97-175
	original code: https://github.com/facebook/jest/blob/v27.4.7/packages/jest-runtime/src/index.ts#L97-L175
]]

export type Runtime = {
	-- ROBLOX TODO: not implemented yet
	setGlobalsForRuntime: (self: RuntimePrivate, globals: JestGlobals) -> (),
	getGlobalsFromEnvironment: (self: RuntimePrivate) -> JestGlobals,
	teardown: (self: RuntimePrivate) -> (),
	requireModuleOrMock: (self: RuntimePrivate, scriptInstance: ModuleScript) -> any,
	-- ROBLOX TODO: not implemented yet
	-- requireMock: (self: RuntimePrivate, from: Config_Path, scriptInstance: ModuleScript) -> any,
	requireModule: (
		self: RuntimePrivate,
		-- ROBLOX deviation: accept ModuleScript instead of string
		from: ModuleScript,
		-- ROBLOX deviation: accept ModuleScript instead of string
		scriptInstance: ModuleScript?,
		options: any?,
		isRequireActual: boolean?,
		-- ROBLOX deviation START: added param to not require return from test files
		noModuleReturnRequired: boolean?
		-- ROBLOX deviation END
	) -> any,
	-- ROBLOX deviation: no default param <T = unknown>
	requireInternalModule: <T>(
		self: RuntimePrivate,
		-- ROBLOX deviation: accept ModuleScript instead of string
		from: ModuleScript,
		-- ROBLOX deviation: accept ModuleScript instead of string
		to: ModuleScript?
	) -> T,
	isolateModules: (self: RuntimePrivate, fn: MockFactory) -> (),
	resetModules: (self: RuntimePrivate) -> (),
	clearAllMocks: (self: RuntimePrivate) -> (),
	resetAllMocks: (self: RuntimePrivate) -> (),
	restoreAllMocks: (self: RuntimePrivate) -> (),
	-- ROBLOX TODO START: not implemented yet
	-- setMock: (
	-- 	self: RuntimePrivate,
	-- 	from: string,
	-- 	scriptInstance: ModuleScript,
	-- 	mockFactory: MockFactory,
	-- 	options: ({ virtual: boolean? })?
	-- ) -> any,
	-- _generateMock: (self: RuntimePrivate, from: Config_Path, scriptInstance: ModuleScript) -> unknown,
	-- ROBLOX TODO END
	_createJestObjectFor: (self: RuntimePrivate, from: Config_Path) -> Jest,
}

export type RuntimePrivate = Runtime & {
	--[[
		ROBLOX deviation: skipped lines 178-181
		original code: https://github.com/facebook/jest/blob/v27.4.7/packages/jest-runtime/src/index.ts#L178-L181
	]]

	--[[
		ROBLOX deviation START: There's no actual Jest Environment so we are just
		mocking some values in here for now.
	]]
	_environment: {
		fakeTimersModern: FakeTimers,
	},
	-- ROBLOX deviation END
	_explicitShouldMock: Map<ModuleScript, boolean>,
	-- ROBLOX TODO START: not implemented yet
	-- _explicitShouldMockModule: Map<string, boolean>,
	-- ROBLOX TODO END
	-- ROBLOX deviation: no Legacy/Modern timers
	_fakeTimersImplementation: FakeTimers,
	_internalModuleRegistry: ModuleRegistry,

	--[[
		ROBLOX deviation: skipped lines 189-197
		original code: https://github.com/facebook/jest/blob/v27.4.7/packages/jest-runtime/src/index.ts#L189-L197
	]]

	_isolatedMockRegistry: Map<ModuleScript, any>?,
	-- ROBLOX TODO START: not implemented yet
	-- _moduleMockRegistry: Map<string, VMModule>,
	-- _moduleMockFactories: Map<string, () -> unknown>,
	-- ROBLOX TODO END
	_moduleMocker: ModuleMocker,
	_isolatedModuleRegistry: ModuleRegistry?,
	_moduleRegistry: ModuleRegistry,

	--[[
		ROBLOX deviation: skipped lines 204-226
		original code: https://github.com/facebook/jest/blob/v27.4.7/packages/jest-runtime/src/index.ts#L204-L226
	]]

	jestGlobals: JestGlobals?,

	--[[
		ROBLOX deviation: skipped lines 228-229
		original code: https://github.com/facebook/jest/blob/v27.4.7/packages/jest-runtime/src/index.ts#L228-L229
	]]
	isTornDown: boolean,

	-- ROBLOX deviation START: additional types
	_jestObject: Jest,
	_cleanupFns: Array<() -> ()>,
	_shouldMock: (
		self: RuntimePrivate,
		-- ROBLOX deviation: accept ModuleScript instead of string
		from: ModuleScript,
		scriptInstance: ModuleScript,
		explicitShouldMock: Map<ModuleScript, boolean>,
		options: ResolveModuleConfig
	) -> boolean,
	-- ROBLOX deviation END
}

type RuntimeStatic = RuntimePrivate & {
	new: () -> RuntimePrivate,
	__index: RuntimeStatic,
}

local Runtime = {} :: RuntimeStatic
Runtime.__index = Runtime
--[[
	ROBLOX deviation: skipped lines 326-418
	original code: https://github.com/facebook/jest/blob/v27.4.7/packages/jest-runtime/src/index.ts#L326-L418
	static methods not implemented yet
]]

-- ROBLOX deviation: no arguments for constructor
function Runtime.new(): RuntimePrivate
	local self = (setmetatable({}, Runtime) :: any) :: RuntimePrivate

	self.isTornDown = false

	--[[
		ROBLOX deviation: skipped lines 241-244
		original code: https://github.com/facebook/jest/blob/v27.4.7/packages/jest-runtime/src/index.ts#L241-L244
	]]

	--[[
		ROBLOX deviation START: There's no actual Jest Environment so we are just
		mocking some values in here for now.
	]]
	self._environment = {
		fakeTimersModern = JestFakeTimers.new(),
	}
	-- ROBLOX deviation END
	self._explicitShouldMock = Map.new()
	-- ROBLOX deviation: not implemented yet
	-- self._explicitShouldMockModule = Map.new()
	self._internalModuleRegistry = Map.new()

	--[[
		ROBLOX deviation: skipped lines 249-258
		original code: https://github.com/facebook/jest/blob/v27.4.7/packages/jest-runtime/src/index.ts#L249-L258
	]]
	-- ROBLOX deviation START: instantiate the module mocker here
	-- instead of being passed in as an arg from runTest
	self._moduleMocker = ModuleMocker.new()
	-- ROBLOX deviation END
	self._isolatedModuleRegistry = nil
	self._isolatedMockRegistry = nil
	self._moduleRegistry = Map.new()

	--[[
		ROBLOX deviation: skipped lines 263-280
		original code: https://github.com/facebook/jest/blob/v27.4.7/packages/jest-runtime/src/index.ts#L263-L280
	]]

	-- ROBLOX deviation: no Legacy/Modern timers
	self._fakeTimersImplementation = self._environment.fakeTimersModern

	--[[
		ROBLOX deviation: skipped lines 287-323
		original code: https://github.com/facebook/jest/blob/v27.4.7/packages/jest-runtime/src/index.ts#L287-L323
	]]

	--[[
		ROBLOX deviation START: normally a jest object gets created for each
		test file and inserted into a cache, an instance gets injected into each
		test module. Currently this implementation is global across all tests.
	]]
	self._jestObject = self:_createJestObjectFor("global")
	-- ROBLOX deviation END

	--[[
		ROBLOX deviation START: added to hold references to all the clean up
		functions from loaded modules. Is used in Runtime.teardown
	]]
	self._cleanupFns = {}
	-- ROBLOX deviation END

	return self
end

--[[
	ROBLOX deviation: skipped lines 420-744
	original code: https://github.com/facebook/jest/blob/v27.4.7/packages/jest-runtime/src/index.ts#L420-L744
]]

function Runtime:requireModule(
	from: ModuleScript,
	_scriptInstance: ModuleScript?,
	options: any?,
	isRequireActual: boolean?,
	-- ROBLOX deviation START: added param to not require return from test files
	noModuleReturnRequired: boolean?
	-- ROBLOX deviation END
): any
	-- ROBLOX deviation START
	local scriptInstance = if _scriptInstance == nil then from else _scriptInstance
	-- ROBLOX deviation END

	local isInternal = if typeof(options) == "table" and options.isInternalModule ~= nil
		then options.isInternalModule
		else false
	--[[
		ROBLOX deviation: skipped lines 753-802
		original code: https://github.com/facebook/jest/blob/v27.4.7/packages/jest-runtime/src/index.ts#L753-L802
	]]
	local moduleRegistry: ModuleRegistry

	-- ROBLOX deviation: skipped isInternal check
	if isInternal then
		moduleRegistry = self._internalModuleRegistry
	elseif self._isolatedModuleRegistry ~= nil then
		moduleRegistry = self._isolatedModuleRegistry
	else
		moduleRegistry = self._moduleRegistry
	end

	local module = moduleRegistry:get(scriptInstance)
	if module then
		return module
	end

	-- ROBLOX deviation START: Roblox require override functionality here
	local moduleResult

	-- Narrowing this type here lets us appease the type checker while still
	-- counting on types for the rest of this file
	local loadmodule: (ModuleScript) -> (any, string, () -> any) = debug["loadmodule"]
	local moduleFunction, errorMessage, cleanupFn = loadmodule(scriptInstance)
	assert(moduleFunction ~= nil, errorMessage)

	if cleanupFn ~= nil then
		table.insert(self._cleanupFns, cleanupFn)
	end

	getfenv(moduleFunction).require = function(scriptInstance: ModuleScript)
		return self:requireModuleOrMock(scriptInstance)
	end
	getfenv(moduleFunction).delay = self._fakeTimersImplementation.delayOverride
	getfenv(moduleFunction).tick = self._fakeTimersImplementation.tickOverride
	getfenv(moduleFunction).time = self._fakeTimersImplementation.timeOverride
	getfenv(moduleFunction).DateTime = self._fakeTimersImplementation.dateTimeOverride
	getfenv(moduleFunction).os = self._fakeTimersImplementation.osOverride
	getfenv(moduleFunction).task = self._fakeTimersImplementation.taskOverride

	moduleResult = table.pack(moduleFunction())
	if moduleResult.n ~= 1 and noModuleReturnRequired ~= true then
		error(
			string.format(
				"[Module Error]: %s did not return a valid result\n" .. "\tModuleScripts must return exactly one value",
				tostring(scriptInstance)
			)
		)
	end
	moduleResult = moduleResult[1]
	-- ROBLOX deviation END

	-- ROBLOX deviation START: added check to not store in moduleRegistry if moduleResult is nil
	-- moduleRegistry:set(scriptInstance, moduleResult)
	if moduleResult ~= nil then
		moduleRegistry:set(scriptInstance, moduleResult)
	end
	-- ROBLOX deviation END
	return moduleResult
end

-- ROBLOX deviation: no default param <T = unknown>
function Runtime:requireInternalModule<T>(
	-- ROBLOX deviation: accept ModuleScript instead of string
	from: ModuleScript,
	-- ROBLOX deviation: accept ModuleScript instead of string
	to: ModuleScript?
): T
	-- ROBLOX deviation START: `to` not handled yet
	-- if Boolean.toJSBoolean(to) then
	-- 		local require_ = (if nativeModule.createRequire ~= nil
	-- 				then nativeModule.createRequire
	-- 				else nativeModule.createRequireFromPath)(from)
	-- 		if Boolean.toJSBoolean(INTERNAL_MODULE_REQUIRE_OUTSIDE_OPTIMIZED_MODULES:has(to)) then
	-- 				return require_(to)
	-- 		end
	-- 		local outsideJestVmPath = decodePossibleOutsideJestVmPath(to)
	-- 		if Boolean.toJSBoolean(outsideJestVmPath) then
	-- 				return require_(outsideJestVmPath)
	-- 		end
	-- end
	-- ROBLOX deviation END
	return self:requireModule(from, to, {
		isInternalModule = true,
		-- supportsDynamicImport = esmIsAvailable,
		-- supportsExportNamespaceFrom = false,
		-- supportsStaticESM = false,
		-- supportsTopLevelAwait = false,
	})
end

--[[
	ROBLOX deviation: skipped lines 872-997
	original code: https://github.com/facebook/jest/blob/v27.4.7/packages/jest-runtime/src/index.ts#872-L997
]]

function Runtime:requireModuleOrMock(scriptInstance: ModuleScript)
	local from = scriptInstance

	if scriptInstance == script or scriptInstance == script.Parent then
		-- ROBLOX NOTE: Need to cast require because analyze cannot figure out scriptInstance path
		return (require :: any)(scriptInstance)
	end

	-- ROBLOX deviation START: we need to make sure LuauPolyfill is only loaded once
	if scriptInstance.Name == "LuauPolyfill" then
		return (require :: any)(scriptInstance)
	end
	-- ROBLOX deviation END

	if scriptInstance.Name == "JestGlobals" then
		--[[
			ROBLOX deviation START: We don't have to worry about two different
			module systems so I'm leaving out getGlobalsForCjs + getGlobalsForEsm
		]]
		local globals = self:getGlobalsFromEnvironment()
		return Object.assign({}, globals, {
			jest = self._jestObject,
		}) :: JestGlobalsWithJest
		-- ROBLOX deviation END
	end

	local ok, result = pcall(function()
		if self:_shouldMock(from, scriptInstance, self._explicitShouldMock, {
			conditions = nil,
		}) then
			error("mocking is not implemented in JestRuntime yet")
			-- return self:requireMock(from, scriptInstance)
		else
			return self:requireModule(from, scriptInstance)
		end
	end)
	if not ok then
		error(result)
	end
	return result
end

function Runtime:isolateModules(fn: () -> ()): ()
	if self._isolatedModuleRegistry ~= nil or self._isolatedMockRegistry ~= nil then
		error("isolateModules cannot be nested inside another isolateModules.")
	end
	self._isolatedModuleRegistry = Map.new()
	self._isolatedMockRegistry = Map.new()

	local ok, result, hasReturned = pcall(function()
		fn()
	end)

	-- might be cleared within the callback
	if self._isolatedModuleRegistry then
		self._isolatedModuleRegistry:clear()
	end
	if self._isolatedMockRegistry then
		self._isolatedMockRegistry:clear()
	end
	self._isolatedModuleRegistry = nil
	self._isolatedMockRegistry = nil

	if hasReturned then
		return result
	end
	if not ok then
		error(result)
	end
end

function Runtime:resetModules(): ()
	if self._isolatedModuleRegistry then
		self._isolatedModuleRegistry:clear()
	end
	if self._isolatedMockRegistry then
		self._isolatedMockRegistry:clear()
	end
	self._isolatedModuleRegistry = nil
	self._isolatedMockRegistry = nil
	-- ROBLOX TODO: not implemented yet
	-- self._mockRegistry:clear();
	self._moduleRegistry:clear()
	--[[
		ROBLOX deviation: skipped lines 1068-1089
		original code: https://github.com/facebook/jest/blob/v27.4.7/packages/jest-runtime/src/index.ts#L1068-L1089
	]]
end

--[[
	ROBLOX deviation: skipped lines 1092-1179
	original code: https://github.com/facebook/jest/blob/v27.4.7/packages/jest-runtime/src/index.ts#L1092-L1179
]]

function Runtime:restoreAllMocks(): ()
	self._moduleMocker:restoreAllMocks()
end

function Runtime:resetAllMocks(): ()
	self._moduleMocker:resetAllMocks()
end

function Runtime:clearAllMocks(): ()
	self._moduleMocker:clearAllMocks()
end

function Runtime:teardown(): ()
	self:restoreAllMocks()
	self:resetAllMocks()
	self:resetModules()

	self._internalModuleRegistry:clear()
	-- ROBLOX TODO START: not implemented yet
	-- self._mainModule = nil;
	-- self._mockFactories:clear();
	-- self._moduleMockFactories:clear();
	-- self._mockMetaDataCache:clear();
	-- self._shouldMockModuleCache:clear();
	-- self._shouldUnmockTransitiveDependenciesCache:clear();
	-- ROBLOX TODO END
	self._explicitShouldMock:clear()
	-- ROBLOX TODO START: not implemented yet
	-- self._explicitShouldMockModule:clear();
	-- self._transitiveShouldMock:clear();
	-- self._virtualMocks:clear();
	-- self._virtualModuleMocks:clear();
	-- self._cacheFS:clear();
	-- self._unmockList = nil;

	-- self._sourceMapRegistry:clear();

	-- self._fileTransforms:clear();
	-- self._fileTransformsMutex:clear();
	-- self.jestObjectCaches:clear();

	-- self._v8CoverageResult = {};
	-- self._v8CoverageInstrumenter = nil;
	-- self._moduleImplementation = nil;
	-- ROBLOX TODO END

	-- ROBLOX deviation START: additional cleanup logic for modules loaded with debug.loadmodule
	for _, cleanup in ipairs(self._cleanupFns) do
		cleanup()
	end
	-- ROBLOX deviation END

	self.isTornDown = true
end

--[[
	ROBLOX deviation: skipped lines 1226-1684
	original code: https://github.com/facebook/jest/blob/v27.4.7/packages/jest-runtime/src/index.ts#L1226-L1684
]]

function Runtime:_shouldMock(
	-- ROBLOX deviation: accept ModuleScript instead of string
	from: ModuleScript,
	scriptInstance: ModuleScript,
	explicitShouldMock: Map<ModuleScript, boolean>,
	options: ResolveModuleConfig
): boolean
	--[[
		ROBLOX deviation: skipped lines 1692-1754
		original code: https://github.com/facebook/jest/blob/v27.4.7/packages/jest-runtime/src/index.ts#L1692-L1754
	]]
	-- ROBLOX deviation: returning false for now
	return false
end

--[[
	ROBLOX deviation: skipped lines 1757-1813
	original code: https://github.com/facebook/jest/blob/v27.4.7/packages/jest-runtime/src/index.ts#L1757-L1813
]]

function Runtime:_createJestObjectFor(_from: Config_Path): Jest
	-- ROBLOX deviation: from not used
	-- from = from or ""
	local jestObject = {} :: Jest

	-- ROBLOX TODO START: not implemented yet
	-- local function disableAutomock(): Jest
	-- 	self._shouldAutoMock = false
	-- 	return jestObject
	-- end

	-- local function enableAutomock(): Jest
	-- 	self._shouldAutoMock = true
	-- 	return jestObject
	-- end

	-- local function setMockFactory(
	-- 	scriptInstance: ModuleScript,
	-- 	mockFactory: MockFactory,
	-- 	options: { virtual: boolean? }?
	-- ): Jest
	-- 	self:setMock(from, scriptInstance, mockFactory, options)
	-- 	return jestObject
	-- end

	-- local function mock(scriptInstance: ModuleScript, mockFactory: MockFactory, options: any): Jest
	-- 	if mockFactory ~= nil then
	-- 		return setMockFactory(scriptInstance, mockFactory, options)
	-- 	end
	-- 	-- local moduleID = self._resolver:getModuleID(
	-- 	-- 	self._virtualMocks,
	-- 	-- 	from,
	-- 	-- 	moduleName,
	-- 	-- 	{ conditions = self.cjsConditions }
	-- 	-- )
	-- 	self._explicitShouldMock:set(scriptInstance, true)
	-- 	return jestObject
	-- end

	-- local mockModule: any --[[ ROBLOX TODO: Unhandled node for type: TSIndexedAccessType ]] --[[ Jest['unstable_mockModule'] ]]
	-- function mockModule(moduleName, mockFactory, options)
	-- 	if typeof(mockFactory) ~= "function" then
	-- 		error(Error.new("`unstable_mockModule` must be passed a mock factory"))
	-- 	end
	-- 	self:setModuleMock(from, moduleName, mockFactory, options)
	-- 	return jestObject
	-- end
	-- ROBLOX TODO END

	local function clearAllMocks(): Jest
		self:clearAllMocks()
		return jestObject
	end

	local function resetAllMocks(): Jest
		self:resetAllMocks()
		return jestObject
	end

	local function restoreAllMocks(): Jest
		self:restoreAllMocks()
		return jestObject
	end

	local function _getFakeTimers(): FakeTimers
		return self._fakeTimersImplementation
	end

	local function useFakeTimers(): Jest
		self._fakeTimersImplementation:useFakeTimers()
		return jestObject
	end

	local function useRealTimers(): Jest
		_getFakeTimers():useRealTimers()
		return jestObject
	end

	local function resetModules(): Jest
		self:resetModules()
		return jestObject
	end

	local function isolateModules(fn: () -> ()): Jest
		self:isolateModules(fn)
		return jestObject
	end

	local fn = function(implementation: any)
		return self._moduleMocker:fn(implementation)
	end
	-- ROBLOX TODO: not implemented yet
	-- local spyOn = self._moduleMocker.spyOn:bind(self._moduleMocker)

	Object.assign(jestObject, {
		advanceTimersByTime = function(msToRun: number)
			_getFakeTimers():advanceTimersByTime(msToRun)
		end,
		advanceTimersToNextTimer = function(steps: number?)
			_getFakeTimers():advanceTimersToNextTimer(steps)
		end,
		-- ROBLOX TODO START: not implemented yet
		-- autoMockOff = disableAutomock,
		-- autoMockOn = enableAutomock,
		-- ROBLOX TODO END
		clearAllMocks = clearAllMocks,
		clearAllTimers = function()
			return _getFakeTimers():clearAllTimers()
		end,
		-- ROBLOX TODO START: not implemented yet
		-- createMockFromModule = function(moduleName: string)
		-- 	return self:_generateMock(from, moduleName)
		-- end,
		-- disableAutomock = disableAutomock,
		-- doMock = mock,
		-- dontMock = unmock,
		-- enableAutomock = enableAutomock,
		-- ROBLOX TODO END
		fn = fn,
		-- ROBLOX TODO START: not implemented yet
		-- genMockFromModule = function(scriptInstance: ModuleScript)
		-- 	return self:_generateMock(from, scriptInstance)
		-- end,
		-- ROBLOX TODO END
		getRealSystemTime = function()
			local fakeTimers = _getFakeTimers()
			if fakeTimers == self._environment.fakeTimersModern then
				return fakeTimers:getRealSystemTime()
			else
				error("getRealSystemTime is not available when not using modern timers")
			end
		end,
		getTimerCount = function()
			return _getFakeTimers():getTimerCount()
		end,
		-- ROBLOX TODO: not implemented yet
		-- isMockFunction = self._moduleMocker.isMockFunction,
		isolateModules = isolateModules,
		-- ROBLOX TODO START: not implemented yet
		-- mock = mock,
		-- mocked = mocked,
		-- requireActual = self.requireActual:bind(self, from),
		-- requireMock = self.requireMock:bind(self, from),
		-- ROBLOX TODO END
		resetAllMocks = resetAllMocks,
		resetModules = resetModules,
		restoreAllMocks = restoreAllMocks,
		-- ROBLOX TODO: not implemented yet
		-- retryTimes = retryTimes,
		runAllTicks = function()
			return _getFakeTimers():runAllTicks()
		end,
		runAllTimers = function()
			return _getFakeTimers():runAllTimers()
		end,
		runOnlyPendingTimers = function()
			return _getFakeTimers():runOnlyPendingTimers()
		end,
		-- ROBLOX TODO: remove when we don't need to manually inject fake timers into tests
		jestTimers = _getFakeTimers(),
		-- ROBLOX TODO START: not implemented yet
		-- setMock = function(scriptInstance: ModuleScript, mock: unknown)
		-- 	return setMockFactory(scriptInstance, function()
		-- 		return mock
		-- 	end)
		-- end,
		-- ROBLOX TODO END
		setSystemTime = function(now: (number | DateTime)?)
			local fakeTimers = _getFakeTimers()
			if fakeTimers == self._environment.fakeTimersModern then
				fakeTimers:setSystemTime(now)
			else
				error("setSystemTime is not available when not using modern timers")
			end
		end,
		setTimeout = setTimeout,
		-- ROBLOX TODO START: not implemented yet
		-- spyOn = spyOn,
		-- unmock = unmock,
		-- unstable_mockModule = mockModule,
		-- ROBOX TODO END
		useFakeTimers = useFakeTimers,
		useRealTimers = useRealTimers,
	})

	return jestObject :: Jest
end

--[[
	ROBLOX deviation: skipped lines 2029-2124
	original code: https://github.com/facebook/jest/blob/v27.4.7/packages/jest-runtime/src/index.ts#L2029-L2124
]]

function Runtime:getGlobalsFromEnvironment(): JestGlobals
	if self.jestGlobals then
		return table.clone(self.jestGlobals)
	end

	local jestSnapshot = self:requireModuleOrMock(Packages.JestSnapshot)
	local jestExpect = self:requireModuleOrMock(Packages.Expect)

	return {
		--[[
			ROBLOX deviation: skipped for now
			* afterAll
			* afterEach
			* beforeAll
			* beforeEach
			* describe
		]]
		expect = jestExpect,
		expectExtended = jestExpect,
		--[[
			ROBLOX deviation: skipped for now
			* fdescribe
			* fit
			* it
			* test
			* xdescribe
			* xit
			* xtest
		]]
		jestSnapshot = {
			toMatchSnapshot = jestSnapshot.toMatchSnapshot,
			toThrowErrorMatchingSnapshot = jestSnapshot.toThrowErrorMatchingSnapshot,
		},
	}
end

--[[
	ROBLOX deviation: skipped lines 2148-2158
	original code: https://github.com/facebook/jest/blob/v27.4.7/packages/jest-runtime/src/index.ts#L2148-L2158
]]

function Runtime:setGlobalsForRuntime(globals: JestGlobals): ()
	self.jestGlobals = globals
end

--[[
	ROBLOX deviation: skipped lines 2165-2183
	original code: https://github.com/facebook/jest/blob/v27.4.7/packages/jest-runtime/src/index.ts#L2165-L2183
]]

return Runtime
