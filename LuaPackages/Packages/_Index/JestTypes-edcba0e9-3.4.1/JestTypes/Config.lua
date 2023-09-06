-- ROBLOX upstream: https://github.com/facebook/jest/blob/v28.0.0/packages/jest-types/src/Config.ts
--[[*
 * Copyright (c) Facebook, Inc. and its affiliates. All Rights Reserved.
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
 ]]

local rootWorkspace = script.Parent.Parent
local LuauPolyfill = require(rootWorkspace.LuauPolyfill)
type Array<T> = LuauPolyfill.Array<T>
type Object = LuauPolyfill.Object

local RegExp = require(rootWorkspace.RegExp)
type RegExp = RegExp.RegExp

type Record<T, U> = { [T]: U }
type TemplateStringsArray = Array<string>

-- ROBLOX deviation START: Libraries/types not available
-- local chalkModule = require(rootWorkspace.chalk)
-- type ForegroundColor = chalkModule.ForegroundColor
type ForegroundColor = string

-- local istanbul_reportsModule = require(rootWorkspace["istanbul-reports"])
-- type ReportOptions = istanbul_reportsModule.ReportOptions
type ReportOptions = Object

-- local yargsModule = require(rootWorkspace.yargs)
-- type Arguments = yargsModule.Arguments
type Arguments<T> = T & Object
-- ROBLOX deviation END: Libraries/types not available

type CoverageProvider = "babel" | "v8"

export type FakeableAPI =
	"Date"
	| "hrtime"
	| "nextTick"
	| "performance"
	| "queueMicrotask"
	| "requestAnimationFrame"
	| "cancelAnimationFrame"
	| "requestIdleCallback"
	| "cancelIdleCallback"
	| "setImmediate"
	| "clearImmediate"
	| "setInterval"
	| "clearInterval"
	| "setTimeout"
	| "clearTimeout"

export type GlobalFakeTimersConfig = { --[[*
   * Whether fake timers should be enabled globally for all test files.
   *
   * @defaultValue
   * The default is `false`.
   ]]
	enableGlobally: boolean?,
}

