-- ROBLOX upstream: https://github.com/facebook/jest/blob/v28.0.0/packages/jest-runtime/src/index.ts
--[[*
 * Copyright (c) Facebook, Inc. and its affiliates. All Rights Reserved.
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
 ]]
-- ROBLOX deviation START: skipped
-- type void = nil --[[ ROBLOX FIXME: adding `void` type alias to make it easier to use Luau `void` equivalent when supported ]]
-- ROBLOX deviation END
local Packages = script.Parent
local LuauPolyfill = require(Packages.LuauPolyfill)
-- ROBLOX deviation START: skipped
-- local Array = LuauPolyfill.Array
-- ROBLOX deviation END
local Boolean = LuauPolyfill.Boolean
local Error = LuauPolyfill.Error
local Map = LuauPolyfill.Map
local Object = LuauPolyfill.Object
-- ROBLOX deviation START: skipped
-- local Set = LuauPolyfill.Set
-- local WeakMap = LuauPolyfill.WeakMap
-- local console = LuauPolyfill.console
-- local instanceof = LuauPolyfill.instanceof
-- ROBLOX deviation END
type Array<T> = LuauPolyfill.Array<T>
-- ROBLOX deviation START: skipped
-- type Error = LuauPolyfill.Error
-- ROBLOX deviation END
type Map<T, U> = LuauPolyfill.Map<T, U>
type Promise<T> = LuauPolyfill.Promise<T>
-- ROBLOX deviation START: skipped
-- type Set<T> = LuauPolyfill.Set<T>
-- type WeakMap<T, U> = LuauPolyfill.WeakMap<T, U>
-- ROBLOX deviation END
type Omit<T, K> = T --[[ ROBLOX TODO: TS 'Omit' built-in type is not available in Luau ]]
-- ROBLOX deviation START: skipped
-- type Parameters<T> = any --[[ ROBLOX TODO: TS 'Parameters' built-in type is not available in Luau ]]
-- local Promise = require(Packages.Promise)
-- local exports = {}
-- local nativeModule = require(Packages.module)
-- local path = require(Packages.path)
-- local urlModule = require(Packages.url)
-- local URL = urlModule.URL
-- local fileURLToPath = urlModule.fileURLToPath
-- local pathToFileURL = urlModule.pathToFileURL
-- local vmModule = require(Packages.vm)
-- local Script = vmModule.Script
-- -- @ts-expect-error: experimental, not added to the types
-- local SourceTextModule = vmModule.SourceTextModule
-- -- @ts-expect-error: experimental, not added to the types
-- local SyntheticModule = vmModule.SyntheticModule
-- local VMContext = vmModule.Context
-- -- @ts-expect-error: experimental, not added to the types
-- local VMModule = vmModule.Module
-- local parseCjs = require(Packages["cjs-module-lexer"]).parse
-- local collectV8CoverageModule = require(Packages["collect-v8-coverage"])
-- local CoverageInstrumenter = collectV8CoverageModule.CoverageInstrumenter
-- local V8Coverage = collectV8CoverageModule.V8Coverage
-- local execa = require(Packages.execa)
-- local fs = require(Packages["graceful-fs"])
-- local slash = require(Packages.slash)
-- local stripBOM = require(Packages["strip-bom"])
-- local jestEnvironmentModule = require(Packages.JestEnvironment)
-- type Jest = jestEnvironmentModule.Jest
-- type JestEnvironment = jestEnvironmentModule.JestEnvironment
-- type Module = jestEnvironmentModule.Module
-- type ModuleWrapper = jestEnvironmentModule.ModuleWrapper
-- local jestFakeTimersModule = require(Packages.JestFakeTimers)
-- type LegacyFakeTimers = jestFakeTimersModule.LegacyFakeTimers
-- type ModernFakeTimers = jestFakeTimersModule.ModernFakeTimers
-- local jestGlobalsModule = require(Packages.Dev.JestGlobals)
-- local JestGlobals = jestGlobalsModule
-- local jestSourceMapModule = require(Packages["@jest"]["source-map"])
-- type SourceMapRegistry = jestSourceMapModule.SourceMapRegistry
-- local jestTestResultModule = require(Packages.JestTestResult)
-- type RuntimeTransformResult = jestTestResultModule.RuntimeTransformResult
-- type V8CoverageResult = jestTestResultModule.V8CoverageResult
-- local jestTransformModule = require(Packages["@jest"].transform)
-- local CallerTransformOptions = jestTransformModule.CallerTransformOptions
-- local ScriptTransformer = jestTransformModule.ScriptTransformer
-- local ShouldInstrumentOptions = jestTransformModule.ShouldInstrumentOptions
-- local TransformResult = jestTransformModule.TransformResult
-- local TransformationOptions = jestTransformModule.TransformationOptions
-- local handlePotentialSyntaxError = jestTransformModule.handlePotentialSyntaxError
-- local shouldInstrument = jestTransformModule.shouldInstrument
-- local jestTypesModule = require(Packages.JestTypes)
-- type Config = jestTypesModule.Config
-- type Config_Path = jestTypesModule.Config_Path
-- type Config_ProjectConfig = jestTypesModule.Config_ProjectConfig
-- type Global = jestTypesModule.Global
-- type Global_TestFrameworkGlobals = jestTypesModule.Global_TestFrameworkGlobals
-- local jestHasteMapModule = require(Packages["jest-haste-map"])
-- type IModuleMap = jestHasteMapModule.IModuleMap
-- local HasteMap = require(Packages["jest-haste-map"]).default
-- local jestMessageUtilModule = require(Packages.JestMessageUtil)
-- local formatStackTrace = jestMessageUtilModule.formatStackTrace
-- local separateMessageFromStack = jestMessageUtilModule.separateMessageFromStack
-- ROBLOX deviation END
local jestMockModule = require(Packages.JestMock)
-- ROBLOX deviation: not implemented yet
-- type MockFunctionMetadata = jestMockModule.MockFunctionMetadata
-- ROBLOX deviation END
type ModuleMocker = jestMockModule.ModuleMocker

-- ROBLOX deviation START: (addition) importing ModuleMocker class instead of injecting it via runTests
local ModuleMocker = jestMockModule.ModuleMocker
-- ROBLOX deviation END
-- ROBLOX deviation START: skipped
-- local escapePathForRegex = require(Packages["jest-regex-util"]).escapePathForRegex
-- local jestResolveModule = require(Packages["jest-resolve"])
-- local Resolver = jestResolveModule.default
-- local ResolveModuleConfig = jestResolveModule.ResolveModuleConfig
-- local Snapshot = require(Packages.JestSnapshot)
-- local jestUtilModule = require(Packages.JestUtil)
-- local createDirectory = jestUtilModule.createDirectory
-- local deepCyclicCopy = jestUtilModule.deepCyclicCopy
-- local helpersModule = require(script.helpers)
-- local createOutsideJestVmPath = helpersModule.createOutsideJestVmPath
-- local decodePossibleOutsideJestVmPath = helpersModule.decodePossibleOutsideJestVmPath
-- local findSiblingsWithFileExtension = helpersModule.findSiblingsWithFileExtension
-- ROBLOX deviation END
local typesModule = require(script.types)
export type Context = typesModule.Context
-- ROBLOX deviation START: skipped
-- local typesModule = require(script.types)
-- exports.Context = typesModule.Context

-- ROBLOX deviation START: adding mocked ResolveModuleConfig type until implemented
type ResolveModuleConfig = any
-- ROBLOX deviation END

-- ROBLOX deviation START: additional dependencies
local TypeError = Error
local _typesModule = require(script._types)
export type Jest = _typesModule.Jest
type MockFactory = _typesModule.MockFactory