export type FakeTimersConfig = { --[[*
   * If set to `true` all timers will be advanced automatically
   * by 20 milliseconds every 20 milliseconds. A custom time delta
   * may be provided by passing a number.
   *
   * @defaultValue
   * The default is `false`.
   ]]
	advanceTimers: (boolean | number)?,
	--[[*
   * List of names of APIs (e.g. `Date`, `nextTick()`, `setImmediate()`,
   * `setTimeout()`) that should not be faked.
   *
   * @defaultValue
   * The default is `[]`, meaning all APIs are faked.
   ]]
	doNotFake: Array<FakeableAPI>?,
	--[[*
   * Sets current system time to be used by fake timers.
   *
   * @defaultValue
   * The default is `Date.now()`.
   ]]
	now: (number | DateTime)?,
	--[[*
   * The maximum number of recursive timers that will be run when calling
   * `jest.runAllTimers()`.
   *
   * @defaultValue
   * The default is `100_000` timers.
   ]]
	timerLimit: number?,
	--[[*
   * Use the old fake timers implementation instead of one backed by
   * [`@sinonjs/fake-timers`](https://github.com/sinonjs/fake-timers).
   *
   * @defaultValue
   * The default is `false`.
   ]]
	legacyFakeTimers: false?,
}

export type LegacyFakeTimersConfig = { --[[*
   * Use the old fake timers implementation instead of one backed by
   * [`@sinonjs/fake-timers`](https://github.com/sinonjs/fake-timers).
   *
   * @defaultValue
   * The default is `false`.
   ]]
	legacyFakeTimers: true?,
}

-- ROBLOX deviation START: handle TSParenthesizedType, remove Exclude<T> and replace 'Date' with 'DateTime'
type FakeTimers = GlobalFakeTimersConfig & ((FakeTimersConfig & {
	now: DateTime?,
}) | LegacyFakeTimersConfig)
-- ROBLOX deviation STOP

type Timers = "real" | "fake" | "modern" | "legacy"

export type Path = string

export type Glob = string

export type HasteConfig = {
	--[[* Whether to hash files using SHA-1. ]]
	computeSha1: boolean?,
	--[[* The platform to use as the default, e.g. 'ios'. ]]
	defaultPlatform: (string | nil)?,
	--[[* Force use of Node's `fs` APIs rather than shelling out to `find` ]]
	forceNodeFilesystemAPI: boolean?,
	--[[*
  	 * Whether to follow symlinks when crawling for files.
  	 *   This options cannot be used in projects which use watchman.
  	 *   Projects with `watchman` set to true will error if this option is set to true.
  	 ]]
	enableSymlinks: boolean?,
	--[[* string to a custom implementation of Haste. ]]
	hasteImplModulePath: string?,
	--[[* All platforms to target, e.g ['ios', 'android']. ]]
	platforms: Array<string>?,
	--[[* Whether to throw on error on module collision. ]]
	throwOnModuleCollision: boolean?,
	--[[* Custom HasteMap module ]]
	hasteMapModulePath: string?,
	--[[* Whether to retain all files, allowing e.g. search for tests in `node_modules`. ]]
	retainAllFiles: boolean?,
}

export type CoverageReporterName = string --[[ ROBLOX TODO: Unhandled node for type: TSTypeOperator ]] --[[ keyof ReportOptions ]]

-- ROBLOX FIXME: add default generic type <K = CoverageReporterName>
-- ROBLOX TODO: Unhandled node for type: TSConditionalType ]] --[[ K extends CoverageReporterName ? ReportOptions[K] extends never ? never : [K, Partial<ReportOptions[K]>] : never
export type CoverageReporterWithOptions<K> =
	Array<string | Object> --[[ [K, Partial<ReportOptions[K]>] ]]
	| nil

export type CoverageReporters = Array<CoverageReporterName | CoverageReporterWithOptions<CoverageReporterName>>

export type ReporterConfig = Array<string | Record<string, any>>

export type TransformerConfig = Array<string | Record<string, any>>

export type ConfigGlobals = {
	[string]: any,
}

-- This interface gets filled out when pretty-format is included
export type PrettyFormatOptions = {}

export type DefaultOptions = {
	automock: boolean,
	bail: number,
	-- ROBLOX deviation START: caching not supported
	-- cache: boolean,
	-- cacheDirectory: Path,
	-- ROBLOX deviation END
	-- ROBLOX deviation START: not supported
	-- changedFilesWithAncestor: boolean,
	-- ROBLOX deviation END
	ci: boolean,
	clearMocks: boolean,
	-- ROBLOX deviation START: not supported
	-- collectCoverage: boolean,
	-- coveragePathIgnorePatterns: Array<string>,
	-- coverageReporters: Array<CoverageReporterName>,
	-- coverageProvider: CoverageProvider,
	-- detectLeaks: boolean,
	-- detectOpenHandles: boolean,
	-- errorOnDeprecated: boolean,
	-- ROBLOX deviation END
	expand: boolean,
	-- ROBLOX deviation START: not supported
	-- extensionsToTreatAsEsm: Array<Path>,
	-- forceCoverageMatch: Array<Glob>,
	-- ROBLOX deviation END
	globals: ConfigGlobals,
	-- ROBLOX deviation START: not supported
	-- haste: HasteConfig,
	-- ROBLOX deviation END
	injectGlobals: boolean,
	listTests: boolean,
	maxConcurrency: number,
	maxWorkers: number | string,
	-- ROBLOX deviation START: not supported
	-- moduleDirectories: Array<string>,
	-- moduleFileExtensions: Array<string>,
	-- moduleNameMapper: Record<string, string | Array<string>>,
	-- modulePathIgnorePatterns: Array<string>,
	-- ROBLOX deviation END
	noStackTrace: boolean,
	-- ROBLOX deviation START: not supported
	-- notify: boolean,
	-- notifyMode: NotifyMode,
	-- ROBLOX deviation END
	passWithNoTests: boolean,
	-- ROBLOX deviation START: not supported
	-- prettierPath: string,
	-- ROBLOX deviation END
	resetMocks: boolean,
	resetModules: boolean,
	restoreMocks: boolean,
	roots: Array<string>,
	runTestsByPath: boolean,
	runner: string,
	setupFiles: Array<
		-- ROBLOX deviation START: using ModuleScript instead of Path
		ModuleScript
		-- ROBLOX deviation END
	>,
	setupFilesAfterEnv: Array<
		-- ROBLOX deviation START: using ModuleScript instead of Path
		ModuleScript
		-- ROBLOX deviation END
	>,
	skipFilter: boolean,
	slowTestThreshold: number,
	snapshotSerializers: Array<string>,
	testEnvironment: string,
	testEnvironmentOptions: Record<string, any>,
	testFailureExitCode: string | number,
	testLocationInResults: boolean,
	testMatch: Array<string>,
	testPathIgnorePatterns: Array<string>,
	testRegex: Array<string>,
	-- ROBLOX deviation START: not supported
	-- testRunner: string,
	-- testSequencer: string,
	-- testURL: string,
	-- ROBLOX deviation END
	timers: Timers,
	-- ROBLOX deviation START: not supported
	-- transformIgnorePatterns: Array<Glob>,
	-- useStderr: boolean,
	-- watch: boolean,
	-- watchPathIgnorePatterns: Array<string>,
	-- watchman: boolean,
	-- ROBLOX deviation END
}

export type DisplayName = {
	name: string,
	color: string, --[[ ROBLOX TODO: Unhandled node for type: TSTypeQuery ]] --[[ typeof ForegroundColor ]]
}

-- ROBLOX deviation: inline Required<Pick<InitialOptions, 'rootDir'>>
export type InitialOptionsWithRootDir = InitialOptions & { rootDir: Path }

-- ROBLOX deviation: inline Pick<InitialOptions & {cwd?: string}, keyof ProjectConfig>
export type InitialProjectOptions = {
	automock: boolean?,
	-- ROBLOX deviation START: not supported
	-- cache: boolean?,
	-- cacheDirectory: Path?,
	-- ROBLOX deviation END
	clearMocks: boolean?,
	-- ROBLOX deviation START: not supported
	-- coveragePathIgnorePatterns: Array<string>?,
	-- dependencyExtractor: string?,
	-- detectLeaks: boolean?,
	-- detectOpenHandles: boolean?,
	-- ROBLOX deviation END
	displayName: (string | DisplayName)?,
	-- ROBLOX deviation START: not supported
	-- extensionsToTreatAsEsm: Array<Path>?,
	-- extraGlobals: Array<string>?,
	-- ROBLOX deviation END
	filter: Path?,
	-- ROBLOX deviation START: not supported
	-- forceCoverageMatch: Array<Glob>?,
	-- globalSetup: (string | nil)?,
	-- globalTeardown: (string | nil)?,
	-- haste: HasteConfig?,
	-- ROBLOX deviation END
	injectGlobals: boolean?,
	-- ROBLOX deviation START: not supported
	-- moduleDirectories: Array<string>?,
	-- moduleFileExtensions: Array<string>?,
	-- ROBLOX deviation END
	moduleLoader: Path?,
	-- ROBLOX deviation START: not supported
	-- moduleNameMapper: { [string]: string | Array<string> }?,
	-- modulePathIgnorePatterns: Array<string>?,
	-- modulePaths: Array<string>?,
	-- prettierPath: (string | nil)?,
	-- ROBLOX deviation END
	resetMocks: boolean?,
	resetModules: boolean?,
	-- ROBLOX deviation START: not supported
	-- resolver: (Path | nil)?,
	-- ROBLOX deviation END
	restoreMocks: boolean?,
	-- ROBLOX deviation START: using Instance instead of Path
	rootDir: Instance?,
	-- ROBLOX deviation END
	roots: Array<string>?,
	runner: string?,
	setupFiles: Array<
		-- ROBLOX deviation START: using ModuleScript instead of Path
		ModuleScript
		-- ROBLOX deviation END
	>?,
	setupFilesAfterEnv: Array<
		-- ROBLOX deviation START: using ModuleScript instead of Path
		ModuleScript
		-- ROBLOX deviation END
	>?,
	skipFilter: boolean?,
	skipNodeResolution: boolean?,
	slowTestThreshold: number?,
	-- ROBLOX deviation START: not supported
	-- snapshotResolver: Path?,
	-- ROBLOX deviation END
	snapshotSerializers: Array<Path>?,
	snapshotFormat: PrettyFormatOptions?,
	testEnvironment: string?,
	testEnvironmentOptions: Record<string, any>?,
	testLocationInResults: boolean?,
	testMatch: Array<Glob>?,
	testPathIgnorePatterns: Array<string>?,
	testRegex: (string | Array<string>)?,
	-- ROBLOX deviation START: not supported
	-- testRunner: string?,
	-- testURL: string?,
	-- ROBLOX deviation END
	timers: Timers?,
	-- ROBLOX deviation START: not supported
	-- transform: { [string]: Path | TransformerConfig }?,
	-- transformIgnorePatterns: Array<Glob>?,
	-- watchPathIgnorePatterns: Array<string>?,
	-- unmockedModulePathPatterns: Array<string>?,
	-- ROBLOX deviation END
} & {
	-- ROBLOX deviation START: not supported
	-- cwd: string?
	-- ROBLOX deviation END
}

-- ROBLOX deviation: replace Partial type making all fields optional
export type InitialOptions = {
	automock: boolean?,
	bail: (boolean | number)?,
	-- ROBLOX deviation START: not supported
	-- cache: boolean?,
	-- cacheDirectory: Path?,
	-- ROBLOX deviation END
	ci: boolean?,
	clearMocks: boolean?,
	-- ROBLOX deviation START: not supported
	-- changedFilesWithAncestor: boolean?,
	-- ROBLOX deviation END
	changedSince: string?,
	-- ROBLOX deviation START: not supported
	-- collectCoverage: boolean?,
	-- collectCoverageFrom: Array<Glob>?,
	-- collectCoverageOnlyFrom: { [string]: boolean }?,
	-- coverageDirectory: string?,
	-- coveragePathIgnorePatterns: Array<string>?,
	-- coverageProvider: CoverageProvider?,
	-- coverageReporters: CoverageReporters?,
	-- coverageThreshold: CoverageThreshold?,
	-- dependencyExtractor: string?,
	-- detectLeaks: boolean?,
	-- detectOpenHandles: boolean?,
	-- ROBLOX deviation END
	displayName: (string | DisplayName)?,
	expand: boolean?,
	-- ROBLOX deviation START: not supported
	-- extensionsToTreatAsEsm: Array<Path>?,
	-- extraGlobals: Array<string>?,
	-- ROBLOX deviation END
	filter: Path?,
	findRelatedTests: boolean?,
	-- ROBLOX deviation START: not supported
	-- forceCoverageMatch: Array<Glob>?,
	-- forceExit: boolean?,
	-- ROBLOX deviation END
	json: boolean?,
	globals: ConfigGlobals?,
	-- ROBLOX deviation START: not supported
	-- globalSetup: (string | nil)?,
	-- globalTeardown: (string | nil)?,
	-- haste: HasteConfig?,
	-- ROBLOX deviation END
	injectGlobals: boolean?,
	-- ROBLOX deviation START: not supported
	-- reporters: Array<string | ReporterConfig>?,
	-- logHeapUsage: boolean?,
	-- lastCommit: boolean?,
	-- ROBLOX deviation END
	listTests: boolean?,
	maxConcurrency: number?,
	maxWorkers: (number | string)?,
	-- ROBLOX deviation START: not supported
	-- moduleDirectories: Array<string>?,
	-- moduleFileExtensions: Array<string>?,
	-- ROBLOX deviation END
	moduleLoader: Path?,
	-- ROBLOX deviation START: not supported
	-- moduleNameMapper: { [string]: string | Array<string> }?,
	-- modulePathIgnorePatterns: Array<string>?,
	-- modulePaths: Array<string>?,
	-- ROBLOX deviation END
	id: string?,
	noStackTrace: boolean?,
	-- ROBLOX deviation START: not supported
	-- notify: boolean?,
	-- notifyMode: string?,
	-- onlyChanged: boolean?,
	-- onlyFailures: boolean?,
	-- ROBLOX deviation END
	outputFile: Path?,
	passWithNoTests: boolean?,
	--[[*
	* @deprecated Use `transformIgnorePatterns` options instead.
	]]
	preprocessorIgnorePatterns: Array<Glob>?,
	preset: (string | nil)?,
	-- ROBLOX deviation START: not supported
	-- prettierPath: (string | nil)?,
	-- ROBLOX deviation END
	projects: Array<Glob | InitialProjectOptions>?,
	-- ROBLOX deviation START: not supported
	-- replname: (string | nil)?,
	-- ROBLOX deviation END
	resetMocks: boolean?,
	resetModules: boolean?,
	-- ROBLOX deviation START: not supported
	-- resolver: (Path | nil)?,
	-- ROBLOX deviation END
	restoreMocks: boolean?,
	-- ROBLOX deviation START: using Instance instead of Path
	rootDir: Instance?,
	-- ROBLOX deviation END
	roots: Array<Path>?,
	runner: string?,
	runTestsByPath: boolean?,
	runtime: string?,
	sandboxInjectedGlobals: Array<string>?,
	--[[*
  	 * @deprecated Use `transform` options instead.
  	 ]]
	scriptPreprocessor: string?,
	setupFiles: Array<
		-- ROBLOX deviation START: using ModuleScript instead of Path
		ModuleScript
		-- ROBLOX deviation END
	>?,
	-- ROBLOX deviation START: not supported
	-- --[[*
	-- * @deprecated Use `setupFilesAfterEnv` options instead.
	-- ]]
	-- setupTestFrameworkScriptFile: Path?,
	-- ROBLOX deviation END
	setupFilesAfterEnv: Array<
		-- ROBLOX deviation START: using ModuleScript instead of Path
		ModuleScript
		-- ROBLOX deviation END
	>?,
	silent: boolean?,
	skipFilter: boolean?,
	skipNodeResolution: boolean?,
	slowTestThreshold: number?,
	-- ROBLOX deviation START: not supported
	-- snapshotResolver: Path?,
	-- ROBLOX deviation END
	snapshotSerializers: Array<Path>?,
	snapshotFormat: PrettyFormatOptions?,
	-- ROBLOX deviation START: not supported
	-- errorOnDeprecated: boolean?,
	-- ROBLOX deviation END
	testEnvironment: string?,
	testEnvironmentOptions: Record<string, any>?,
	testFailureExitCode: (string | number)?,
	testLocationInResults: boolean?,
	testMatch: Array<Glob>?,
	testNamePattern: string?,
	--[[*
	 * @deprecated Use `roots` options instead.
	 ]]
	testPathDirs: Array<Path>?,
	testPathIgnorePatterns: Array<string>?,
	testRegex: (string | Array<string>)?,
	-- ROBLOX deviation START: not supported
	-- testResultsProcessor: string?,
	-- testRunner: string?,
	-- testSequencer: string?,
	-- testURL: string?,
	-- ROBLOX deviation END
	testTimeout: number?,
	timers: Timers?,
	-- ROBLOX deviation START: not supported
	-- transform: { [string]: Path | TransformerConfig }?,
	-- transformIgnorePatterns: Array<Glob>?,
	-- watchPathIgnorePatterns: Array<string>?,
	-- unmockedModulePathPatterns: Array<string>?,
	-- ROBLOX deviation END
	updateSnapshot: boolean?,
	-- ROBLOX deviation START: not supported
	-- useStderr: boolean?,
	-- ROBLOX deviation END
	verbose: boolean?,
	-- ROBLOX deviation START: not supported
	-- watch: boolean?,
	-- watchAll: boolean?,
	-- watchman: boolean?,
	-- watchPlugins: Array<string | Array<string | Record<string, any>>>?,
	-- ROBLOX deviation END
}

export type SnapshotUpdateState = "all" | "new" | "none"

type NotifyMode = "always" | "failure" | "success" | "change" | "success-change" | "failure-change"

export type CoverageThresholdValue = {
	branches: number?,
	functions: number?,
	lines: number?,
	statements: number?,
}

type CoverageThreshold = { [string]: CoverageThresholdValue, global: CoverageThresholdValue }

export type GlobalConfig = {
	bail: number,
	changedSince: string?,
	-- ROBLOX deviation START: not supported
	-- changedFilesWithAncestor: boolean,
	-- collectCoverage: boolean,
	-- collectCoverageFrom: Array<Glob>,
	-- collectCoverageOnlyFrom: { [string]: boolean }?,
	-- coverageDirectory: string,
	-- coveragePathIgnorePatterns: Array<string>?,
	-- coverageProvider: CoverageProvider,
	-- coverageReporters: CoverageReporters,
	-- coverageThreshold: CoverageThreshold?,
	-- detectLeaks: boolean,
	-- detectOpenHandles: boolean,
	-- ROBLOX deviation END
	expand: boolean,
	filter: Path?,
	-- ROBLOX deviation START: not supported
	-- findRelatedTests: boolean,
	-- forceExit: boolean,
	-- ROBLOX deviation END
	json: boolean,
	-- ROBLOX deviation START: not supported
	-- globalSetup: string?,
	-- globalTeardown: string?,
	-- lastCommit: boolean,
	-- logHeapUsage: boolean,
	-- ROBLOX deviation END
	listTests: boolean,
	maxConcurrency: number,
	maxWorkers: number,
	noStackTrace: boolean,
	nonFlagArgs: Array<string>,
	-- ROBLOX deviation START: not supported
	-- noSCM: boolean?,
	-- notify: boolean,
	-- notifyMode: NotifyMode,
	-- ROBLOX deviation END
	outputFile: Path?,
	-- ROBLOX deviation START: not supported
	-- onlyChanged: boolean,
	-- onlyFailures: boolean,
	-- ROBLOX deviation END
	passWithNoTests: boolean,
	-- ROBLOX deviation: using Instance instead of Glob
	projects: Array<Instance>,
	-- ROBLOX deviation START: not supported
	-- replname: string?,
	-- reporters: Array<string | ReporterConfig>?,
	-- ROBLOX deviation END
	runTestsByPath: boolean,
	-- ROBLOX deviation START: using Instance instead of Path
	rootDir: Instance,
	-- ROBLOX deviation END
	silent: boolean?,
	skipFilter: boolean,
	snapshotFormat: PrettyFormatOptions,
	-- ROBLOX deviation START: not supported
	-- errorOnDeprecated: boolean,
	-- ROBLOX deviation END
	testFailureExitCode: number,
	testNamePattern: string?,
	testPathPattern: string,
	-- ROBLOX deviation START: not supported
	-- testResultsProcessor: string?,
	-- testSequencer: string,
	-- ROBLOX deviation END
	testTimeout: number?,
	updateSnapshot: SnapshotUpdateState,
	-- ROBLOX deviation START: not supported
	-- useStderr: boolean,
	-- ROBLOX deviation END
	verbose: boolean?,
	-- ROBLOX deviation START: not supported
	-- watch: boolean,
	-- watchAll: boolean,
	-- watchman: boolean,
	-- watchPlugins: (Array<{
	-- 	path: string,
	-- 	config: Record<string, any>,
	-- }> | nil)?,
	-- ROBLOX deviation END
}
export type ProjectConfig = {
	automock: boolean,
	-- ROBLOX deviation START: caching not supported
	-- cache: boolean,
	-- cacheDirectory: Path,
	-- ROBLOX deviation END
	clearMocks: boolean,
	-- ROBLOX deviation START: not supported
	-- coveragePathIgnorePatterns: Array<string>,
	-- cwd: Path,
	-- dependencyExtractor: string?,
	-- detectLeaks: boolean,
	-- detectOpenHandles: boolean,
	-- ROBLOX deviation END
	displayName: DisplayName?,
	-- ROBLOX deviation START: not supported
	-- errorOnDeprecated: boolean,
	-- extensionsToTreatAsEsm: Array<Path>,
	fakeTimers: FakeTimers,
	-- extraGlobals: Array<string>, -- ROBLOX deviation: Array<keyof typeof globalThis>;
	-- ROBLOX deviation END
	filter: Path?,
	-- ROBLOX deviation START: not supported
	-- forceCoverageMatch: Array<Glob>,
	-- globalSetup: string?,
	-- globalTeardown: string?,
	-- globals: ConfigGlobals,
	-- haste: HasteConfig,
	-- ROBLOX deviation END
	id: string,
	injectGlobals: boolean,
	-- ROBLOX deviation START: not supported
	-- moduleDirectories: Array<string>,
	-- moduleFileExtensions: Array<string>,
	-- moduleLoader: Path?,
	-- moduleNameMapper: Array<Array<string>>,
	-- modulePathIgnorePatterns: Array<string>,
	-- modulePaths: Array<string>?,
	-- prettierPath: string,
	-- ROBLOX deviation END
	resetMocks: boolean,
	resetModules: boolean,
	-- ROBLOX deviation START: not supported
	-- resolver: Path?,
	-- ROBLOX deviation END
	restoreMocks: boolean,
	-- ROBLOX deviation START: using Instance instead of Path
	rootDir: Instance,
	-- ROBLOX deviation END
	roots: Array<Path>,
	runner: string,
	runtime: string?,
	sandboxInjectedGlobals: Array<ProjectConfig>,
	setupFiles: Array<
		-- ROBLOX deviation START: using ModuleScript instead of Path
		ModuleScript
		-- ROBLOX deviation END
	>,
	setupFilesAfterEnv: Array<
		-- ROBLOX deviation START: using ModuleScript instead of Path
		ModuleScript
		-- ROBLOX deviation END
	>,
	skipFilter: boolean,
	-- ROBLOX deviation START: not supported
	-- skipNodeResolution: boolean?,
	-- ROBLOX deviation END
	slowTestThreshold: number,
	-- ROBLOX deviation START: not supported
	-- snapshotResolver: Path?,
	-- ROBLOX deviation END
	snapshotSerializers: Array<Path>,
	snapshotFormat: PrettyFormatOptions,
	testEnvironment: string,
	testEnvironmentOptions: Record<string, any>,
	testMatch: Array<Glob>,
	testLocationInResults: boolean,
	testPathIgnorePatterns: Array<string>,
	testRegex: Array<string | RegExp>,
	-- ROBLOX deviation START: not supported
	-- testRunner: string,
	-- testURL: string,
	-- ROBLOX deviation END
	timers: Timers,
	-- ROBLOX deviation START: not supported
	-- transform: Array<Array<string | Path | Record<string, any>>>,
	-- transformIgnorePatterns: Array<Glob>,
	-- watchPathIgnorePatterns: Array<string>,
	-- unmockedModulePathPatterns: Array<string>?,
	-- ROBLOX deviation END
}
-- ROBLOX deviation: replace Partial type making all fields optional
export type Argv = Arguments<{
	all: boolean?,
	automock: boolean?,
	bail: (boolean | number)?,
	-- ROBLOX deviation START: not supported
	-- cache: boolean?,
	-- cacheDirectory: string?,
	-- changedFilesWithAncestor: boolean?,
	-- ROBLOX deviation END
	changedSince: string?,
	ci: boolean?,
	clearCache: boolean?,
	clearMocks: boolean?,
	-- ROBLOX deviation START: not supported
	-- collectCoverage: boolean?,
	-- collectCoverageFrom: string?,
	-- collectCoverageOnlyFrom: Array<string>?,
	-- ROBLOX deviation END
	color: boolean?,
	colors: boolean?,
	config: string?,
	coverage: boolean?,
	-- ROBLOX deviation START: not supported
	-- coverageDirectory: string?,
	-- coveragePathIgnorePatterns: Array<string>?,
	-- coverageReporters: Array<string>?,
	-- coverageThreshold: string?,
	-- ROBLOX deviation END
	debug: boolean?,
	env: string?,
	expand: boolean?,
	-- ROBLOX deviation START: not supported
	-- findRelatedTests: boolean?,
	-- forceExit: boolean?,
	-- ROBLOX deviation END
	globals: string?,
	-- ROBLOX deviation START: not supported
	-- globalSetup: (string | nil)?,
	-- globalTeardown: (string | nil)?,
	-- haste: string?,
	-- ROBLOX deviation END
	init: boolean?,
	injectGlobals: boolean?,
	json: boolean?,
	-- ROBLOX deviation START: not supported
	-- lastCommit: boolean?,
	-- logHeapUsage: boolean?,
	-- ROBLOX deviation END
	maxWorkers: (number | string)?,
	-- ROBLOX deviation START: not supported
	-- moduleDirectories: Array<string>?,
	-- moduleFileExtensions: Array<string>?,
	-- moduleNameMapper: string?,
	-- modulePathIgnorePatterns: Array<string>?,
	-- modulePaths: Array<string>?,
	-- ROBLOX deviation END
	noStackTrace: boolean?,
	-- ROBLOX deviation START: not supported
	-- notify: boolean?,
	-- notifyMode: string?,
	-- onlyChanged: boolean?,
	-- onlyFailures: boolean?,
	-- ROBLOX deviation END
	outputFile: string?,
	preset: (string | nil)?,
	projects: Array<string>?,
	-- ROBLOX deviation START: not supported
	-- prettierPath: (string | nil)?,
	-- ROBLOX deviation END
	resetMocks: boolean?,
	resetModules: boolean?,
	-- ROBLOX deviation START: not supported
	-- resolver: (string | nil)?,
	-- ROBLOX deviation END
	restoreMocks: boolean?,
	-- ROBLOX deviation START: using Instance instead of string
	rootDir: Instance?,
	-- ROBLOX deviation END
	roots: Array<string>?,
	runInBand: boolean?,
	selectProjects: Array<string>?,
	setupFiles: Array<
		-- ROBLOX deviation START: using ModuleScript instead of string
		ModuleScript
		-- ROBLOX deviation END
	>?,
	setupFilesAfterEnv: Array<
		-- ROBLOX deviation START: using ModuleScript instead of string
		ModuleScript
		-- ROBLOX deviation END
	>?,
	showConfig: boolean?,
	silent: boolean?,
	snapshotSerializers: Array<string>?,
	testEnvironment: string?,
	testEnvironmentOptions: string?,
	testFailureExitCode: (string | nil)?,
	testMatch: Array<string>?,
	testNamePattern: string?,
	testPathIgnorePatterns: Array<string>?,
	testPathPattern: Array<string>?,
	testRegex: string | Array<string>?,
	-- ROBLOX deviation START: not supported
	-- testResultsProcessor: string?,
	-- testRunner: string?,
	-- testSequencer: string?,
	-- testURL: string?,
	-- ROBLOX deviation END
	testTimeout: (number | nil)?,
	timers: string?,
	-- ROBLOX deviation START: not supported
	-- transform: string?,
	-- transformIgnorePatterns: Array<string>?,
	-- unmockedModulePathPatterns: (Array<string> | nil)?,
	-- ROBLOX deviation END
	updateSnapshot: boolean?,
	-- ROBLOX deviation START: not supported
	-- useStderr: boolean?,
	-- ROBLOX deviation END
	verbose: boolean?,
	version: boolean?,
	-- ROBLOX deviation START: not supported
	-- watch: boolean?,
	-- watchAll: boolean?,
	-- watchman: boolean?,
	-- watchPathIgnorePatterns: Array<string>?,
	-- ROBLOX deviation END
}>

return {}