local jestExpectModule = require(Packages.Expect)
type Expect = jestExpectModule.Expect
local JestFakeTimers = require(Packages.JestFakeTimers)
type FakeTimers = JestFakeTimers.FakeTimers
-- ROBLOX deviation END
-- local esmIsAvailable = typeof(SourceTextModule) == "function"
-- ROBLOX deviation END
-- ROBLOX deviation START: inline type
-- type JestGlobals = Global_TestFrameworkGlobals & {
-- 	expect: typeof(__unhandledIdentifier__ --[[ ROBLOX TODO: Unhandled node for type: TSQualifiedName ]] --[[ JestGlobals.expect ]]),
-- }
type JestGlobals = {
	expect: any,
	expectExtended: any,
	jestSnapshot: {
		toMatchSnapshot: (...any) -> any,
		toThrowErrorMatchingSnapshot: (...any) -> any,
	},
}
-- ROBLOX deviation END
type JestGlobalsWithJest = JestGlobals & {
	-- ROBLOX deviation START: use Jest type
	-- jest: typeof(__unhandledIdentifier__ --[[ ROBLOX TODO: Unhandled node for type: TSQualifiedName ]] --[[ JestGlobals.jest ]]),
	jest: Jest,
	-- ROBLOX deviation END
}
-- ROBLOX deviation START: skipped
-- type HasteMapOptions = {
-- 	console: Console?,
-- 	maxWorkers: number,
-- 	resetCache: boolean,
-- 	watch: boolean?,
-- 	watchman: boolean,
-- }
-- ROBLOX deviation END
-- ROBLOX deviation START: define as Object for now
-- type InternalModuleOptions = Required<CallerTransformOptions> & { isInternalModule: boolean }
type Object = LuauPolyfill.Object
type InternalModuleOptions = Object
-- ROBLOX deviation END
-- ROBLOX deviation START: skipped
-- local defaultTransformOptions: InternalModuleOptions = {
-- 	isInternalModule = false,
-- 	supportsDynamicImport = esmIsAvailable,
-- 	supportsExportNamespaceFrom = false,
-- 	supportsStaticESM = false,
-- 	supportsTopLevelAwait = false,
-- }
-- ROBLOX deviation END
-- ROBLOX deviation START: custom type implementation
-- type InitialModule = Omit<Module, "require" | "parent" | "paths">
type Module = {
	exports: any,
	filename: ModuleScript,
	id: ModuleScript,
	loaded: boolean,
}
type InitialModule = Omit<Module, "require" | "parent" | "paths">
-- ROBLOX deviation END
-- ROBLOX deviation START: using ModuleScript instead of string
-- type ModuleRegistry = Map<string, InitialModule | Module>
type ModuleRegistry = Map<ModuleScript, InitialModule | Module>
-- ROBLOX deviation END
-- ROBLOX deviation START: skipped
-- -- These are modules that we know
-- -- * are safe to require from the outside (not stateful, not prone to errors passing in instances from different realms), and
-- -- * take sufficiently long to require to warrant an optimization.
-- -- When required from the outside, they use the worker's require cache and are thus
-- -- only loaded once per worker, not once per test file.
-- -- Use /benchmarks/test-file-overhead to measure the impact.
-- -- Note that this only applies when they are required in an internal context;
-- -- users who require one of these modules in their tests will still get the module from inside the VM.
-- -- Prefer listing a module here only if it is impractical to use the jest-resolve-outside-vm-option where it is required,
-- -- e.g. because there are many require sites spread across the dependency graph.
-- local INTERNAL_MODULE_REQUIRE_OUTSIDE_OPTIMIZED_MODULES = Set.new({ "chalk" })
-- local JEST_RESOLVE_OUTSIDE_VM_OPTION = Symbol:for_("jest-resolve-outside-vm-option")
-- type ResolveOptions =
-- 	typeof((
-- 		(
-- 			{} :: any
-- 		) :: Parameters<typeof(__unhandledIdentifier__ --[[ ROBLOX TODO: Unhandled node for type: TSQualifiedName ]] --[[ require.resolve ]])>
-- 	)[1]) --[[ ROBLOX CHECK: Resulting type may differ ]] --[[ Upstream: Parameters<typeof require.resolve>[1] ]]
-- 	& { JEST_RESOLVE_OUTSIDE_VM_OPTION: (true)? }
-- local testTimeoutSymbol = Symbol:for_("TEST_TIMEOUT_SYMBOL")
-- local retryTimesSymbol = Symbol:for_("RETRY_TIMES")
-- local NODE_MODULES = tostring(path.sep) .. "node_modules" .. tostring(path.sep)
-- local function getModuleNameMapper(config: Config_ProjectConfig)
-- 	if
-- 		Boolean.toJSBoolean((function()
-- 			local ref = Array.isArray(config.moduleNameMapper)
-- 			return if Boolean.toJSBoolean(ref) then config.moduleNameMapper.length else ref
-- 		end)())
-- 	then
-- 		return Array.map(config.moduleNameMapper, function(ref0)
-- 			local regex, moduleName = table.unpack(ref0, 1, 2)
-- 			return { moduleName = moduleName, regex = RegExp.new(regex) }
-- 		end) --[[ ROBLOX CHECK: check if 'config.moduleNameMapper' is an Array ]]
-- 	end
-- 	return nil
-- end
-- local unmockRegExpCache = WeakMap.new()
-- local EVAL_RESULT_VARIABLE = "Object.<anonymous>"
-- type RunScriptEvalResult = { EVAL_RESULT_VARIABLE: ModuleWrapper }
-- local runtimeSupportsVmModules = typeof(SyntheticModule) == "function"
-- local supportsTopLevelAwait = if Boolean.toJSBoolean(runtimeSupportsVmModules)
-- 	then (function()
-- 		do --[[ ROBLOX COMMENT: try-catch block conversion ]]
-- 			local ok, result, hasReturned = xpcall(function()
-- 				-- eslint-disable-next-line no-new
-- 				SourceTextModule.new("await Promise.resolve()")
-- 				return true, true
-- 			end, function()
-- 				return false, true
-- 			end)
-- 			if hasReturned then
-- 				return result
-- 			end
-- 		end
-- 	end)()
-- 	else runtimeSupportsVmModules
-- local supportsNodeColonModulePrefixInRequire = (function()
-- 	do --[[ ROBLOX COMMENT: try-catch block conversion ]]
-- 		local ok, result, hasReturned = xpcall(function()
-- 			require_("node:fs")
-- 			return true, true
-- 		end, function()
-- 			return false, true
-- 		end)
-- 		if hasReturned then
-- 			return result
-- 		end
-- 	end
-- end)()
-- local supportsNodeColonModulePrefixInImport = (function()
-- 	local stdout = execa:sync(
-- 		"node",
-- 		{ "--eval", 'import("node:fs").then(() => console.log(true), () => console.log(false));' },
-- 		{ reject = false }
-- 	).stdout
-- 	return stdout == "true"
-- end)()
-- ROBLOX deviation END
export type Runtime = { -- unstable as it should be replaced by https://github.com/nodejs/modules/issues/393, and we don't want people to use it
	-- ROBLOX deviation START: skipped
	-- unstable_shouldLoadAsEsm: (self: Runtime, path: Config_Path) -> boolean,
	-- unstable_importModule: (self: Runtime, from: Config_Path, moduleName: string?) -> Promise<void>,
	-- ROBLOX deviation END
	-- ROBLOX deviation START: using ModuleScript instead of string
	requireModule: <T>(
		self: Runtime,
		from: ModuleScript,
		moduleName: ModuleScript?,
		options: InternalModuleOptions?,
		isRequireActual_: boolean?,
		-- ROBLOX NOTE: additional param to not require return from test files
		noModuleReturnRequired: boolean?
	) -> T,
	requireInternalModule: <T>(self: Runtime, from: ModuleScript, to: ModuleScript?) -> T,
	requireActual: <T>(self: Runtime, from: ModuleScript, moduleName: ModuleScript) -> T,
	requireMock: <T>(self: Runtime, from: ModuleScript, moduleName: ModuleScript) -> T,
	-- ROBLOX deviation END
	-- ROBLOX deviation START: modified signature, use ModuleScript instead of string
	requireModuleOrMock: <T>(self: Runtime, moduleName: ModuleScript) -> T,
	-- ROBLOX deviation END
	isolateModules: (self: Runtime, fn: () -> ()) -> (),
	resetModules: (self: Runtime) -> (),
	-- ROBLOX deviation START: skipped
	-- collectV8Coverage: (self: Runtime) -> Promise<void>,
	-- stopCollectingV8Coverage: (self: Runtime) -> Promise<void>,
	-- getAllCoverageInfoCopy: (
	-- 	self: Runtime
	-- ) -> typeof((({} :: any) :: typeof((({} :: any) :: JestEnvironment).global)).__coverage__),
	-- getAllV8CoverageInfoCopy: (self: Runtime) -> V8CoverageResult,
	-- getSourceMaps: (self: Runtime) -> SourceMapRegistry,
	-- ROBLOX deviation END
	setMock: (
		self: Runtime,
		-- ROBLOX deviation START: using ModuleScript instead of string
		from: ModuleScript,
		moduleName: ModuleScript,
		-- ROBLOX deviation END
		mockFactory: () -> unknown,
		options: { virtual: boolean? }?
	) -> (),
	restoreAllMocks: (self: Runtime) -> (),
	resetAllMocks: (self: Runtime) -> (),
	clearAllMocks: (self: Runtime) -> (),
	teardown: (self: Runtime) -> (),
	setGlobalsForRuntime: (self: Runtime, globals: JestGlobals) -> (),
}
type Runtime_private = { --
	-- *** PUBLIC ***
	--
	-- ROBLOX deviation START: skipped
	-- unstable_shouldLoadAsEsm: (self: Runtime_private, path: Config_Path) -> boolean,
	-- unstable_importModule: (self: Runtime_private, from: Config_Path, moduleName: string?) -> Promise<void>,
	-- ROBLOX deviation END
	-- ROBLOX deviation START: using ModuleScript instead of string
	requireModule: <T>(
		self: Runtime_private,
		from: ModuleScript,
		moduleName: ModuleScript?,
		options: InternalModuleOptions?,
		isRequireActual_: boolean?,

		-- ROBLOX NOTE: additional param to not require return from test files
		noModuleReturnRequired: boolean?
	) -> T,
	requireInternalModule: <T>(self: Runtime_private, from: ModuleScript, to: ModuleScript?) -> T,
	requireActual: <T>(self: Runtime_private, from: ModuleScript, moduleName: ModuleScript) -> T,
	requireMock: <T>(self: Runtime_private, from: ModuleScript, moduleName: ModuleScript) -> T,
	-- ROBLOX deviation END
	-- ROBLOX deviation START: modified signature, use ModuleScript instead of string
	requireModuleOrMock: <T>(self: Runtime_private, moduleName: ModuleScript) -> T,
	-- ROBLOX deviation END
	isolateModules: (self: Runtime_private, fn: () -> ()) -> (),
	resetModules: (self: Runtime_private) -> (),
	-- ROBLOX deviation START: skipped
	-- collectV8Coverage: (self: Runtime_private) -> Promise<void>,
	-- stopCollectingV8Coverage: (self: Runtime_private) -> Promise<void>,
	-- getAllCoverageInfoCopy: (
	-- 	self: Runtime_private
	-- ) -> typeof((({} :: any) :: typeof((({} :: any) :: JestEnvironment).global)).__coverage__),
	-- getAllV8CoverageInfoCopy: (self: Runtime_private) -> V8CoverageResult,
	-- getSourceMaps: (self: Runtime_private) -> SourceMapRegistry,
	-- ROBLOX deviation END
	setMock: (
		self: Runtime_private,
		-- ROBLOX deviation START: using ModuleScript instead of string
		from: ModuleScript,
		moduleName: ModuleScript,
		-- ROBLOX deviation END
		mockFactory: () -> unknown,
		options: { virtual: boolean? }?
	) -> (),
	restoreAllMocks: (self: Runtime_private) -> (),
	resetAllMocks: (self: Runtime_private) -> (),
	clearAllMocks: (self: Runtime_private) -> (),
	teardown: (self: Runtime_private) -> (),
	setGlobalsForRuntime: (self: Runtime_private, globals: JestGlobals) -> (),
	--
	-- *** PRIVATE ***
	--
	-- ROBLOX deviation START: skipped
	-- _cacheFS: Map<string, string>,
	-- _config: Config_ProjectConfig,
	-- _coverageOptions: ShouldInstrumentOptions,
	-- _currentlyExecutingModulePath: string,
	-- ROBLOX deviation END
	--[[
		ROBLOX deviation START: There's no actual Jest Environment so we are just
		mocking some values in here for now.
	]]
	-- _environment: JestEnvironment,
	_environment: {
		fakeTimersModern: FakeTimers,
	},
	-- ROBLOX deviation END
	-- ROBLOX deviation START: using ModuleScript instead of string
	-- _explicitShouldMock: Map<string, boolean>,
	-- _explicitShouldMockModule: Map<string, boolean>,
	_explicitShouldMock: Map<ModuleScript, boolean>,
	_explicitShouldMockModule: Map<ModuleScript, boolean>,
	-- ROBLOX deviation END
	-- ROBLOX deviation: no Legacy/Modern timers
	-- _fakeTimersImplementation: LegacyFakeTimers<unknown> | ModernFakeTimers | nil, --[[ ROBLOX CHECK: verify if `null` wasn't used differently than `undefined` ]]
	_fakeTimersImplementation: FakeTimers,
	-- ROBLOX deviation END
	_internalModuleRegistry: ModuleRegistry,
	-- ROBLOX deviation START: skipped
	-- _isCurrentlyExecutingManualMock: string | nil, --[[ ROBLOX CHECK: verify if `null` wasn't used differently than `undefined` ]]
	-- _mainModule: Module | nil, --[[ ROBLOX CHECK: verify if `null` wasn't used differently than `undefined` ]]
	-- ROBLOX deviation END
	-- ROBLOX deviation START: using ModuleScript instead of string
	-- _mockFactories: Map<string, () -> unknown>,
	_mockFactories: Map<ModuleScript, () -> unknown>,
	-- ROBLOX deviation END
	-- ROBLOX deviation START: skipped
	-- _mockMetaDataCache: Map<string, MockFunctionMetadata<unknown, Array<unknown>>>,
	-- ROBLOX deviation END
	-- ROBLOX deviation START: using ModuleScript instead of string
	-- _mockRegistry: Map<string, any>,
	-- _isolatedMockRegistry: Map<string, any> | nil,
	_mockRegistry: Map<ModuleScript, any>,
	-- ROBLOX deviation START: add cache of loaded module functions to a test runner
	_loadedModuleFns: Map<ModuleScript, { any }> | nil,
	-- ROBLOX deviation END
	_isolatedMockRegistry: Map<ModuleScript, any> | nil,
	-- ROBLOX deviation END
	-- ROBLOX deviation START: skipped
	-- _moduleMockRegistry: Map<string, VMModule>,
	-- _moduleMockFactories: Map<string, () -> unknown>,
	-- ROBLOX deviation END
	_moduleMocker: ModuleMocker,
	_isolatedModuleRegistry: ModuleRegistry | nil,
	_moduleRegistry: ModuleRegistry,
	-- ROBLOX deviation START: skipped
	-- _esmoduleRegistry: Map<Config_Path, VMModule>,
	-- _cjsNamedExports: Map<Config_Path, Set<string>>,
	-- _esmModuleLinkingMap: WeakMap<VMModule, Promise<unknown>>,
	-- _testPath: Config_Path,
	-- _resolver: Resolver,
	-- ROBLOX deviation END
	_shouldAutoMock: boolean,
	-- ROBLOX deviation START: using ModuleScript instead of string
	-- _shouldMockModuleCache: Map<string, boolean>,
	_shouldMockModuleCache: Map<ModuleScript, boolean>,
	-- ROBLOX deviation END
	-- ROBLOX deviation START: skipped
	-- _shouldUnmockTransitiveDependenciesCache: Map<string, boolean>,
	-- _sourceMapRegistry: SourceMapRegistry,
	-- _scriptTransformer: ScriptTransformer,
	-- _fileTransforms: Map<string, RuntimeTransformResult>,
	-- _fileTransformsMutex: Map<string, Promise<void>>,
	-- _v8CoverageInstrumenter: CoverageInstrumenter | nil,
	-- _v8CoverageResult: V8Coverage | nil,
	-- _transitiveShouldMock: Map<string, boolean>,
	-- _unmockList: RegExp | nil,
	-- _virtualMocks: Map<string, boolean>,
	-- _virtualModuleMocks: Map<string, boolean>,
	-- _moduleImplementation: typeof(__unhandledIdentifier__ --[[ ROBLOX TODO: Unhandled node for type: TSQualifiedName ]] --[[ nativeModule.Module ]]),
	-- jestObjectCaches: Map<string, Jest>,
	-- ROBLOX deviation END
	jestGlobals: JestGlobals,
	-- ROBLOX deviation START: skipped
	-- esmConditions: Array<string>,
	-- cjsConditions: Array<string>,
	-- ROBLOX deviation END
	isTornDown: boolean,
	-- ROBLOX deviation START: additional properties
	_jestObject: Jest,
	_cleanupFns: Array<(...any) -> ...any>,
	-- ROBLOX deviation END
	-- ROBLOX deviation START: skipped
	-- loadEsmModule: (self: Runtime_private, modulePath: Config_Path, query_: string?) -> Promise<VMModule>,
	-- resolveModule: (
	-- 	self: Runtime_private,
	-- 	specifier: string,
	-- 	referencingIdentifier: string,
	-- 	context: VMContext
	-- ) -> Promise<T> | T | void,
	-- linkAndEvaluateModule: (self: Runtime_private, module: VMModule) -> Promise<VMModule | void>,
	-- loadCjsAsEsm: (
	-- 	self: Runtime_private,
	-- 	from: Config_Path,
	-- 	modulePath: Config_Path,
	-- 	context: VMContext
	-- ) -> any,
	-- importMock: (
	-- 	self: Runtime_private,
	-- 	from: Config_Path,
	-- 	moduleName: ModuleScript,
	-- 	context: VMContext
	-- ) -> Promise<T>,
	-- getExportsOfCjs: (self: Runtime_private, modulePath: Config_Path) -> any,
	-- ROBLOX deviation END
	_loadModule: (
		self: Runtime_private,
		localModule: InitialModule,
		-- ROBLOX deviation START: using ModuleScript instead of string
		from: ModuleScript,
		moduleName: ModuleScript | nil,
		modulePath: ModuleScript,
		-- ROBLOX deviation END
		options: InternalModuleOptions | nil,
		moduleRegistry: ModuleRegistry,
		-- ROBLOX deviation START: additional param to not require return from test files
		noModuleReturnRequired: boolean?
		-- ROBLOX deviation END
	) -> (),
	-- ROBLOX deviation START: skipped
	-- _getFullTransformationOptions: (
	-- 	self: Runtime_private,
	-- 	options_: InternalModuleOptions?
	-- ) -> TransformationOptions,
	-- ROBLOX deviation END
	setModuleMock: (
		self: Runtime_private,
		-- ROBLOX deviation START: using ModuleScript instead of string
		from: ModuleScript,
		moduleName: ModuleScript,
		-- ROBLOX deviation END
		mockFactory: () -> Promise<unknown> | unknown,
		options: { virtual: boolean? }?
	) -> (),
	-- ROBLOX deviation START: skipped
	-- _resolveModule: (
	-- 	self: Runtime_private,
	-- 	from: Config_Path,
	-- 	to: string | nil,
	-- 	options: ResolveModuleConfig?
	-- ) -> any,
	-- _requireResolve: (
	-- 	self: Runtime_private,
	-- 	from: Config_Path,
	-- 	moduleName: ModuleScript?,
	-- 	options_: ResolveOptions?
	-- ) -> any,
	-- _requireResolvePaths: (self: Runtime_private, from: Config_Path, moduleName: ModuleScript?) -> any,
	-- ROBLOX deviation END
	_execModule: (
		self: Runtime_private,
		localModule: InitialModule,
		options: InternalModuleOptions | nil,
		moduleRegistry: ModuleRegistry,
		-- ROBLOX deviation START: using ModuleScript instead of string
		-- from: Config_Path | nil --[[ ROBLOX CHECK: verify if `null` wasn't used differently than `undefined` ]]
		from: ModuleScript | nil,
		-- ROBLOX deviation END
		-- ROBLOX deviation START: additional param to not require return from test files
		noModuleReturnRequired: boolean?
		-- ROBLOX deviation END
	) -> any,
	-- ROBLOX deviation START: skipped
	-- transformFile: (self: Runtime_private, filename: string, options: InternalModuleOptions?) -> string,
	-- transformFileAsync: (
	-- 	self: Runtime_private,
	-- 	filename: string,
	-- 	options: InternalModuleOptions?
	-- ) -> Promise<string>,
	-- createScriptFromCode: (self: Runtime_private, scriptSource: string, filename: string) -> any,
	-- _requireCoreModule: (self: Runtime_private, moduleName: ModuleScript, supportPrefix: boolean) -> any,
	-- _importCoreModule: (self: Runtime_private, moduleName: ModuleScript, context: VMContext) -> any,
	-- _getMockedNativeModule: (
	-- 	self: Runtime_private
	-- ) -> typeof(__unhandledIdentifier__ --[[ ROBLOX TODO: Unhandled node for type: TSQualifiedName ]] --[[ nativeModule.Module ]]),
	-- _generateMock: (self: Runtime_private, from: Config_Path, moduleName: ModuleScript) -> any,
	-- ROBLOX deviation END
	_shouldMock: (
		self: Runtime_private,
		-- ROBLOX deviation: accept ModuleScript instead of string
		from: ModuleScript,
		moduleName: ModuleScript,
		explicitShouldMock: Map<ModuleScript, boolean>,
		-- ROBLOX deviation END
		options: ResolveModuleConfig
	) -> boolean,
	-- ROBLOX deviation START: skipped
	-- _createRequireImplementation: (
	-- 	self: Runtime_private,
	-- 	from: InitialModule,
	-- 	options: InternalModuleOptions?
	-- ) -> NodeRequire,
	-- ROBLOX deviation END
	-- ROBLOX deviation START: using ModuleScript instead of Config_Path
	-- _createJestObjectFor: (self: Runtime_private, from: Config_Path) -> Jest,
	_createJestObjectFor: (self: Runtime_private, from: ModuleScript) -> Jest,
	-- ROBLOX deviation END
	-- ROBLOX deviation START: skipped
	-- _logFormattedReferenceError: (self: Runtime_private, errorMessage: string) -> any,
	-- wrapCodeInModuleWrapper: (self: Runtime_private, content: string) -> any,
	-- constructModuleWrapperStart: (self: Runtime_private) -> any,
	-- constructInjectedModuleParameters: (self: Runtime_private) -> Array<string>,
	-- handleExecutionError: (self: Runtime_private, e: Error, module: Module) -> never,
	-- getGlobalsForCjs: (self: Runtime_private, from: Config_Path) -> JestGlobalsWithJest,
	-- getGlobalsForEsm: (self: Runtime_private, from: Config_Path, context: VMContext) -> Promise<VMModule>,
	-- ROBLOX deviation END
	getGlobalsFromEnvironment: (self: Runtime_private) -> JestGlobals,
	-- ROBLOX deviation START: skipped
	-- readFile: (self: Runtime_private, filename: Config_Path) -> string,
	-- ROBLOX deviation END
}
type Runtime_statics = {
	-- ROBLOX deviation: no arguments for constructor
	-- new: (
	-- 	config: Config_ProjectConfig,
	-- 	environment: JestEnvironment,
	-- 	resolver: Resolver,
	-- 	transformer: ScriptTransformer,
	-- 	cacheFS: Map<string, string>,
	-- 	coverageOptions: ShouldInstrumentOptions,
	-- 	testPath: Config_Path
	-- ) -> Runtime,
	new: (loadedModuleFns: Map<ModuleScript, any>?) -> Runtime,
	-- ROBLOX deviation END
}

local Runtime = {} :: Runtime & Runtime_statics
local Runtime_private = Runtime :: Runtime_private & Runtime_statics;
(Runtime :: any).__index = Runtime
-- ROBLOX deviation START: skipped
-- Runtime.shouldInstrument = shouldInstrument
-- ROBLOX deviation END
-- ROBLOX deviation: no arguments for constructor
-- function Runtime_private.new(
-- 	config: Config_ProjectConfig,
-- 	environment: JestEnvironment,
-- 	resolver: Resolver,
-- 	transformer: ScriptTransformer,
-- 	cacheFS: Map<string, string>,
-- 	coverageOptions: ShouldInstrumentOptions,
-- 	testPath: Config_Path
-- ): Runtime
function Runtime.new(loadedModuleFns: Map<ModuleScript, { any }>?): Runtime
	-- ROBLOX deviation START: cast to private type to access methods properly
	-- local self = setmetatable({}, Runtime)
	local self = (setmetatable({}, Runtime) :: any) :: Runtime_private
	-- ROBLOX deviation END
	self.isTornDown = false
	-- ROBLOX deviation START: skipped
	-- self._cacheFS = cacheFS
	-- self._config = config
	-- self._coverageOptions = coverageOptions
	-- self._currentlyExecutingModulePath = ""
	-- ROBLOX deviation END
	--[[
		ROBLOX deviation START: There's no actual Jest Environment so we are just
		mocking some values in here for now.
	]]
	-- self._environment = environment
	self._environment = {
		fakeTimersModern = JestFakeTimers.new(),
	}
	-- ROBLOX deviation END
	self._explicitShouldMock = Map.new()
	self._explicitShouldMockModule = Map.new()
	self._internalModuleRegistry = Map.new()
	-- ROBLOX deviation START: skipped
	-- self._isCurrentlyExecutingManualMock = nil
	-- self._mainModule = nil
	-- ROBLOX deviation END
	self._mockFactories = Map.new()
	self._mockRegistry = Map.new()
	-- ROBLOX deviation START: add cache of loaded module functions to a test runner
	self._loadedModuleFns = loadedModuleFns
	-- ROBLOX deviation END
	-- ROBLOX deviation START: skipped
	-- self._moduleMockRegistry = Map.new()
	-- self._moduleMockFactories = Map.new()
	-- invariant(self._environment.moduleMocker, "`moduleMocker` must be set on an environment when created")
	-- ROBLOX deviation END
	-- ROBLOX deviation START: instantiate the module mocker here instead of being passed in as an arg from runTest
	-- self._moduleMocker = self._environment.moduleMocker
	self._moduleMocker = ModuleMocker.new()
	-- ROBLOX deviation END
	self._isolatedModuleRegistry = nil
	self._isolatedMockRegistry = nil
	self._moduleRegistry = Map.new()
	-- ROBLOX deviation START: skipped
	-- self._esmoduleRegistry = Map.new()
	-- self._cjsNamedExports = Map.new()
	-- self._esmModuleLinkingMap = WeakMap.new()
	-- self._testPath = testPath
	-- self._resolver = resolver
	-- self._scriptTransformer = transformer
	-- ROBLOX deviation END
	-- ROBLOX deviation START: automocking not supported
	-- self._shouldAutoMock = config.automock
	self._shouldAutoMock = false
	-- ROBLOX deviation END
	-- ROBLOX deviation START: skipped
	-- self._sourceMapRegistry = Map.new()
	-- self._fileTransforms = Map.new()
	-- self._fileTransformsMutex = Map.new()
	-- self._virtualMocks = Map.new()
	-- self._virtualModuleMocks = Map.new()
	-- self.jestObjectCaches = Map.new()
	-- self._mockMetaDataCache = Map.new()
	-- ROBLOX deviation END
	self._shouldMockModuleCache = Map.new()
	-- ROBLOX deviation START: skipped
	-- self._shouldUnmockTransitiveDependenciesCache = Map.new()
	-- self._transitiveShouldMock = Map.new()
	-- ROBLOX deviation END
	-- ROBLOX deviation: no Legacy/Modern timers
	-- self._fakeTimersImplementation = if config.timers == "legacy"
	-- 	then self._environment.fakeTimers
	-- 	else self._environment.fakeTimersModern
	self._fakeTimersImplementation = self._environment.fakeTimersModern
	-- ROBLOX deviation END
	-- ROBLOX deviation START: skipped
	-- self._unmockList = unmockRegExpCache:get(config)
	-- if Boolean.toJSBoolean(not Boolean.toJSBoolean(self._unmockList) and config.unmockedModulePathPatterns) then
	-- 	self._unmockList = RegExp.new(
	-- 		Array.join(config.unmockedModulePathPatterns, "|") --[[ ROBLOX CHECK: check if 'config.unmockedModulePathPatterns' is an Array ]]
	-- 	)
	-- 	unmockRegExpCache:set(config, self._unmockList)
	-- end
	-- local ref = if self._environment.exportConditions ~= nil then self._environment.exportConditions() else nil
	-- local envExportConditions = if ref ~= nil then ref else {}
	-- self.esmConditions =
	-- 	Array.from(Set.new(Array.concat({}, { "import", "default" }, Array.spread(envExportConditions))))
	-- self.cjsConditions =
	-- 	Array.from(Set.new(Array.concat({}, { "require", "default" }, Array.spread(envExportConditions))))
	-- if Boolean.toJSBoolean(config.automock) then
	-- 	Array.forEach(config.setupFiles, function(filePath)
	-- 		if
	-- 			Boolean.toJSBoolean(
	-- 				Array.includes(filePath, NODE_MODULES) --[[ ROBLOX CHECK: check if 'filePath' is an Array ]]
	-- 			)
	-- 		then
	-- 			local moduleID = self._resolver:getModuleID(
	-- 				self._virtualMocks,
	-- 				filePath,
	-- 				nil, -- shouldn't really matter, but in theory this will make sure the caching is correct
	-- 				{
	-- 					conditions = if Boolean.toJSBoolean(self:unstable_shouldLoadAsEsm(filePath))
	-- 						then self.esmConditions
	-- 						else self.cjsConditions,
	-- 				}
	-- 			)
	-- 			self._transitiveShouldMock:set(moduleID, false)
	-- 		end
	-- 	end) --[[ ROBLOX CHECK: check if 'config.setupFiles' is an Array ]]
	-- end
	-- self:resetModules()
	-- ROBLOX deviation END
	--[[
		ROBLOX deviation START: normally a jest object gets created for each
		test file and inserted into a cache, an instance gets injected into each
		test module. Currently this implementation is global across all tests.
	]]
	local filename = script
	self._jestObject = self:_createJestObjectFor(filename)
	-- ROBLOX deviation END

	--[[
		ROBLOX deviation START: added to hold references to all the clean up
		functions from loaded modules. Is used in Runtime.teardown
	]]
	self._cleanupFns = {}
	-- ROBLOX deviation END

	return (self :: any) :: Runtime
end
-- ROBLOX deviation START: skipped
-- function Runtime_private.createContext(
-- 	config: Config_ProjectConfig,
-- 	options: {
-- 		console: Console?,
-- 		maxWorkers: number,
-- 		watch: boolean?,
-- 		watchman: boolean,
-- 	}
-- ): Promise<Context>
-- 	return Promise.resolve():andThen(function()
-- 		createDirectory(config.cacheDirectory)
-- 		local instance = Runtime:createHasteMap(config, {
-- 			console = options.console,
-- 			maxWorkers = options.maxWorkers,
-- 			resetCache = not Boolean.toJSBoolean(config.cache),
-- 			watch = options.watch,
-- 			watchman = options.watchman,
-- 		})
-- 		local hasteMap = instance:build():expect()
-- 		return {
-- 			config = config,
-- 			hasteFS = hasteMap.hasteFS,
-- 			moduleMap = hasteMap.moduleMap,
-- 			resolver = Runtime:createResolver(config, hasteMap.moduleMap),
-- 		}
-- 	end)
-- end
-- function Runtime_private.createHasteMap(config: Config_ProjectConfig, options: HasteMapOptions?): HasteMap
-- 	local ignorePatternParts = Array.filter(
-- 		Array.concat(
-- 			{},
-- 			Array.spread(config.modulePathIgnorePatterns),
-- 			Array.spread(
-- 				if Boolean.toJSBoolean(if Boolean.toJSBoolean(options) then options.watch else options)
-- 					then config.watchPathIgnorePatterns
-- 					else {}
-- 			),
-- 			{
-- 				(function()
-- 					local ref = config.cacheDirectory:startsWith(config.rootDir + path.sep)
-- 					return if Boolean.toJSBoolean(ref) then config.cacheDirectory else ref
-- 				end)(),
-- 			}
-- 		),
-- 		Boolean
-- 	)
-- 	local ignorePattern = if ignorePatternParts.length
-- 			> 0 --[[ ROBLOX CHECK: operator '>' works only if either both arguments are strings or both are a number ]]
-- 		then RegExp.new(
-- 			Array.join(ignorePatternParts, "|") --[[ ROBLOX CHECK: check if 'ignorePatternParts' is an Array ]]
-- 		)
-- 		else nil
-- 	local refProp0 = config.cacheDirectory
-- 	local refProp1 = config.haste.computeSha1
-- 	local refProp2 = if typeof(options) == "table" then options.console else nil
-- 	local refProp3 = config.dependencyExtractor
-- 	local refProp4 = config.haste.enableSymlinks
-- 	local refProp5 = Array.concat({ Snapshot.EXTENSION }, config.moduleFileExtensions)
-- 	local refProp6 = config.haste.forceNodeFilesystemAPI
-- 	local refProp7 = config.haste.hasteImplModulePath
-- 	local refProp8 = config.haste.hasteMapModulePath
-- 	local refProp9 = ignorePattern
-- 	local ref = if typeof(options) == "table" then options.maxWorkers else nil
-- 	local refProp10 = Boolean.toJSBoolean(ref) and ref or 1
-- 	return HasteMap:create({
-- 		cacheDirectory = refProp0,
-- 		computeSha1 = refProp1,
-- 		console = refProp2,
-- 		dependencyExtractor = refProp3,
-- 		enableSymlinks = refProp4,
-- 		extensions = refProp5,
-- 		forceNodeFilesystemAPI = refProp6,
-- 		hasteImplModulePath = refProp7,
-- 		hasteMapModulePath = refProp8,
-- 		ignorePattern = refProp9,
-- 		maxWorkers = refProp10,
-- 		mocksPattern = escapePathForRegex(tostring(path.sep) .. "__mocks__" .. tostring(path.sep)),
-- 		name = config.name,
-- 		platforms = Boolean.toJSBoolean(config.haste.platforms) and config.haste.platforms or {
-- 			"ios",
-- 			"android",
-- 		},
-- 		resetCache = if typeof(options) == "table" then options.resetCache else nil,
-- 		retainAllFiles = false,
-- 		rootDir = config.rootDir,
-- 		roots = config.roots,
-- 		throwOnModuleCollision = config.haste.throwOnModuleCollision,
-- 		useWatchman = if typeof(options) == "table" then options.watchman else nil,
-- 		watch = if typeof(options) == "table" then options.watch else nil,
-- 	})
-- end
-- function Runtime_private.createResolver(config: Config_ProjectConfig, moduleMap: IModuleMap): Resolver
-- 	return Resolver.new(moduleMap, {
-- 		defaultPlatform = config.haste.defaultPlatform,
-- 		extensions = Array.map(config.moduleFileExtensions, function(extension)
-- 			return "." .. tostring(extension)
-- 		end), --[[ ROBLOX CHECK: check if 'config.moduleFileExtensions' is an Array ]]
-- 		hasCoreModules = true,
-- 		moduleDirectories = config.moduleDirectories,
-- 		moduleNameMapper = getModuleNameMapper(config),
-- 		modulePaths = config.modulePaths,
-- 		platforms = config.haste.platforms,
-- 		resolver = config.resolver,
-- 		rootDir = config.rootDir,
-- 	})
-- end
-- function Runtime_private.runCLI(): Promise<never>
-- 	return Promise.resolve():andThen(function()
-- 		error(Error.new("The jest-runtime CLI has been moved into jest-repl"))
-- 	end)
-- end
-- function Runtime_private.getCLIOptions(): never
-- 	error(Error.new("The jest-runtime CLI has been moved into jest-repl"))
-- end
-- function Runtime_private:unstable_shouldLoadAsEsm(path: Config_Path): boolean
-- 	return Resolver:unstable_shouldLoadAsEsm(path, self._config.extensionsToTreatAsEsm)
-- end
-- function Runtime_private:loadEsmModule(modulePath: Config_Path, query_: string?): Promise<VMModule>
-- 	local query: string = if query_ ~= nil then query_ else ""
-- 	return Promise.resolve():andThen(function()
-- 		local cacheKey = modulePath + query
-- 		if Boolean.toJSBoolean(self._fileTransformsMutex:has(cacheKey)) then
-- 			self._fileTransformsMutex:get(cacheKey):expect()
-- 		end
-- 		if not Boolean.toJSBoolean(self._esmoduleRegistry:has(cacheKey)) then
-- 			invariant(
-- 				typeof(self._environment.getVmContext) == "function",
-- 				"ES Modules are only supported if your test environment has the `getVmContext` function"
-- 			)
-- 			local context = self._environment:getVmContext()
-- 			invariant(context, "Test environment has been torn down")
-- 			local transformResolve: () -> ()
-- 			local transformReject: (error_: any) -> ()
-- 			self._fileTransformsMutex:set(
-- 				cacheKey,
-- 				Promise.new(function(resolve, reject)
-- 					transformResolve = resolve
-- 					transformReject = reject
-- 				end)
-- 			)
-- 			local ref = transformResolve :: any
-- 			invariant(
-- 				if Boolean.toJSBoolean(ref) then transformReject :: any else ref,
-- 				"Promise initialization should be sync - please report this bug to Jest!"
-- 			)
-- 			if Boolean.toJSBoolean(self._resolver:isCoreModule(modulePath)) then
-- 				local core = self:_importCoreModule(modulePath, context)
-- 				self._esmoduleRegistry:set(cacheKey, core)
-- 				transformResolve()
-- 				return core
-- 			end
-- 			local transformedCode = self:transformFileAsync(modulePath, {
-- 				isInternalModule = false,
-- 				supportsDynamicImport = true,
-- 				supportsExportNamespaceFrom = true,
-- 				supportsStaticESM = true,
-- 				supportsTopLevelAwait = supportsTopLevelAwait,
-- 			}):expect()
-- 			do --[[ ROBLOX COMMENT: try-catch block conversion ]]
-- 				local ok, result, hasReturned = xpcall(function()
-- 					local module = SourceTextModule.new(transformedCode, {
-- 						context = context,
-- 						identifier = modulePath,
-- 						importModuleDynamically = function(specifier: string, referencingModule: VMModule)
-- 							return Promise.resolve():andThen(function()
-- 								invariant(
-- 									runtimeSupportsVmModules,
-- 									"You need to run with a version of node that supports ES Modules in the VM API. See https://jestjs.io/docs/ecmascript-modules"
-- 								)
-- 								local module = self:resolveModule(
-- 									specifier,
-- 									referencingModule.identifier,
-- 									referencingModule.context
-- 								):expect()
-- 								return self:linkAndEvaluateModule(module)
-- 							end)
-- 						end,
-- 						initializeImportMeta = function(self, meta: ImportMeta)
-- 							meta.url = pathToFileURL(modulePath).href
-- 						end,
-- 					})
-- 					invariant(
-- 						not Boolean.toJSBoolean(self._esmoduleRegistry:has(cacheKey)),
-- 						("Module cache already has entry %s. This is a bug in Jest, please report it!"):format(
-- 							tostring(cacheKey)
-- 						)
-- 					)
-- 					self._esmoduleRegistry:set(cacheKey, module)
-- 					transformResolve()
-- 				end, function(error_)
-- 					transformReject(error_)
-- 					error(error_)
-- 				end)
-- 				if hasReturned then
-- 					return result
-- 				end
-- 			end
-- 		end
-- 		local module = self._esmoduleRegistry:get(cacheKey)
-- 		invariant(module, "Module cache does not contain module. This is a bug in Jest, please open up an issue")
-- 		return module
-- 	end)
-- end
-- function Runtime_private:resolveModule(
-- 	specifier: string,
-- 	referencingIdentifier: string,
-- 	context: VMContext
-- ): Promise<T> | T | void
-- 	if Boolean.toJSBoolean(self.isTornDown) then
-- 		self:_logFormattedReferenceError(
-- 			"You are trying to `import` a file after the Jest environment has been torn down."
-- 		)
-- 		process.exitCode = 1
-- 		return
-- 	end
-- 	if specifier == "@jest/globals" then
-- 		local fromCache = self._esmoduleRegistry:get("@jest/globals")
-- 		if Boolean.toJSBoolean(fromCache) then
-- 			return fromCache
-- 		end
-- 		local globals = self:getGlobalsForEsm(referencingIdentifier, context)
-- 		self._esmoduleRegistry:set("@jest/globals", globals)
-- 		return globals
-- 	end
-- 	if Boolean.toJSBoolean(specifier:startsWith("file://")) then
-- 		specifier = fileURLToPath(specifier)
-- 	end
-- 	local path, query = table.unpack(specifier:split("?"), 1, 2)
-- 	if
-- 		Boolean.toJSBoolean(
-- 			self:_shouldMock(
-- 				referencingIdentifier,
-- 				path,
-- 				self._explicitShouldMockModule,
-- 				{ conditions = self.esmConditions }
-- 			)
-- 		)
-- 	then
-- 		return self:importMock(referencingIdentifier, path, context)
-- 	end
-- 	local resolved = self:_resolveModule(referencingIdentifier, path, { conditions = self.esmConditions })
-- 	if
-- 		Boolean.toJSBoolean((function()
-- 			local ref = self._resolver:isCoreModule(resolved)
-- 			return Boolean.toJSBoolean(ref) and ref or self:unstable_shouldLoadAsEsm(resolved)
-- 		end)())
-- 	then
-- 		return self:loadEsmModule(resolved, query)
-- 	end
-- 	return self:loadCjsAsEsm(referencingIdentifier, resolved, context)
-- end
-- function Runtime_private:linkAndEvaluateModule(module: VMModule): Promise<VMModule | void>
-- 	return Promise.resolve():andThen(function()
-- 		if Boolean.toJSBoolean(self.isTornDown) then
-- 			self:_logFormattedReferenceError(
-- 				"You are trying to `import` a file after the Jest environment has been torn down."
-- 			)
-- 			process.exitCode = 1
-- 			return
-- 		end
-- 		if module.status == "unlinked" then
-- 			-- since we might attempt to link the same module in parallel, stick the promise in a weak map so every call to
-- 			-- this method can await it
-- 			self._esmModuleLinkingMap:set(
-- 				module,
-- 				module:link(function(specifier: string, referencingModule: VMModule)
-- 					return self:resolveModule(specifier, referencingModule.identifier, referencingModule.context)
-- 				end)
-- 			)
-- 		end
-- 		self._esmModuleLinkingMap:get(module):expect()
-- 		if module.status == "linked" then
-- 			module:evaluate():expect()
-- 		end
-- 		return module
-- 	end)
-- end
-- function Runtime_private:unstable_importModule(from: Config_Path, moduleName: ModuleScript?): Promise<void>
-- 	return Promise.resolve():andThen(function()
-- 		invariant(
-- 			runtimeSupportsVmModules,
-- 			"You need to run with a version of node that supports ES Modules in the VM API. See https://jestjs.io/docs/ecmascript-modules"
-- 		)
-- 		local path, query = table.unpack((if moduleName ~= nil then moduleName else ""):split("?"), 1, 2)
-- 		local modulePath = self:_resolveModule(from, path, { conditions = self.esmConditions })
-- 		local module = self:loadEsmModule(modulePath, query):expect()
-- 		return self:linkAndEvaluateModule(module)
-- 	end)
-- end
-- function Runtime_private:loadCjsAsEsm(from: Config_Path, modulePath: Config_Path, context: VMContext)
-- 	-- CJS loaded via `import` should share cache with other CJS: https://github.com/nodejs/modules/issues/503
-- 	local cjs = self:requireModuleOrMock(from, modulePath)
-- 	local parsedExports = self:getExportsOfCjs(modulePath)
-- 	local cjsExports = Array.filter(Array.concat({}, Array.spread(parsedExports)), function(exportName)
-- 		-- we don't wanna respect any exports _named_ default as a named export
-- 		if exportName == "default" then
-- 			return false
-- 		end
-- 		return Object.hasOwnProperty(cjs, exportName)
-- 	end)
-- 	local module = SyntheticModule.new(Array.concat({}, Array.spread(cjsExports), { "default" }), function()
-- 		Array.forEach(cjsExports, function(exportName)
-- 			-- @ts-expect-error
-- 			self:setExport(exportName, cjs[tostring(exportName)])
-- 		end) --[[ ROBLOX CHECK: check if 'cjsExports' is an Array ]] -- @ts-expect-error: TS doesn't know what `this` is
-- 		self:setExport("default", cjs)
-- 	end, { context = context, identifier = modulePath })
-- 	return evaluateSyntheticModule(module)
-- end
-- function Runtime_private:importMock(from: Config_Path, moduleName: ModuleScript, context: VMContext): Promise<T>
-- 	return Promise.resolve():andThen(function()
-- 		local moduleID =
-- 			self._resolver:getModuleID(self._virtualModuleMocks, from, moduleName, { conditions = self.esmConditions })
-- 		if Boolean.toJSBoolean(self._moduleMockRegistry:has(moduleID)) then
-- 			return self._moduleMockRegistry:get(moduleID)
-- 		end
-- 		if Boolean.toJSBoolean(self._moduleMockFactories:has(moduleID)) then
-- 			local invokedFactory: any = (self._moduleMockFactories:get(
-- 				moduleID -- has check above makes this ok
-- 			) :: any)():expect()
-- 			local module = SyntheticModule.new(Object.keys(invokedFactory), function()
-- 				Array.forEach(Object.entries(invokedFactory), function(ref0)
-- 					local key, value = table.unpack(ref0, 1, 2)
-- 					-- @ts-expect-error: TS doesn't know what `this` is
-- 					self:setExport(key, value)
-- 				end) --[[ ROBLOX CHECK: check if 'Object.entries(invokedFactory)' is an Array ]]
-- 			end, { context = context, identifier = moduleName })
-- 			self._moduleMockRegistry:set(moduleID, module)
-- 			return evaluateSyntheticModule(module)
-- 		end
-- 		error(Error.new("Attempting to import a mock without a factory"))
-- 	end)
-- end
-- function Runtime_private:getExportsOfCjs(modulePath: Config_Path)
-- 	local cachedNamedExports = self._cjsNamedExports:get(modulePath)
-- 	if Boolean.toJSBoolean(cachedNamedExports) then
-- 		return cachedNamedExports
-- 	end
-- 	local ref = if typeof(self._fileTransforms:get(modulePath)) == "table"
-- 		then self._fileTransforms:get(modulePath).code
-- 		else nil
-- 	local transformedCode = if ref ~= nil then ref else self:readFile(modulePath)
-- 	local exports, reexports
-- 	do
-- 		local ref = parseCjs(transformedCode)
-- 		exports, reexports = ref.exports, ref.reexports
-- 	end
-- 	local namedExports = Set.new(exports)
-- 	Array.forEach(reexports, function(reexport)
-- 		local resolved = self:_resolveModule(modulePath, reexport, { conditions = self.esmConditions })
-- 		local exports = self:getExportsOfCjs(resolved)
-- 		Array.forEach(exports, namedExports.add, namedExports) --[[ ROBLOX CHECK: check if 'exports' is an Array ]]
-- 	end) --[[ ROBLOX CHECK: check if 'reexports' is an Array ]]
-- 	self._cjsNamedExports:set(modulePath, namedExports)
-- 	return namedExports
-- end
-- ROBLOX deviation END
function Runtime_private:requireModule<T>(
	-- ROBLOX deviation START: using ModuleScript instead of string
	from: ModuleScript,
	moduleName_: ModuleScript?,
	-- ROBLOX deviation END
	options: InternalModuleOptions?,
	isRequireActual_: boolean?,
	-- ROBLOX deviation START: additional param to not require return from test files
	noModuleReturnRequired: boolean?
	-- ROBLOX deviation END
): any
	-- ROBLOX deviation START: additional logic
	local moduleName = if moduleName_ == nil then from else moduleName_
	-- ROBLOX deviation END
	-- ROBLOX deviation START: additional interception. We need to make sure Symbol is only loaded once
	if string.find(moduleName.Name, ".global$") then
		return (require :: any)(moduleName)
	end
	-- ROBLOX deviation END
	-- ROBLOX deviation START: skipped
	-- local isRequireActual: boolean = if isRequireActual_ ~= nil then isRequireActual_ else false
	-- ROBLOX deviation END
	-- ROBLOX deviation START: simplify
	-- local ref = if typeof(options) == "table" then options.isInternalModule else nil
	-- local isInternal = if ref ~= nil then ref else false
	local isInternal = if typeof(options) == "table" and options.isInternalModule ~= nil
		then options.isInternalModule
		else false
	-- ROBLOX deviation END
	-- ROBLOX deviation START: skipped
	-- local moduleID = self._resolver:getModuleID(
	-- 	self._virtualMocks,
	-- 	from,
	-- 	moduleName,
	-- 	if Boolean.toJSBoolean(isInternal) then nil else { conditions = self.cjsConditions }
	-- )
	-- local modulePath: string | nil -- Some old tests rely on this mocking behavior. Ideally we'll change this
	-- -- to be more explicit.
	-- local moduleResource = if Boolean.toJSBoolean(moduleName) then self._resolver:getModule(moduleName) else moduleName
	-- local manualMock = if Boolean.toJSBoolean(moduleName)
	-- 	then self._resolver:getMockModule(from, moduleName)
	-- 	else moduleName
	-- if
	-- 	Boolean.toJSBoolean((function()
	-- 		local ref = not Boolean.toJSBoolean(
	-- 				if typeof(options) == "table" then options.isInternalModule else nil
	-- 			)
	-- 			and not Boolean.toJSBoolean(isRequireActual)
	-- 			and not Boolean.toJSBoolean(moduleResource)
	-- 			and manualMock
	-- 		local ref = if Boolean.toJSBoolean(ref) then manualMock ~= self._isCurrentlyExecutingManualMock else ref
	-- 		return if Boolean.toJSBoolean(ref) then self._explicitShouldMock:get(moduleID) ~= false else ref
	-- 	end)())
	-- then
	-- 	modulePath = manualMock
	-- end
	-- if
	-- 	Boolean.toJSBoolean(
	-- 		if Boolean.toJSBoolean(moduleName) then self._resolver:isCoreModule(moduleName) else moduleName
	-- 	)
	-- then
	-- 	return self:_requireCoreModule(moduleName, supportsNodeColonModulePrefixInRequire)
	-- end
	-- if not Boolean.toJSBoolean(modulePath) then
	-- 	modulePath = self:_resolveModule(
	-- 		from,
	-- 		moduleName,
	-- 		if Boolean.toJSBoolean(isInternal) then nil else { conditions = self.cjsConditions }
	-- 	)
	-- end
	-- if Boolean.toJSBoolean(self:unstable_shouldLoadAsEsm(modulePath)) then
	-- 	-- Node includes more info in the message
	-- 	local error_ = Error.new(("Must use import to load ES Module: %s"):format(tostring(modulePath))) -- @ts-expect-error: `code` is not defined
	-- 	error_.code = "ERR_REQUIRE_ESM"
	-- 	error(error_)
	-- end
	local modulePath = moduleName
	-- ROBLOX deviation END
	-- ROBLOX deviation START: add type annotation
	-- local moduleRegistry
	local moduleRegistry: ModuleRegistry
	-- ROBLOX deviation END
	if isInternal then
		moduleRegistry = self._internalModuleRegistry
		-- ROBLOX deviation START: simplify
		-- elseif Boolean.toJSBoolean(self._isolatedModuleRegistry) then
	elseif self._isolatedModuleRegistry ~= nil then
		-- ROBLOX deviation END
		moduleRegistry = self._isolatedModuleRegistry
	else
		moduleRegistry = self._moduleRegistry
	end
	local module = moduleRegistry:get(modulePath)
	if module then
		return module.exports
	end -- We must register the pre-allocated module object first so that any
	-- circular dependencies that may arise while evaluating the module can
	-- be satisfied.
	local localModule: InitialModule = {
		-- ROBLOX deviation START: skipped
		-- children = {},
		-- ROBLOX deviation END
		exports = {},
		filename = modulePath,
		id = modulePath,
		loaded = false,
		-- ROBLOX deviation START: skipped
		-- path = path:dirname(modulePath),
		-- ROBLOX deviation END
	}
	moduleRegistry:set(modulePath, localModule)
	-- ROBLOX deviation START: use pcall instead of xpcall
	-- do --[[ ROBLOX COMMENT: try-catch block conversion ]]
	-- 	local ok, result, hasReturned = xpcall(function()
	-- 		self:_loadModule(localModule, from, moduleName, modulePath, options, moduleRegistry)
	-- 	end, function(error_)
	-- 		moduleRegistry:delete(modulePath)
	-- 		error(error_)
	-- 	end)
	-- 	if hasReturned then
	-- 		return result
	-- 	end
	-- end
	local ok, result = pcall(function()
		self:_loadModule(localModule, from, moduleName, modulePath, options, moduleRegistry, noModuleReturnRequired)
	end)
	if not ok then
		moduleRegistry:delete(modulePath)
		error(result)
	end
	-- ROBLOX deviation END
	return localModule.exports
end
-- ROBLOX deviation START: accept ModuleScript instead of string
-- function Runtime_private:requireInternalModule(from: Config_Path, to: string?): T
function Runtime_private:requireInternalModule<T>(from: ModuleScript, to: ModuleScript?): T
	-- ROBLOX deviation END
	-- ROBLOX deviation START: `to` not handled yet
	-- if Boolean.toJSBoolean(to) then
	-- 	local require_ = (if nativeModule.createRequire ~= nil
	-- 		then nativeModule.createRequire
	-- 		else nativeModule.createRequireFromPath)(from)
	-- 	if Boolean.toJSBoolean(INTERNAL_MODULE_REQUIRE_OUTSIDE_OPTIMIZED_MODULES:has(to)) then
	-- 		return require_(to)
	-- 	end
	-- 	local outsideJestVmPath = decodePossibleOutsideJestVmPath(to)
	-- 	if Boolean.toJSBoolean(outsideJestVmPath) then
	-- 		return require_(outsideJestVmPath)
	-- 	end
	-- end
	-- ROBLOX deviation END
	return self:requireModule(from, to, {
		isInternalModule = true,
		-- ROBLOX deviation START: not supported
		-- supportsDynamicImport = esmIsAvailable,
		-- supportsExportNamespaceFrom = false,
		-- supportsStaticESM = false,
		-- supportsTopLevelAwait = false,
		-- ROBLOX deviation END
	})
end
-- ROBLOX deviation START: using ModuleScript instead of string
-- function Runtime_private:requireActual(from: Config_Path, moduleName: ModuleScript): T
function Runtime_private:requireActual<T>(from: ModuleScript, moduleName: ModuleScript): T
	-- ROBLOX deviation END
	return self:requireModule(from, moduleName, nil, true)
end
-- ROBLOX deviation START: using ModuleScript instead of string
-- 	local moduleID =
-- 		self._resolver:getModuleID(self._virtualMocks, from, moduleName, { conditions = self.cjsConditions })
function Runtime_private:requireMock<T>(from: ModuleScript, moduleName: ModuleScript): T
	local moduleID = moduleName
	-- ROBLOX deviation END
	-- ROBLOX deviation START: simplify
	-- if
	-- 	Boolean.toJSBoolean((function()
	-- 		local ref = if typeof(self._isolatedMockRegistry) == "table" then self._isolatedMockRegistry.has else nil
	-- 		return if ref ~= nil then ref(moduleID) else nil
	-- 	end)())
	-- then
	if self._isolatedMockRegistry ~= nil and self._isolatedMockRegistry:has(moduleID) then
		-- ROBLOX deviation END
		-- ROBLOX deviation START: this is guaranteed to not be nil as we set a registry above
		-- return self._isolatedMockRegistry:get(moduleID)
		return self._isolatedMockRegistry:get(moduleID) :: any
		-- ROBLOX deviation END
	elseif self._mockRegistry:has(moduleID) then
		-- ROBLOX deviation START: this is guaranteed to not be nil as we set a registry above
		-- return self._mockRegistry:get(moduleID)
		return self._mockRegistry:get(moduleID) :: any
		-- ROBLOX deviation END
	end
	-- ROBLOX deviation START: simplify because `self._isolatedMockRegistry` is either nil or a map object
	-- local mockRegistry = Boolean.toJSBoolean(self._isolatedMockRegistry) and self._isolatedMockRegistry
	-- 	or self._mockRegistry
	local mockRegistry: Map<ModuleScript, any> = self._isolatedMockRegistry or self._mockRegistry
	-- ROBLOX deviation END
	if self._mockFactories:has(moduleID) then
		-- has check above makes this ok
		local module = (self._mockFactories:get(moduleID) :: any)()
		mockRegistry:set(moduleID, module)
		return module :: T
	end
	-- ROBLOX deviation START: manual mocks are not implemented
	error("manual mocks not implemented yet")
	-- local manualMockOrStub = self._resolver:getMockModule(from, moduleName)
	-- local ref = self._resolver:getMockModule(from, moduleName)
	-- local modulePath = Boolean.toJSBoolean(ref) and ref
	-- 	or self:_resolveModule(from, moduleName, { conditions = self.cjsConditions })
	-- local isManualMock = if Boolean.toJSBoolean(manualMockOrStub)
	-- 	then not Boolean.toJSBoolean(self._resolver:resolveStubModuleName(from, moduleName))
	-- 	else manualMockOrStub
	-- if not Boolean.toJSBoolean(isManualMock) then
	-- 	-- If the actual module file has a __mocks__ dir sitting immediately next
	-- 	-- to it, look to see if there is a manual mock for this file.
	-- 	--
	-- 	-- subDir1/my_module.js
	-- 	-- subDir1/__mocks__/my_module.js
	-- 	-- subDir2/my_module.js
	-- 	-- subDir2/__mocks__/my_module.js
	-- 	--
	-- 	-- Where some other module does a relative require into each of the
	-- 	-- respective subDir{1,2} directories and expects a manual mock
	-- 	-- corresponding to that particular my_module.js file.
	-- 	local moduleDir = path:dirname(modulePath)
	-- 	local moduleFileName = path:basename(modulePath)
	-- 	local potentialManualMock = Array.join(path, moduleDir, "__mocks__", moduleFileName) --[[ ROBLOX CHECK: check if 'path' is an Array ]]
	-- 	if Boolean.toJSBoolean(fs:existsSync(potentialManualMock)) then
	-- 		isManualMock = true
	-- 		modulePath = potentialManualMock
	-- 	end
	-- end
	-- if Boolean.toJSBoolean(isManualMock) then
	-- 	local localModule: InitialModule = {
	-- 		children = {},
	-- 		exports = {},
	-- 		filename = modulePath,
	-- 		id = modulePath,
	-- 		loaded = false,
	-- 		path = path:dirname(modulePath),
	-- 	}
	-- 	self:_loadModule(localModule, from, moduleName, modulePath, nil, mockRegistry)
	-- 	mockRegistry:set(moduleID, localModule.exports)
	-- else
	-- 	-- Look for a real module to generate an automock from
	-- 	mockRegistry:set(moduleID, self:_generateMock(from, moduleName))
	-- end
	-- return mockRegistry:get(moduleID)
	-- ROBLOX deviation END
end
function Runtime_private:_loadModule(
	localModule: InitialModule,
	-- ROBLOX deviation START: using ModuleScript instead of string
	from: ModuleScript,
	moduleName: ModuleScript | nil,
	modulePath: ModuleScript,
	-- ROBLOX deviation END
	options: InternalModuleOptions | nil,
	moduleRegistry: ModuleRegistry,
	-- ROBLOX deviation START: additional param to not require return from test files
	noModuleReturnRequired: boolean?
	-- ROBLOX deviation END
)
	-- ROBLOX deviation START: custom implementation
	-- if path:extname(modulePath) == ".json" then
	-- 	local text = stripBOM(self:readFile(modulePath))
	-- 	local transformedFile =
	-- 		self._scriptTransformer:transformJson(modulePath, self:_getFullTransformationOptions(options), text)
	-- 	localModule.exports = self._environment.global.JSON:parse(transformedFile)
	-- elseif path:extname(modulePath) == ".node" then
	-- 	localModule.exports = require_(modulePath)
	-- else
	do
		-- ROBLOX deviation END
		-- Only include the fromPath if a moduleName is given. Else treat as root.
		local fromPath = if Boolean.toJSBoolean(moduleName) then from else nil
		-- ROBLOX deviation START: one additional param - noModuleReturnRequired
		-- 	self:_execModule(localModule, options, moduleRegistry, fromPath)
		self:_execModule(localModule, options, moduleRegistry, fromPath, noModuleReturnRequired)
		-- ROBLOX deviation END
	end
	-- ROBLOX deviation END
	localModule.loaded = true
end
-- ROBLOX deviation START: skipped
-- function Runtime_private:_getFullTransformationOptions(options_: InternalModuleOptions?): TransformationOptions
-- 	local options: InternalModuleOptions = if options_ ~= nil then options_ else defaultTransformOptions
-- 	return Object.assign({}, options, self._coverageOptions)
-- end
-- ROBLOX deviation END
-- ROBLOX deviation START: modified signature, use ModuleScript instead of string
function Runtime_private:requireModuleOrMock<T>(moduleName: ModuleScript): T
	local from = moduleName
	-- ROBLOX deviation END
	-- ROBLOX deviation START: additional interception
	if moduleName == script or moduleName == script.Parent then
		-- ROBLOX NOTE: Need to cast require because analyze cannot figure out scriptInstance path
		return (require :: any)(moduleName)
	end
	-- ROBLOX deviation END

	-- ROBLOX deviation START: additional interception. We need to make sure Symbol is only loaded once
	if string.find(moduleName.Name, ".global$") then
		return (require :: any)(moduleName)
	end
	-- ROBLOX deviation END

	-- ROBLOX deviation START: custom JestGlobals interception
	-- -- this module is unmockable
	-- if moduleName == "@jest/globals" then
	-- 	-- @ts-expect-error: we don't care that it's not assignable to T
	-- 	return self:getGlobalsForCjs(from)
	-- end
	if moduleName.Name == "JestGlobals" then
		local globals = self:getGlobalsFromEnvironment()
		return Object.assign({}, globals, {
			jest = self._jestObject,
		}) :: T
	end
	-- ROBLOX deviation END
	-- ROBLOX deviation START: use pcall instead of xpcall
	-- do --[[ ROBLOX COMMENT: try-catch block conversion ]]
	-- 	local ok, result, hasReturned = xpcall(function()
	-- 		if
	-- 			Boolean.toJSBoolean(
	-- 				self:_shouldMock(from, moduleName, self._explicitShouldMock, { conditions = self.cjsConditions })
	-- 			)
	-- 		then
	-- 			return self:requireMock(from, moduleName)
	-- 		else
	-- 			return self:requireModule(from, moduleName)
	-- 		end
	-- 	end, function(e: unknown)
	-- 		local moduleNotFound = Resolver:tryCastModuleNotFoundError(e)
	-- 		if Boolean.toJSBoolean(moduleNotFound) then
	-- 			if
	-- 				moduleNotFound.siblingWithSimilarExtensionFound == nil
	-- 				or moduleNotFound.siblingWithSimilarExtensionFound == nil
	-- 			then
	-- 				moduleNotFound.hint = findSiblingsWithFileExtension(
	-- 					self._config.moduleFileExtensions,
	-- 					from,
	-- 					Boolean.toJSBoolean(moduleNotFound.moduleName) and moduleNotFound.moduleName or moduleName
	-- 				)
	-- 				moduleNotFound.siblingWithSimilarExtensionFound = Boolean(moduleNotFound.hint)
	-- 			end
	-- 			moduleNotFound:buildMessage(self._config.rootDir)
	-- 			error(moduleNotFound)
	-- 		end
	-- 		error(e)
	-- 	end)
	-- 	if hasReturned then
	-- 		return result
	-- 	end
	-- end
	local ok, result = pcall(function()
		local shouldMock = self:_shouldMock(from, moduleName, self._explicitShouldMock, {
			conditions = nil,
		})
		if shouldMock then
			-- error("mocking is not implemented in JestRuntime yet")
			return self:requireMock(from, moduleName)
		else
			return self:requireModule(from, moduleName)
		end
	end)
	if not ok then
		error(result)
	end
	return result
	-- ROBLOX deviation END
end
function Runtime_private:isolateModules(fn: () -> ()): ()
	-- ROBLOX deviation START: simplify
	-- if
	-- 	Boolean.toJSBoolean(
	-- 		Boolean.toJSBoolean(self._isolatedModuleRegistry) and self._isolatedModuleRegistry
	-- 			or self._isolatedMockRegistry
	-- 	)
	-- then
	if self._isolatedModuleRegistry ~= nil or self._isolatedMockRegistry ~= nil then
		-- ROBLOX deviation END
		error(Error.new("isolateModules cannot be nested inside another isolateModules."))
	end
	self._isolatedModuleRegistry = Map.new()
	self._isolatedMockRegistry = Map.new()
	do --[[ ROBLOX COMMENT: try-finally block conversion ]]
		-- ROBLOX deviation START: function doesn't return
		-- local ok, result, hasReturned = pcall(function()
		-- 	fn()
		-- end)
		local ok, result = pcall(function()
			fn()
		end)
		-- ROBLOX deviation END
		do
			-- might be cleared within the callback
			-- ROBLOX deviation START: simplify
			-- local ref = if typeof(self._isolatedModuleRegistry) == "table"
			-- 	then self._isolatedModuleRegistry.clear
			-- 	else nil
			-- if ref ~= nil then
			-- 	ref()
			-- end
			-- local ref = if typeof(self._isolatedMockRegistry) == "table" then self._isolatedMockRegistry.clear else nil
			-- if ref ~= nil then
			-- 	ref()
			-- end
			if self._isolatedModuleRegistry then
				self._isolatedModuleRegistry:clear()
			end
			if self._isolatedMockRegistry then
				self._isolatedMockRegistry:clear()
			end
			-- ROBLOX deviation END
			self._isolatedModuleRegistry = nil
			self._isolatedMockRegistry = nil
		end
		-- ROBLOX deviation START: function doesn't return
		-- if hasReturned then
		-- 	return result
		-- end
		-- ROBLOX deviation END
		if not ok then
			error(result)
		end
	end
end
function Runtime_private:resetModules(): ()
	-- ROBLOX deviation START: simplify
	-- local ref = if typeof(self._isolatedModuleRegistry) == "table" then self._isolatedModuleRegistry.clear else nil
	-- if ref ~= nil then
	-- 	ref()
	-- end
	-- local ref = if typeof(self._isolatedMockRegistry) == "table" then self._isolatedMockRegistry.clear else nil
	-- if ref ~= nil then
	-- 	ref()
	-- end
	if self._isolatedModuleRegistry then
		self._isolatedModuleRegistry:clear()
	end
	if self._isolatedMockRegistry then
		self._isolatedMockRegistry:clear()
	end
	-- ROBLOX deviation END
	self._isolatedModuleRegistry = nil
	self._isolatedMockRegistry = nil
	self._mockRegistry:clear()
	self._moduleRegistry:clear()
	-- ROBLOX deviation START: skipped
	-- self._esmoduleRegistry:clear()
	-- self._cjsNamedExports:clear()
	-- self._moduleMockRegistry:clear()
	-- if Boolean.toJSBoolean(self._environment) then
	-- 	if Boolean.toJSBoolean(self._environment.global) then
	-- 		local envGlobal = self._environment.global
	-- 		Array.forEach(
	-- 			Object.keys(envGlobal) :: Array<any --[[ ROBLOX TODO: Unhandled node for type: TSTypeOperator ]] --[[ keyof typeof globalThis ]]>,
	-- 			function(key)
	-- 				local globalMock = envGlobal[tostring(key)]
	-- 				if
	-- 					(typeof(globalMock) == "table" and globalMock ~= nil or typeof(globalMock) == "function")
	-- 					and globalMock._isMockFunction == true
	-- 				then
	-- 					globalMock:mockClear()
	-- 				end
	-- 			end
	-- 		) --[[ ROBLOX CHECK: check if 'Object.keys(envGlobal) as Array<keyof typeof globalThis>' is an Array ]]
	-- 	end
	-- 	if Boolean.toJSBoolean(self._environment.fakeTimers) then
	-- 		self._environment.fakeTimers:clearAllTimers()
	-- 	end
	-- end
	-- ROBLOX deviation END
end
-- ROBLOX deviation START: skipped
-- function Runtime_private:collectV8Coverage(): Promise<void>
-- 	return Promise.resolve():andThen(function()
-- 		self._v8CoverageInstrumenter = CoverageInstrumenter.new()
-- 		self._v8CoverageInstrumenter:startInstrumenting():expect()
-- 	end)
-- end
-- function Runtime_private:stopCollectingV8Coverage(): Promise<void>
-- 	return Promise.resolve():andThen(function()
-- 		if not Boolean.toJSBoolean(self._v8CoverageInstrumenter) then
-- 			error(Error.new("You need to call `collectV8Coverage` first."))
-- 		end
-- 		self._v8CoverageResult = self._v8CoverageInstrumenter:stopInstrumenting():expect()
-- 	end)
-- end
-- function Runtime_private:getAllCoverageInfoCopy(
-- ): typeof((({} :: any) :: typeof((({} :: any) :: JestEnvironment).global)).__coverage__)
-- 	return deepCyclicCopy(self._environment.global.__coverage__)
-- end
-- function Runtime_private:getAllV8CoverageInfoCopy(): V8CoverageResult
-- 	if not Boolean.toJSBoolean(self._v8CoverageResult) then
-- 		error(Error.new("You need to `stopCollectingV8Coverage` first"))
-- 	end
-- 	return Array.map(
-- 		Array.filter(
-- 			Array.map(
-- 				Array.filter(self._v8CoverageResult, function(res)
-- 					return res.url:startsWith("file://")
-- 				end), --[[ ROBLOX CHECK: check if 'this._v8CoverageResult' is an Array ]]
-- 				function(res)
-- 					return Object.assign({}, res, { url = fileURLToPath(res.url) })
-- 				end
-- 			),
-- 			function(res)
-- 				local ref = res.url:startsWith(self._config.rootDir)
-- 				local ref = if Boolean.toJSBoolean(ref) then self._fileTransforms:has(res.url) else ref
-- 				return -- TODO: will this work on windows? It might be better if `shouldInstrument` deals with it anyways
-- 					if Boolean.toJSBoolean(ref)
-- 					then shouldInstrument(res.url, self._coverageOptions, self._config)
-- 					else ref
-- 			end
-- 		),
-- 		function(result)
-- 			local transformedFile = self._fileTransforms:get(result.url)
-- 			return { codeTransformResult = transformedFile, result = result }
-- 		end
-- 	)
-- end
-- function Runtime_private:getSourceMaps(): SourceMapRegistry
-- 	return self._sourceMapRegistry
-- end
-- ROBLOX deviation END
function Runtime_private:setMock(
	-- ROBLOX deviation START: using module script instead of string moduleName
	from: ModuleScript,
	moduleName: ModuleScript,
	-- ROBLOX deviation END
	mockFactory: () -> unknown,
	options: { virtual: boolean? }?
): ()
	if Boolean.toJSBoolean(if typeof(options) == "table" then options.virtual else nil) then
		-- ROBLOX deviation START: virtual mocks are not supported
		-- local mockPath = self._resolver:getModulePath(from, moduleName)
		-- self._virtualMocks:set(mockPath, true)
		error("virtual mocks not supported")
		-- ROBLOX deviation END
	end
	-- ROBLOX deviation START: using module script instead of string moduleName
	-- local moduleID =
	-- 	self._resolver:getModuleID(self._virtualMocks, from, moduleName, { conditions = self.cjsConditions })
	local moduleID = moduleName
	-- ROBLOX deviation END
	self._explicitShouldMock:set(moduleID, true)
	self._mockFactories:set(moduleID, mockFactory)
end
-- ROBLOX deviation START: skipped
-- function Runtime_private:setModuleMock(
-- 	from: string,
-- 	moduleName: ModuleScript,
-- 	mockFactory: () -> Promise<unknown> | unknown,
-- 	options: { virtual: boolean? }?
-- ): ()
-- 	if Boolean.toJSBoolean(if typeof(options) == "table" then options.virtual else nil) then
-- 		local mockPath = self._resolver:getModulePath(from, moduleName)
-- 		self._virtualModuleMocks:set(mockPath, true)
-- 	end
-- 	local moduleID =
-- 		self._resolver:getModuleID(self._virtualModuleMocks, from, moduleName, { conditions = self.esmConditions })
-- 	self._explicitShouldMockModule:set(moduleID, true)
-- 	self._moduleMockFactories:set(moduleID, mockFactory)
-- end
-- ROBLOX deviation END
function Runtime_private:restoreAllMocks(): ()
	self._moduleMocker:restoreAllMocks()
end
function Runtime_private:resetAllMocks(): ()
	self._moduleMocker:resetAllMocks()
end
function Runtime_private:clearAllMocks(): ()
	self._moduleMocker:clearAllMocks()
end
function Runtime_private:teardown(): ()
	self:restoreAllMocks()
	self:resetAllMocks()
	self:resetModules()
	self._internalModuleRegistry:clear()
	-- ROBLOX deviation START: not implemented yet
	-- self._mainModule = nil
	-- ROBLOX deviation END
	self._mockFactories:clear()
	-- ROBLOX deviation START: not implemented yet
	-- self._moduleMockFactories:clear()
	-- self._mockMetaDataCache:clear()
	-- ROBLOX deviation END
	self._shouldMockModuleCache:clear()
	-- ROBLOX deviation START: not implemented yet
	-- self._shouldUnmockTransitiveDependenciesCache:clear()
	-- ROBLOX deviation END
	self._explicitShouldMock:clear()
	self._explicitShouldMockModule:clear()
	-- ROBLOX deviation START: not implemented yet
	-- self._transitiveShouldMock:clear()
	-- self._virtualMocks:clear()
	-- self._virtualModuleMocks:clear()
	-- self._cacheFS:clear()
	-- self._unmockList = nil
	-- self._sourceMapRegistry:clear()
	-- self._fileTransforms:clear()
	-- self._fileTransformsMutex:clear()
	-- self.jestObjectCaches:clear()
	-- self._v8CoverageResult = {}
	-- self._v8CoverageInstrumenter = nil
	-- self._moduleImplementation = nil
	-- ROBLOX deviation END

	-- ROBLOX deviation START: additional cleanup logic for modules loaded with debug.loadmodule
	for _, cleanup in ipairs(self._cleanupFns) do
		cleanup()
	end
	-- ROBLOX deviation END
	self.isTornDown = true
end
-- ROBLOX deviation START: skipped
-- function Runtime_private:_resolveModule(from: Config_Path, to: string | nil, options: ResolveModuleConfig?)
-- 	return if Boolean.toJSBoolean(to) then self._resolver:resolveModule(from, to, options) else from
-- end
-- function Runtime_private:_requireResolve(from: Config_Path, moduleName: ModuleScript?, options_: ResolveOptions?)
-- 	local options: ResolveOptions = if options_ ~= nil then options_ else {}
-- 	if
-- 		moduleName == nil --[[ ROBLOX CHECK: loose equality used upstream ]]
-- 	then
-- 		error(Error.new("The first argument to require.resolve must be a string. Received null or undefined."))
-- 	end
-- 	if Boolean.toJSBoolean(path:isAbsolute(moduleName)) then
-- 		local module = self._resolver:resolveModuleFromDirIfExists(
-- 			moduleName,
-- 			moduleName,
-- 			{ conditions = self.cjsConditions, paths = {} }
-- 		)
-- 		if Boolean.toJSBoolean(module) then
-- 			return module
-- 		end
-- 	else
-- 		local paths = options.paths
-- 		if Boolean.toJSBoolean(paths) then
-- 			for _, p in paths do
-- 				local absolutePath = path:resolve(from, "..", p)
-- 				local module = self._resolver:resolveModuleFromDirIfExists(
-- 					absolutePath,
-- 					moduleName, -- required to also resolve files without leading './' directly in the path
-- 					{ conditions = self.cjsConditions, paths = { absolutePath } }
-- 				)
-- 				if Boolean.toJSBoolean(module) then
-- 					return module
-- 				end
-- 			end
-- 			error(
-- 				Resolver.ModuleNotFoundError.new(
-- 					("Cannot resolve module '%s' from paths ['%s'] from %s"):format(
-- 						tostring(moduleName),
-- 						tostring(Array.join(paths, "', '") --[[ ROBLOX CHECK: check if 'paths' is an Array ]]),
-- 						tostring(from)
-- 					)
-- 				)
-- 			)
-- 		end
-- 	end
-- 	do --[[ ROBLOX COMMENT: try-catch block conversion ]]
-- 		local ok, result, hasReturned = xpcall(function()
-- 			return self:_resolveModule(from, moduleName, { conditions = self.cjsConditions }), true
-- 		end, function(err: unknown)
-- 			local module = self._resolver:getMockModule(from, moduleName)
-- 			if Boolean.toJSBoolean(module) then
-- 				return module
-- 			else
-- 				error(err)
-- 			end
-- 		end)
-- 		if hasReturned then
-- 			return result
-- 		end
-- 	end
-- end
-- function Runtime_private:_requireResolvePaths(from: Config_Path, moduleName: ModuleScript?)
-- 	if
-- 		moduleName == nil --[[ ROBLOX CHECK: loose equality used upstream ]]
-- 	then
-- 		error(Error.new("The first argument to require.resolve.paths must be a string. Received null or undefined."))
-- 	end
-- 	if not Boolean.toJSBoolean(moduleName.length) then
-- 		error(Error.new("The first argument to require.resolve.paths must not be the empty string."))
-- 	end
-- 	if
-- 		moduleName[
-- 			1 --[[ ROBLOX adaptation: added 1 to array index ]]
-- 		] == "."
-- 	then
-- 		return { path:resolve(from, "..") }
-- 	end
-- 	if Boolean.toJSBoolean(self._resolver:isCoreModule(moduleName)) then
-- 		return nil
-- 	end
-- 	return self._resolver:getModulePaths(path:resolve(from, ".."))
-- end
function Runtime_private:_execModule(
	localModule: InitialModule,
	options: InternalModuleOptions | nil,
	moduleRegistry: ModuleRegistry,
	-- ROBLOX deviation START: using ModuleScript instead of string
	-- from: Config_Path | nil --[[ ROBLOX CHECK: verify if `null` wasn't used differently than `undefined` ]]
	from: ModuleScript | nil, --[[ ROBLOX CHECK: verify if `null` wasn't used differently than `undefined` ]]
	-- ROBLOX deviation END
	-- ROBLOX deviation START: additional param to not require return from test files
	noModuleReturnRequired: boolean?
	-- ROBLOX deviation END
): ()
	-- ROBLOX deviation START: custom implementation
	-- 	if Boolean.toJSBoolean(self.isTornDown) then
	-- 		self:_logFormattedReferenceError(
	-- 			"You are trying to `import` a file after the Jest environment has been torn down."
	-- 		)
	-- 		process.exitCode = 1
	-- 		return
	-- 	end -- If the environment was disposed, prevent this module from being executed.
	-- 	if not Boolean.toJSBoolean(self._environment.global) then
	-- 		return
	-- 	end
	-- 	local module = localModule :: Module
	-- 	local filename = module.filename
	-- 	local lastExecutingModulePath = self._currentlyExecutingModulePath
	-- 	self._currentlyExecutingModulePath = filename
	-- 	local origCurrExecutingManualMock = self._isCurrentlyExecutingManualMock
	-- 	self._isCurrentlyExecutingManualMock = filename
	-- 	module.children = {}
	-- 	Object.defineProperty(module, "parent", {
	-- 		enumerable = true,
	-- 		get = function(self)
	-- 			local key = Boolean.toJSBoolean(from) and from or ""
	-- 			local ref = moduleRegistry:get(key)
	-- 			return Boolean.toJSBoolean(ref) and ref or nil
	-- 		end,
	-- 	})
	-- 	module.paths = self._resolver:getModulePaths(module.path)
	-- 	Object.defineProperty(module, "require", { value = self:_createRequireImplementation(module, options) })
	-- 	local transformedCode = self:transformFile(filename, options)
	-- 	local compiledFunction: ModuleWrapper | nil --[[ ROBLOX CHECK: verify if `null` wasn't used differently than `undefined` ]] =
	-- 		nil
	-- 	local script_ = self:createScriptFromCode(transformedCode, filename)
	-- 	local runScript: RunScriptEvalResult | nil --[[ ROBLOX CHECK: verify if `null` wasn't used differently than `undefined` ]] =
	-- 		nil
	-- 	local vmContext = self._environment:getVmContext()
	-- 	if Boolean.toJSBoolean(vmContext) then
	-- 		runScript = script_:runInContext(vmContext, { filename = filename })
	-- 	end
	-- 	if runScript ~= nil then
	-- 		compiledFunction = runScript[tostring(EVAL_RESULT_VARIABLE)]
	-- 	end
	-- 	if compiledFunction == nil then
	-- 		self:_logFormattedReferenceError(
	-- 			"You are trying to `import` a file after the Jest environment has been torn down."
	-- 		)
	-- 		process.exitCode = 1
	-- 		return
	-- 	end
	-- 	local jestObject = self:_createJestObjectFor(filename)
	-- 	self.jestObjectCaches:set(filename, jestObject)
	-- 	local lastArgs: Array<Jest | nil | any --[[ ROBLOX TODO: Unhandled node for type: TSRestType ]] --[[ ...Array<Global.Global> ]]> = Array.concat(
	-- 		{},
	-- 		{
	-- 			if Boolean.toJSBoolean(self._config.injectGlobals) then jestObject else nil,
	-- 		}, -- jest object
	-- 		Array.spread(Array.map(self._config.extraGlobals, function(globalVariable)
	-- 			if Boolean.toJSBoolean(self._environment.global[tostring(globalVariable)]) then
	-- 				return self._environment.global[tostring(globalVariable)]
	-- 			end
	-- 			error(
	-- 				Error.new(
	-- 					("You have requested '%s' as a global variable, but it was not present. Please check your config or your global environment."):format(
	-- 						tostring(globalVariable)
	-- 					)
	-- 				)
	-- 			)
	-- 		end) --[[ ROBLOX CHECK: check if 'this._config.extraGlobals' is an Array ]])
	-- 	)
	-- 	if not Boolean.toJSBoolean(self._mainModule) and filename == self._testPath then
	-- 		self._mainModule = module
	-- 	end
	-- 	Object.defineProperty(module, "main", { enumerable = true, value = self._mainModule })
	-- 	do --[[ ROBLOX COMMENT: try-catch block conversion ]]
	-- 		local ok, result, hasReturned = xpcall(function()
	-- 			compiledFunction(
	-- 				module.exports,
	-- 				module, -- module object
	-- 				module.exports, -- module exports
	-- 				module.require, -- require implementation
	-- 				module.path, -- __dirname
	-- 				module.filename, -- __filename
	-- 				-- @ts-expect-error
	-- 				error("not implemented") --[[ ROBLOX TODO: Unhandled node for type: SpreadElement ]] --[[ ...lastArgs.filter(notEmpty) ]]
	-- 			)
	-- 		end, function(error_)
	-- 			self:handleExecutionError(error_, module)
	-- 		end)
	-- 		if hasReturned then
	-- 			return result
	-- 		end
	-- 	end
	-- 	self._isCurrentlyExecutingManualMock = origCurrExecutingManualMock
	-- 	self._currentlyExecutingModulePath = lastExecutingModulePath
	-- ROBLOX note: each test runner stores its own cache of loaded module functions
	local moduleFunction, defaultEnvironment, errorMessage, cleanupFn

	local modulePath = localModule.filename

	if self._loadedModuleFns and self._loadedModuleFns:has(modulePath) then
		local loadedModule = self._loadedModuleFns:get(modulePath) :: { any }
		moduleFunction = loadedModule[1]
		defaultEnvironment = loadedModule[2]
	else
		-- Narrowing this type here lets us appease the type checker while still
		-- counting on types for the rest of this file
		local loadmodule: (ModuleScript) -> (any, string, () -> any) = debug["loadmodule"]
		moduleFunction, errorMessage, cleanupFn = loadmodule(modulePath)
		-- ROBLOX NOTE: we are not using assert() as it throws a bare string and we need to throw an Error object
		if moduleFunction == nil then
			error(Error.new(errorMessage))
		end

		-- Cache initial environment table to inherit from later
		defaultEnvironment = getfenv(moduleFunction)

		if self._loadedModuleFns then
			self._loadedModuleFns:set(modulePath, { moduleFunction, defaultEnvironment, cleanupFn })
		else
			if cleanupFn ~= nil then
				table.insert(self._cleanupFns, cleanupFn)
			end
		end
	end

	-- The default behavior for function environments is to inherit the table instance from the
	-- parent environment. This means that each invocation of `moduleFunction()` will return
	-- a new module instance but with the same environment table as `moduleFunction` itself at the
	-- time of invocation. In order to properly sanbox module instances, we need to ensure that
	-- each instance has its own distinct environment table containing the specific overrides for it,
	-- but still inherits from the default parent environment for non-overriden environment goodies.
	-- local isInternal = false -- if options ~= nil and options.isInternalModule then options.isInternalModule else false
	local isInternal = if options ~= nil and options.isInternalModule then options.isInternalModule else false
	setfenv(
		moduleFunction,
		setmetatable(
			Object.assign(
				{
					--[[
						ROBLOX NOTE:
						Adding `script` directly into a table so that it is accessible to the debugger
						It seems to be a similar issue to code inside of __index function not being debuggable
					]]
					script = defaultEnvironment.script,
					require = if isInternal
						then function(scriptInstance: ModuleScript)
							return self:requireInternalModule(scriptInstance)
						end
						else function(scriptInstance: ModuleScript)
							return self:requireModuleOrMock(scriptInstance)
						end,
				},
				if isInternal
					then {}
					else {
						delay = self._fakeTimersImplementation.delayOverride,
						tick = self._fakeTimersImplementation.tickOverride,
						time = self._fakeTimersImplementation.timeOverride,
						DateTime = self._fakeTimersImplementation.dateTimeOverride,
						os = self._fakeTimersImplementation.osOverride,
						task = self._fakeTimersImplementation.taskOverride,
					}
			) :: Object,
			{ __index = defaultEnvironment }
		) :: any
	)

	local moduleResult = table.pack(moduleFunction())
	if moduleResult.n ~= 1 and noModuleReturnRequired ~= true then
		error(
			string.format(
				"[Module Error]: %s did not return a valid result\n" .. "\tModuleScripts must return exactly one value",
				tostring(modulePath)
			)
		)
	end
	localModule.exports = moduleResult[1]
	-- ROBLOX deviation END
end
-- function Runtime_private:transformFile(filename: string, options: InternalModuleOptions?): string
-- 	local source = self:readFile(filename)
-- 	if Boolean.toJSBoolean(if typeof(options) == "table" then options.isInternalModule else nil) then
-- 		return source
-- 	end
-- 	local transformedFile: TransformResult | nil = self._fileTransforms:get(filename)
-- 	if Boolean.toJSBoolean(transformedFile) then
-- 		return transformedFile.code
-- 	end
-- 	transformedFile = self._scriptTransformer:transform(filename, self:_getFullTransformationOptions(options), source)
-- 	self._fileTransforms:set(
-- 		filename,
-- 		Object.assign({}, transformedFile, { wrapperLength = self:constructModuleWrapperStart().length })
-- 	)
-- 	if Boolean.toJSBoolean(transformedFile.sourceMapPath) then
-- 		self._sourceMapRegistry:set(filename, transformedFile.sourceMapPath)
-- 	end
-- 	return transformedFile.code
-- end
-- function Runtime_private:transformFileAsync(filename: string, options: InternalModuleOptions?): Promise<string>
-- 	return Promise.resolve():andThen(function()
-- 		local source = self:readFile(filename)
-- 		if Boolean.toJSBoolean(if typeof(options) == "table" then options.isInternalModule else nil) then
-- 			return source
-- 		end
-- 		local transformedFile: TransformResult | nil = self._fileTransforms:get(filename)
-- 		if Boolean.toJSBoolean(transformedFile) then
-- 			return transformedFile.code
-- 		end
-- 		transformedFile = self._scriptTransformer
-- 			:transformAsync(filename, self:_getFullTransformationOptions(options), source)
-- 			:expect()
-- 		self._fileTransforms:set(filename, Object.assign({}, transformedFile, { wrapperLength = 0 }))
-- 		if Boolean.toJSBoolean(transformedFile.sourceMapPath) then
-- 			self._sourceMapRegistry:set(filename, transformedFile.sourceMapPath)
-- 		end
-- 		return transformedFile.code
-- 	end)
-- end
-- function Runtime_private:createScriptFromCode(scriptSource: string, filename: string)
-- 	do --[[ ROBLOX COMMENT: try-catch block conversion ]]
-- 		local ok, result, hasReturned = xpcall(function()
-- 			local scriptFilename = if Boolean.toJSBoolean(self._resolver:isCoreModule(filename))
-- 				then ("jest-nodejs-core-%s"):format(tostring(filename))
-- 				else filename
-- 			return Script.new(self:wrapCodeInModuleWrapper(scriptSource), {
-- 				displayErrors = true,
-- 				filename = scriptFilename,
-- 				-- @ts-expect-error: Experimental ESM API
-- 				importModuleDynamically = function(specifier: string)
-- 					return Promise.resolve():andThen(function()
-- 						invariant(
-- 							runtimeSupportsVmModules,
-- 							"You need to run with a version of node that supports ES Modules in the VM API. See https://jestjs.io/docs/ecmascript-modules"
-- 						)
-- 						local context = if self._environment.getVmContext ~= nil
-- 							then self._environment.getVmContext()
-- 							else nil
-- 						invariant(context, "Test environment has been torn down")
-- 						local module = self:resolveModule(specifier, scriptFilename, context):expect()
-- 						return self:linkAndEvaluateModule(module)
-- 					end)
-- 				end,
-- 			}),
-- 				true
-- 		end, function(e: any)
-- 			error(handlePotentialSyntaxError(e))
-- 		end)
-- 		if hasReturned then
-- 			return result
-- 		end
-- 	end
-- end
-- function Runtime_private:_requireCoreModule(moduleName: ModuleScript, supportPrefix: boolean)
-- 	local moduleWithoutNodePrefix = if Boolean.toJSBoolean(
-- 			if Boolean.toJSBoolean(supportPrefix) then moduleName:startsWith("node:") else supportPrefix
-- 		)
-- 		then Array.slice(moduleName, ("node:").length) --[[ ROBLOX CHECK: check if 'moduleName' is an Array ]]
-- 		else moduleName
-- 	if moduleWithoutNodePrefix == "process" then
-- 		return self._environment.global.process
-- 	end
-- 	if moduleWithoutNodePrefix == "module" then
-- 		return self:_getMockedNativeModule()
-- 	end
-- 	return require_(moduleWithoutNodePrefix)
-- end
-- function Runtime_private:_importCoreModule(moduleName: ModuleScript, context: VMContext)
-- 	local required = self:_requireCoreModule(moduleName, supportsNodeColonModulePrefixInImport)
-- 	local module = SyntheticModule.new(
-- 		Array.concat({}, { "default" }, Array.spread(Object.keys(required))),
-- 		function()
-- 			-- @ts-expect-error: TS doesn't know what `this` is
-- 			self:setExport("default", required)
-- 			Array.forEach(Object.entries(required), function(ref0)
-- 				local key, value = table.unpack(ref0, 1, 2)
-- 				-- @ts-expect-error: TS doesn't know what `this` is
-- 				self:setExport(key, value)
-- 			end) --[[ ROBLOX CHECK: check if 'Object.entries(required)' is an Array ]]
-- 		end, -- should identifier be `node://${moduleName}`?
-- 		{ context = context, identifier = moduleName }
-- 	)
-- 	return evaluateSyntheticModule(module)
-- end
-- function Runtime_private:_getMockedNativeModule(
-- ): typeof(__unhandledIdentifier__ --[[ ROBLOX TODO: Unhandled node for type: TSQualifiedName ]] --[[ nativeModule.Module ]])
-- 	if Boolean.toJSBoolean(self._moduleImplementation) then
-- 		return self._moduleImplementation
-- 	end
-- 	local function createRequire(modulePath: string | URL)
-- 		local filename = if typeof(modulePath) == "string"
-- 			then if Boolean.toJSBoolean(modulePath:startsWith("file:///"))
-- 				then fileURLToPath(URL.new(modulePath))
-- 				else modulePath
-- 			else fileURLToPath(modulePath)
-- 		if not Boolean.toJSBoolean(path:isAbsolute(filename)) then
-- 			local error_ = TypeError.new(
-- 				("The argument 'filename' must be a file URL object, file URL string, or absolute path string. Received '%s'"):format(
-- 					tostring(filename)
-- 				)
-- 			) -- @ts-expect-error
-- 			error_.code = "ERR_INVALID_ARG_TYPE"
-- 			error(error_)
-- 		end
-- 		return self:_createRequireImplementation({
-- 			children = {},
-- 			exports = {},
-- 			filename = filename,
-- 			id = filename,
-- 			loaded = false,
-- 			path = path:dirname(filename),
-- 		})
-- 	end -- should we implement the class ourselves?
-- 	type Module = {} --[[ ROBLOX comment: Unhandled superclass type: LuaMemberExpression ]]
-- 	type Module_statics = { new: () -> Module }
-- 	local Module = (setmetatable({}, { __index = nativeModule.Module }) :: any) :: Module & Module_statics;
-- 	(Module :: any).__index = Module
-- 	function Module.new(): Module
-- 		local self = setmetatable({}, Module) --[[ ROBLOX TODO: super constructor may be used ]]
-- 		return (self :: any) :: Module
-- 	end
-- 	Array.forEach(Object.entries(nativeModule.Module), function(ref0)
-- 		local key, value = table.unpack(ref0, 1, 2)
-- 		-- @ts-expect-error
-- 		Module[tostring(key)] = value
-- 	end) --[[ ROBLOX CHECK: check if 'Object.entries(nativeModule.Module)' is an Array ]]
-- 	Module.Module = Module
-- 	if Array.indexOf(Object.keys(nativeModule), "createRequire") ~= -1 then
-- 		Module.createRequire = createRequire
-- 	end
-- 	if Array.indexOf(Object.keys(nativeModule), "createRequireFromPath") ~= -1 then
-- 		Module.createRequireFromPath = function(self: any, filename: string | URL)
-- 			if typeof(filename) ~= "string" then
-- 				local error_ = TypeError.new(
-- 					("The argument 'filename' must be string. Received '%s'.%s"):format(
-- 						tostring(filename),
-- 						if instanceof(filename, URL) then " Use createRequire for URL filename." else ""
-- 					)
-- 				) -- @ts-expect-error
-- 				error_.code = "ERR_INVALID_ARG_TYPE"
-- 				error(error_)
-- 			end
-- 			return createRequire(filename)
-- 		end
-- 	end
-- 	if Array.indexOf(Object.keys(nativeModule), "syncBuiltinESMExports") ~= -1 then
-- 		-- cast since TS seems very confused about whether it exists or not
-- 		(Module :: any).syncBuiltinESMExports = function(self: any) end
-- 	end
-- 	self._moduleImplementation = Module
-- 	return Module
-- end
-- function Runtime_private:_generateMock(from: Config_Path, moduleName: ModuleScript)
-- 	local ref = self._resolver:resolveStubModuleName(from, moduleName)
-- 	local modulePath = Boolean.toJSBoolean(ref) and ref
-- 		or self:_resolveModule(from, moduleName, { conditions = self.cjsConditions })
-- 	if not Boolean.toJSBoolean(self._mockMetaDataCache:has(modulePath)) then
-- 		-- This allows us to handle circular dependencies while generating an
-- 		-- automock
-- 		local refArg0 = modulePath
-- 		local ref = self._moduleMocker:getMetadata({})
-- 		self._mockMetaDataCache:set(refArg0, Boolean.toJSBoolean(ref) and ref or {}) -- In order to avoid it being possible for automocking to potentially
-- 		-- cause side-effects within the module environment, we need to execute
-- 		-- the module in isolation. This could cause issues if the module being
-- 		-- mocked has calls into side-effectful APIs on another module.
-- 		local origMockRegistry = self._mockRegistry
-- 		local origModuleRegistry = self._moduleRegistry
-- 		self._mockRegistry = Map.new()
-- 		self._moduleRegistry = Map.new()
-- 		local moduleExports = self:requireModule(from, moduleName) -- Restore the "real" module/mock registries
-- 		self._mockRegistry = origMockRegistry
-- 		self._moduleRegistry = origModuleRegistry
-- 		local mockMetadata = self._moduleMocker:getMetadata(moduleExports)
-- 		if
-- 			mockMetadata == nil --[[ ROBLOX CHECK: loose equality used upstream ]]
-- 		then
-- 			error(
-- 				Error.new(
-- 					("Failed to get mock metadata: %s\n\n"):format(tostring(modulePath))
-- 						.. "See: https://jestjs.io/docs/manual-mocks#content"
-- 				)
-- 			)
-- 		end
-- 		self._mockMetaDataCache:set(modulePath, mockMetadata)
-- 	end
-- 	return self._moduleMocker:generateFromMetadata( -- added above if missing
-- 		self._mockMetaDataCache:get(modulePath) :: any
-- 	)
-- end
-- ROBLOX deviation END
function Runtime_private:_shouldMock(
	-- ROBLOX deviation: accept ModuleScript instead of string
	from: ModuleScript,
	moduleName: ModuleScript,
	explicitShouldMock: Map<ModuleScript, boolean>,
	-- ROBLOX deviation END
	options: ResolveModuleConfig
): boolean
	-- ROBLOX deviation START: using module script instead of string moduleName & key is moduleId since path is not available
	-- local moduleID = self._resolver:getModuleID(self._virtualMocks, from, moduleName, options)
	-- local key = from + path.delimiter + moduleID
	local moduleID = moduleName
	-- ROBLOX deviation END
	if explicitShouldMock:has(moduleID) then
		-- guaranteed by `has` above
		-- ROBLOX deviation START: cast as boolean
		-- return explicitShouldMock:get(moduleID) :: any
		return explicitShouldMock:get(moduleID) :: boolean
		-- ROBLOX deviation END
	end
	if
		-- ROBLOX deviation START: isCoreModule is not available in luau - nodeJS specific
		-- Boolean.toJSBoolean((function()
		-- 	local ref = not Boolean.toJSBoolean(self._shouldAutoMock) or self._resolver:isCoreModule(moduleName)
		-- 	return Boolean.toJSBoolean(ref) and ref or self._shouldUnmockTransitiveDependenciesCache:get(key)
		-- end)())
		not self._shouldAutoMock
		-- ROBLOX deviation END
	then
		return false
	end
	if self._shouldMockModuleCache:has(moduleID) then
		-- guaranteed by `has` above
		-- ROBLOX deviation START: cast as boolean
		-- return self._shouldMockModuleCache:get(moduleID) :: any
		return self._shouldMockModuleCache:get(moduleID) :: boolean
		-- ROBLOX deviation END
	end

	-- ROBLOX deviation START: skipped
	-- local modulePath
	-- do --[[ ROBLOX COMMENT: try-catch block conversion ]]
	-- 	local ok, result, hasReturned = xpcall(function()
	-- 		modulePath = self:_resolveModule(from, moduleName, options)
	-- 	end, function(e: unknown)
	-- 		local manualMock = self._resolver:getMockModule(from, moduleName)
	-- 		if Boolean.toJSBoolean(manualMock) then
	-- 			self._shouldMockModuleCache:set(moduleID, true)
	-- 			return true
	-- 		end
	-- 		error(e)
	-- 	end)
	-- 	if hasReturned then
	-- 		return result
	-- 	end
	-- end
	-- if
	-- 	Boolean.toJSBoolean(
	-- 		if Boolean.toJSBoolean(self._unmockList) then self._unmockList:test(modulePath) else self._unmockList
	-- 	)
	-- then
	-- 	self._shouldMockModuleCache:set(moduleID, false)
	-- 	return false
	-- end -- transitive unmocking for package managers that store flat packages (npm3)
	-- local currentModuleID = self._resolver:getModuleID(self._virtualMocks, from, nil, options)
	-- if
	-- 	Boolean.toJSBoolean(self._transitiveShouldMock:get(currentModuleID) == false or (function()
	-- 		local ref = Array.includes(from, NODE_MODULES) --[[ ROBLOX CHECK: check if 'from' is an Array ]]
	-- 		local ref = if Boolean.toJSBoolean(ref)
	-- 			then Array.includes(modulePath, NODE_MODULES) --[[ ROBLOX CHECK: check if 'modulePath' is an Array ]]
	-- 			else ref
	-- 		return if Boolean.toJSBoolean(ref)
	-- 			then (function()
	-- 				local ref = if Boolean.toJSBoolean(self._unmockList)
	-- 					then self._unmockList:test(from)
	-- 					else self._unmockList
	-- 				return Boolean.toJSBoolean(ref) and ref or explicitShouldMock:get(currentModuleID) == false
	-- 			end)()
	-- 			else ref
	-- 	end)())
	-- then
	-- 	self._transitiveShouldMock:set(moduleID, false)
	-- 	self._shouldUnmockTransitiveDependenciesCache:set(key, true)
	-- 	return false
	-- end
	-- self._shouldMockModuleCache:set(moduleID, true)
	-- ROBLOX deviation END
	return true
end
-- ROBLOX deviation START: skipped
-- function Runtime_private:_createRequireImplementation(from: InitialModule, options: InternalModuleOptions?): NodeRequire
-- 	local function resolve(moduleName: ModuleScript, resolveOptions: ResolveOptions?)
-- 		local resolved = self:_requireResolve(from.filename, moduleName, resolveOptions)
-- 		if
-- 			Boolean.toJSBoolean((function()
-- 				local ref = if typeof(resolveOptions) == "table"
-- 					then resolveOptions[JEST_RESOLVE_OUTSIDE_VM_OPTION]
-- 					else nil
-- 				return if Boolean.toJSBoolean(ref)
-- 					then if typeof(options) == "table" then options.isInternalModule else nil
-- 					else ref
-- 			end)())
-- 		then
-- 			return createOutsideJestVmPath(resolved)
-- 		end
-- 		return resolved
-- 	end
-- 	resolve.paths = function(_self: any, moduleName: ModuleScript)
-- 		return self:_requireResolvePaths(from.filename, moduleName)
-- 	end
-- 	local moduleRequire = if Boolean.toJSBoolean(if typeof(options) == "table" then options.isInternalModule else nil)
-- 		then function(moduleName: ModuleScript)
-- 			return self:requireInternalModule(from.filename, moduleName)
-- 		end
-- 		else self.requireModuleOrMock:bind(self, from.filename) :: NodeRequire
-- 	moduleRequire.extensions = Object.create(nil)
-- 	moduleRequire.resolve = resolve
-- 	moduleRequire.cache = (function()
-- 		-- TODO: consider warning somehow that this does nothing. We should support deletions, anyways
-- 		local function notPermittedMethod()
-- 			return true
-- 		end
-- 		return Proxy.new(Object.create(nil), {
-- 			defineProperty = notPermittedMethod,
-- 			deleteProperty = notPermittedMethod,
-- 			get = function(_target, key)
-- 				return if typeof(key) == "string" then self._moduleRegistry:get(key) else nil
-- 			end,
-- 			getOwnPropertyDescriptor = function(self)
-- 				return { configurable = true, enumerable = true }
-- 			end,
-- 			has = function(_target, key)
-- 				return typeof(key) == "string" and self._moduleRegistry:has(key)
-- 			end,
-- 			ownKeys = function()
-- 				return Array.from(self._moduleRegistry:keys())
-- 			end,
-- 			set = notPermittedMethod,
-- 		})
-- 	end)()
-- 	Object.defineProperty(moduleRequire, "main", { enumerable = true, value = self._mainModule })
-- 	return moduleRequire
-- end
-- ROBLOX deviation END
-- ROBLOX deviation START: using ModuleScript instead of Config_Path
-- function Runtime_private:_createJestObjectFor(from: Config_Path): Jest
function Runtime_private:_createJestObjectFor(from: ModuleScript): Jest
	-- ROBLOX deviation END
	-- ROBLOX deviation START: additional predefined variables
	local setMockFactory
	local jestObject: Jest
	-- ROBLOX deviation END
	-- ROBLOX deviation START: not implemented yet
	-- local function disableAutomock()
	-- 	self._shouldAutoMock = false
	-- 	return jestObject
	-- end
	-- local function enableAutomock()
	-- 	self._shouldAutoMock = true
	-- 	return jestObject
	-- end
	-- ROBLOX deviation END
	-- ROBLOX deviation START: using ModuleScript instead of string
	local function unmock(moduleName: ModuleScript)
		-- ROBLOX deviation END
		-- ROBLOX deviation START: using module script instead of string moduleName
		-- local moduleID =
		-- 	self._resolver:getModuleID(self._virtualMocks, from, moduleName, { conditions = self.cjsConditions })
		local moduleID = moduleName
		-- ROBLOX deviation END
		self._explicitShouldMock:set(moduleID, false)
		return jestObject
	end
	-- ROBLOX deviation START: not implemented yet
	-- local function deepUnmock(moduleName: ModuleScript)
	-- 	local moduleID =
	-- 		self._resolver:getModuleID(self._virtualMocks, from, moduleName, { conditions = self.cjsConditions })
	-- 	self._explicitShouldMock:set(moduleID, false)
	-- 	self._transitiveShouldMock:set(moduleID, false)
	-- 	return jestObject
	-- end
	-- ROBLOX deviation END
	-- ROBLOX deviation START: using ModuleScript instead of string
	-- local mock: typeof((({} :: any) :: Jest).mock)
	-- function mock(moduleName, mockFactory, options)
	local function mock(moduleName: ModuleScript, mockFactory, options)
		-- ROBLOX deviation END
		if mockFactory ~= nil then
			return setMockFactory(moduleName, mockFactory, options)
		end
		-- ROBLOX deviation START:
		-- local moduleID =
		-- 	self._resolver:getModuleID(self._virtualMocks, from, moduleName, { conditions = self.cjsConditions })
		local moduleID = moduleName
		-- ROBLOX deviation END
		self._explicitShouldMock:set(moduleID, true)
		return jestObject
	end
	-- ROBLOX deviation START: using ModuleScript instead of string and predefine function
	function setMockFactory(moduleName: ModuleScript, mockFactory: () -> unknown, options: { virtual: boolean? }?)
		-- ROBLOX deviation END
		self:setMock(from, moduleName, mockFactory, options)
		return jestObject
	end
	-- ROBLOX deviation START: not implemented yet
	-- local mockModule: typeof((({} :: any) :: Jest).unstable_mockModule)
	-- function mockModule(moduleName, mockFactory, options)
	-- 	if typeof(mockFactory) ~= "function" then
	-- 		error(Error.new("`unstable_mockModule` must be passed a mock factory"))
	-- 	end
	-- 	self:setModuleMock(from, moduleName, mockFactory, options)
	-- 	return jestObject
	-- end
	-- ROBLOX deviation END
	local function clearAllMocks()
		self:clearAllMocks()
		return jestObject
	end
	local function resetAllMocks()
		self:resetAllMocks()
		return jestObject
	end
	local function restoreAllMocks()
		self:restoreAllMocks()
		return jestObject
	end
	local function _getFakeTimers()
		-- ROBLOX deviation START: no legacy timers
		-- if
		-- 	Boolean.toJSBoolean(
		-- 		Boolean.toJSBoolean(self.isTornDown) and self.isTornDown
		-- 			or not Boolean.toJSBoolean(
		-- 				Boolean.toJSBoolean(self._environment.fakeTimers) and self._environment.fakeTimers
		-- 					or self._environment.fakeTimersModern
		-- 			)
		-- 	)
		-- then
		-- 	self:_logFormattedReferenceError(
		-- 		"You are trying to access a property or method of the Jest environment after it has been torn down."
		-- 	)
		-- 	process.exitCode = 1
		-- end
		-- return self._fakeTimersImplementation :: any
		return self._fakeTimersImplementation
		-- ROBLOX deviation END
	end
	-- ROBLOX deviation START: simplify function declaration
	-- local useFakeTimers: typeof((({} :: any) :: Jest).useFakeTimers)
	-- function useFakeTimers(type__: string?)
	local function useFakeTimers(): Jest
		-- ROBLOX deviation END
		-- ROBLOX deviation START: no legacy timers
		-- local type_: string = if type__ ~= nil then type__ else "modern"
		-- if type_ == "legacy" then
		-- 	self._fakeTimersImplementation = self._environment.fakeTimers
		-- else
		-- 	self._fakeTimersImplementation = self._environment.fakeTimersModern
		-- end
		-- (self._fakeTimersImplementation :: any):useFakeTimers()
		self._fakeTimersImplementation:useFakeTimers()
		-- ROBLOX deviation END
		return jestObject
	end
	local function useRealTimers()
		_getFakeTimers():useRealTimers()
		return jestObject
	end
	local function resetModules()
		self:resetModules()
		return jestObject
	end
	local function isolateModules(fn: () -> ())
		self:isolateModules(fn)
		return jestObject
	end
	-- ROBLOX deviation START: no built-in bind support in Luau
	local fn = function(...)
		return self._moduleMocker:fn(...)
	end
	local spyOn = function(...)
		return self._moduleMocker:spyOn(...)
	end

	-- local fn = self._moduleMocker.fn:bind(self._moduleMocker)
	-- local spyOn = self._moduleMocker.spyOn:bind(self._moduleMocker)
	-- ROBLOX deviation END
	-- ROBLOX deviation START: not implemented yet
	-- local ref = if typeof(self._moduleMocker.mocked) == "table" then self._moduleMocker.mocked.bind else nil
	-- local ref = if ref ~= nil then ref(self._moduleMocker) else nil
	-- local mocked = if ref ~= nil
	-- 	then ref
	-- 	else function()
	-- 		error(Error.new("Your test environment does not support `mocked`, please update it."))
	-- 	end
	-- local function setTimeout(timeout: number)
	-- 	if Boolean.toJSBoolean(self._environment.global.jasmine) then
	-- 		self._environment.global.jasmine._DEFAULT_TIMEOUT_INTERVAL = timeout
	-- 	else
	-- 		-- @ts-expect-error: https://github.com/Microsoft/TypeScript/issues/24587
	-- 		self._environment.global[tostring(testTimeoutSymbol)] = timeout
	-- 	end
	-- 	return jestObject
	-- end
	-- local function retryTimes(numTestRetries: number)
	-- 	-- @ts-expect-error: https://github.com/Microsoft/TypeScript/issues/24587
	-- 	self._environment.global[tostring(retryTimesSymbol)] = numTestRetries
	-- 	return jestObject
	-- end
	-- ROBLOX deviation END
	-- ROBLOX deviation START: variable predefined
	-- local jestObject: Jest = {
	jestObject = {
		-- ROBLOX deviation end
		advanceTimersByTime = function(msToRun: number)
			return _getFakeTimers():advanceTimersByTime(msToRun)
		end,
		advanceTimersToNextTimer = function(steps: number?)
			return _getFakeTimers():advanceTimersToNextTimer(steps)
		end,
		-- ROBLOX deviation START: additional method to allow mocking of game-engine timer behavior
		getEngineFrameTime = function()
			return _getFakeTimers():getEngineFrameTime()
		end,
		setEngineFrameTime = function(frameTimeMs: number)
			return _getFakeTimers():setEngineFrameTime(frameTimeMs)
		end,
		-- ROBLOX deviation END
		-- ROBLOX TODO START: not implemented yet
		-- autoMockOff = disableAutomock,
		-- autoMockOn = enableAutomock,
		-- ROBLOX TODO END
		clearAllMocks = clearAllMocks,
		clearAllTimers = function()
			return _getFakeTimers():clearAllTimers()
		end,
		-- ROBLOX TODO START: not implemented yet
		-- createMockFromModule = function(moduleName: ModuleScript)
		-- 	return self:_generateMock(from, moduleName)
		-- end,
		-- deepUnmock = deepUnmock,
		-- disableAutomock = disableAutomock,
		-- ROBLOX deviation END
		doMock = mock,
		dontMock = unmock,
		-- ROBLOX TODO START: not implemented yet
		-- enableAutomock = enableAutomock,
		-- ROBLOX TODO END
		fn = fn,
		-- ROBLOX TODO START: not implemented yet
		-- genMockFromModule = function(moduleName: ModuleScript)
		-- 	return self:_generateMock(from, moduleName)
		-- end,
		-- ROBLOX TODO END
		getRealSystemTime = function()
			local fakeTimers = _getFakeTimers()
			if fakeTimers == self._environment.fakeTimersModern then
				return fakeTimers:getRealSystemTime()
			else
				error(TypeError.new("getRealSystemTime is not available when not using modern timers"))
			end
		end,
		getTimerCount = function()
			return _getFakeTimers():getTimerCount()
		end,
		isMockFunction = self._moduleMocker.isMockFunction,
		isolateModules = isolateModules,
		mock = mock,
		-- ROBLOX deviation START: not implemented yet
		-- mocked = mocked,
		-- ROBLOX deviation END
		-- ROBLOX deviation START: issue roblox/js-to-lua #686 - no built-in bind support in Luau
		-- requireActual = self.requireActual:bind(self, from),
		requireActual = function(moduleName)
			return self:requireActual(from, moduleName)
		end,
		-- ROBLOX deviation END
		-- ROBLOX deviation START: not implemented yet
		-- requireMock = self.requireMock:bind(self, from),
		-- ROBLOX deviation END
		resetAllMocks = resetAllMocks,
		resetModules = resetModules,
		restoreAllMocks = restoreAllMocks,
		-- ROBLOX deviation START: not implemented yet
		-- retryTimes = retryTimes,
		-- runAllImmediates = function()
		-- 	local fakeTimers = _getFakeTimers()
		-- 	if fakeTimers == self._environment.fakeTimers then
		-- 		fakeTimers:runAllImmediates()
		-- 	else
		-- 		error(TypeError.new("runAllImmediates is not available when using modern timers"))
		-- 	end
		-- end,
		-- ROBLOX deviation END
		runAllTicks = function()
			return _getFakeTimers():runAllTicks()
		end,
		runAllTimers = function()
			return _getFakeTimers():runAllTimers()
		end,
		runOnlyPendingTimers = function()
			return _getFakeTimers():runOnlyPendingTimers()
		end,
		-- ROBLOX deviation START: additional property
		-- ROBLOX TODO: remove when we don't need to manually inject fake timers into tests
		jestTimers = _getFakeTimers(),
		-- ROBLOX deviation END
		-- ROBLOX deviation START: using ModuleScript instead of string moduleName & virtual mocks not supported
		setMock = function(moduleName: ModuleScript, mock: unknown)
			-- ROBLOX deviation END
			return setMockFactory(moduleName, function()
				return mock
			end)
		end,
		setSystemTime = function(now: (number | DateTime)?)
			local fakeTimers = _getFakeTimers()
			if fakeTimers == self._environment.fakeTimersModern then
				fakeTimers:setSystemTime(now)
			else
				error(TypeError.new("setSystemTime is not available when not using modern timers"))
			end
		end,
		-- ROBLOX TODO START: not implemented yet
		-- setTimeout = setTimeout,
		-- ROBLOX TODO END
		spyOn = spyOn,
		unmock = unmock,
		-- ROBLOX TODO START: not implemented yet
		-- unstable_mockModule = mockModule,
		-- ROBLOX TODO END
		useFakeTimers = useFakeTimers,
		useRealTimers = useRealTimers,
	}
	-- ROBLOX deviation START: explicitly casting jestObject
	-- return jestObject
	return jestObject :: Jest
	-- ROBLOX deviation END
end
-- ROBLOX deviation START: skipped
-- function Runtime_private:_logFormattedReferenceError(errorMessage: string)
-- 	local testPath = if Boolean.toJSBoolean(self._testPath)
-- 		then (" From %s."):format(tostring(slash(path:relative(self._config.rootDir, self._testPath))))
-- 		else ""
-- 	local originalStack = Array.join(
-- 		Array.filter(
-- 			(ReferenceError.new(("%s%s"):format(tostring(errorMessage), tostring(testPath))).stack :: any):split("\n"), -- Remove this file from the stack (jest-message-utils will keep one line)
-- 			function(line)
-- 				return Array.indexOf(line, __filename) --[[ ROBLOX CHECK: check if 'line' is an Array ]]
-- 					== -1
-- 			end
-- 		), --[[ ROBLOX CHECK: check if 'new ReferenceError(`${errorMessage}${testPath}`).stack!.split('\n')' is an Array ]]
-- 		"\n"
-- 	)
-- 	local message, stack
-- 	do
-- 		local ref = separateMessageFromStack(originalStack)
-- 		message, stack = ref.message, ref.stack
-- 	end
-- 	console.error(
-- 		("\n%s\n"):format(tostring(message))
-- 			.. tostring(formatStackTrace(stack, self._config, { noStackTrace = false }))
-- 	)
-- end
-- function Runtime_private:wrapCodeInModuleWrapper(content: string)
-- 	return tostring(self:constructModuleWrapperStart() + content) .. "\n}});"
-- end
-- function Runtime_private:constructModuleWrapperStart()
-- 	local args = self:constructInjectedModuleParameters()
-- 	return '({"'
-- 		.. tostring(EVAL_RESULT_VARIABLE)
-- 		.. ('":function(%s){'):format(tostring(Array.join(args, ",") --[[ ROBLOX CHECK: check if 'args' is an Array ]]))
-- end
-- function Runtime_private:constructInjectedModuleParameters(): Array<string>
-- 	return Array.filter(
-- 		Array.concat({}, {
-- 			"module",
-- 			"exports",
-- 			"require",
-- 			"__dirname",
-- 			"__filename",
-- 			if Boolean.toJSBoolean(self._config.injectGlobals) then "jest" else nil,
-- 		}, Array.spread(self._config.extraGlobals)),
-- 		notEmpty
-- 	)
-- end
-- function Runtime_private:handleExecutionError(e: Error, module: Module): never
-- 	local moduleNotFoundError = Resolver:tryCastModuleNotFoundError(e)
-- 	if Boolean.toJSBoolean(moduleNotFoundError) then
-- 		if not Boolean.toJSBoolean(moduleNotFoundError.requireStack) then
-- 			moduleNotFoundError.requireStack = { Boolean.toJSBoolean(module.filename) and module.filename or module.id }
-- 			do
-- 				local cursor = module.parent
-- 				while cursor do
-- 					table.insert(
-- 						moduleNotFoundError.requireStack,
-- 						Boolean.toJSBoolean(cursor.filename) and cursor.filename or cursor.id
-- 					) --[[ ROBLOX CHECK: check if 'moduleNotFoundError.requireStack' is an Array ]]
-- 					cursor = cursor.parent
-- 				end
-- 			end
-- 			moduleNotFoundError:buildMessage(self._config.rootDir)
-- 		end
-- 		error(moduleNotFoundError)
-- 	end
-- 	error(e)
-- end
-- function Runtime_private:getGlobalsForCjs(from: Config_Path): JestGlobalsWithJest
-- 	local jest = self.jestObjectCaches:get(from)
-- 	invariant(jest, "There should always be a Jest object already")
-- 	return Object.assign({}, self:getGlobalsFromEnvironment(), { jest = jest })
-- end
-- function Runtime_private:getGlobalsForEsm(from: Config_Path, context: VMContext): Promise<VMModule>
-- 	local jest = self.jestObjectCaches:get(from)
-- 	if not Boolean.toJSBoolean(jest) then
-- 		jest = self:_createJestObjectFor(from)
-- 		self.jestObjectCaches:set(from, jest)
-- 	end
-- 	local globals: JestGlobalsWithJest = Object.assign({}, self:getGlobalsFromEnvironment(), { jest = jest })
-- 	local module = SyntheticModule.new(Object.keys(globals), function()
-- 		Array.forEach(Object.entries(globals), function(ref0)
-- 			local key, value = table.unpack(ref0, 1, 2)
-- 			-- @ts-expect-error: TS doesn't know what `this` is
-- 			self:setExport(key, value)
-- 		end) --[[ ROBLOX CHECK: check if 'Object.entries(globals)' is an Array ]]
-- 	end, { context = context, identifier = "@jest/globals" })
-- 	return evaluateSyntheticModule(module)
-- end
-- ROBLOX deviation END
function Runtime_private:getGlobalsFromEnvironment(): JestGlobals
	if self.jestGlobals then
		-- ROBLOX deviation START: using table.clone for better performance
		-- return Object.assign({}, self.jestGlobals)
		return table.clone(self.jestGlobals)
		-- ROBLOX deviation END
	end

	-- ROBLOX deviation START: additional extracted variables
	local jestSnapshot = self:requireModuleOrMock(Packages.JestSnapshot)
	local jestExpect = self:requireModuleOrMock(Packages.Expect)
	-- ROBLOX deviation END

	return {
		-- ROBLOX deviation START: skipped for now
		-- afterAll = self._environment.global.afterAll,
		-- afterEach = self._environment.global.afterEach,
		-- beforeAll = self._environment.global.beforeAll,
		-- beforeEach = self._environment.global.beforeEach,
		-- describe = self._environment.global.describe,
		-- ROBLOX deviation END
		-- ROBLOX deviation START: use extracted variable
		-- expect = self._environment.global.expect :: any,
		expect = jestExpect,
		-- ROBLOX deviation END
		-- ROBLOX deviation START: additional property
		expectExtended = jestExpect,
		-- ROBLOX deviation END
		-- ROBLOX deviation START: skipped for now
		-- fdescribe = self._environment.global.fdescribe,
		-- fit = self._environment.global.fit,
		-- it = self._environment.global.it,
		-- test = self._environment.global.test,
		-- xdescribe = self._environment.global.xdescribe,
		-- xit = self._environment.global.xit,
		-- xtest = self._environment.global.xtest,
		-- ROBLOX deviation END
		-- ROBLOX deviation START: additional property
		jestSnapshot = {
			toMatchSnapshot = jestSnapshot.toMatchSnapshot,
			toThrowErrorMatchingSnapshot = jestSnapshot.toThrowErrorMatchingSnapshot,
		},
		-- ROBLOX deviation END
	}
end
-- ROBLOX deviation START: skipped
-- function Runtime_private:readFile(filename: Config_Path): string
-- 	local source = self._cacheFS:get(filename)
-- 	if not Boolean.toJSBoolean(source) then
-- 		source = fs:readFileSync(filename, "utf8")
-- 		self._cacheFS:set(filename, source)
-- 	end
-- 	return source
-- end
-- ROBLOX deviation END
function Runtime_private:setGlobalsForRuntime(globals: JestGlobals): ()
	self.jestGlobals = globals
end
-- ROBLOX deviation START: skipped
-- exports.default = Runtime
-- local function invariant(
-- 	condition: unknown,
-- 	message: string?
-- ): boolean --[[ ROBLOX FIXME: change to TSTypePredicate equivalent if supported ]] --[[ asserts condition ]]
-- 	if not Boolean.toJSBoolean(condition) then
-- 		error(Error.new(message))
-- 	end
-- end
-- local function notEmpty<T>(
-- 	value: T | nil --[[ ROBLOX CHECK: verify if `null` wasn't used differently than `undefined` ]] | nil
-- ): boolean --[[ ROBLOX FIXME: change to TSTypePredicate equivalent if supported ]] --[[ value is T ]]
-- 	return value ~= nil and value ~= nil
-- end
-- local function evaluateSyntheticModule(module: SyntheticModule)
-- 	return Promise.resolve():andThen(function()
-- 		module
-- 			:link(function()
-- 				error(Error.new("This should never happen"))
-- 			end)
-- 			:expect()
-- 		module:evaluate():expect()
-- 		return module
-- 	end)
-- end
-- ROBLOX deviation END
-- ROBLOX deviation START: returning Runtime directly instead of exports.default
-- return exports
return Runtime
-- ROBLOX deviation END
