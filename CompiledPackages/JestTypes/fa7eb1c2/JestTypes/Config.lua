-- ROBLOX upstream: https://github.com/facebook/jest/blob/v28.0.0/packages/jest-types/src/Config.ts
--[[*
 * Copyright (c) Facebook, Inc. and its affiliates. All Rights Reserved.
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
 ]]

local rootWorkspace = script.Parent.Parent

local RegExp = require(rootWorkspace.RegExp)
type RegExp = RegExp.RegExp

type ReportOptions = { [string]: any }
type Arguments<T> = T & { [string]: any }

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
	doNotFake: { FakeableAPI }?,
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

type FakeTimers = GlobalFakeTimersConfig & ((FakeTimersConfig & {
	now: DateTime?,
}) | LegacyFakeTimersConfig)

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
	platforms: { string }?,
	--[[* Whether to throw on error on module collision. ]]
	throwOnModuleCollision: boolean?,
	--[[* Custom HasteMap module ]]
	hasteMapModulePath: string?,
	--[[* Whether to retain all files, allowing e.g. search for tests in `node_modules`. ]]
	retainAllFiles: boolean?,
}

export type CoverageReporterName = string

export type CoverageReporterWithOptions<K> =
	{ string | { [string]: any } } --[[ [K, Partial<ReportOptions[K]>] ]]
	| nil

export type CoverageReporters = { CoverageReporterName | CoverageReporterWithOptions<CoverageReporterName> }

export type ReporterConfig = { reporter: string | ModuleScript, options: { [string]: any } }

export type TransformerConfig = { string | { [string]: any } }

export type ConfigGlobals = {
	[string]: any,
}

-- This interface gets filled out when pretty-format is included
export type PrettyFormatOptions = {}

export type DefaultOptions = {
	automock: boolean,
	bail: number,
	-- cache: boolean,
	-- cacheDirectory: Path,
	-- changedFilesWithAncestor: boolean,
	ci: boolean,
	clearMocks: boolean,
	-- collectCoverage: boolean,
	-- coveragePathIgnorePatterns: {string},
	-- coverageReporters: {CoverageReporterName},
	-- coverageProvider: CoverageProvider,
	-- detectLeaks: boolean,
	-- detectOpenHandles: boolean,
	-- errorOnDeprecated: boolean,
	expand: boolean,
	-- extensionsToTreatAsEsm: {Path},
	-- forceCoverageMatch: {Glob},
	globals: ConfigGlobals,
	-- haste: HasteConfig,
	injectGlobals: boolean,
	listTests: boolean,
	maxConcurrency: number,
	maxWorkers: number | string,
	-- moduleDirectories: {string},
	-- moduleFileExtensions: {string},
	-- moduleNameMapper: Record<string, string | {string}>,
	-- modulePathIgnorePatterns: {string},
	mockDataModel: boolean,
	noStackTrace: boolean,
	stackDepth: number,
	-- notify: boolean,
	-- notifyMode: NotifyMode,
	oldFunctionSpying: boolean,
	passWithNoTests: boolean,
	-- prettierPath: string,
	resetMocks: boolean,
	resetModules: boolean,
	restoreMocks: boolean,
	roots: { string },
	runTestsByPath: boolean,
	runner: string,
	setupFiles: { ModuleScript },
	setupFilesAfterEnv: { ModuleScript },
	skipFilter: boolean,
	slowTestThreshold: number,
	snapshotSerializers: { string },
	testEnvironment: string,
	testEnvironmentOptions: { [string]: any },
	testFailureExitCode: string | number,
	testLocationInResults: boolean,
	testMatch: { string },
	testPathIgnorePatterns: { string },
	testRegex: { string },
	-- testRunner: string,
	-- testSequencer: string,
	-- testURL: string,
	timers: Timers,
	-- transformIgnorePatterns: {Glob},
	-- useStderr: boolean,
	-- watch: boolean,
	-- watchPathIgnorePatterns: {string},
	-- watchman: boolean,
}

export type DisplayName = {
	name: string,
	color: string,
}

export type InitialOptionsWithRootDir = InitialOptions & { rootDir: Path }

export type InitialProjectOptions = {
	automock: boolean?,
	-- cache: boolean?,
	-- cacheDirectory: Path?,
	clearMocks: boolean?,
	-- coveragePathIgnorePatterns: {string}?,
	-- dependencyExtractor: string?,
	-- detectLeaks: boolean?,
	-- detectOpenHandles: boolean?,
	displayName: (string | DisplayName)?,
	-- extensionsToTreatAsEsm: {Path}?,
	-- extraGlobals: {string}?,
	filter: Path?,
	-- forceCoverageMatch: {Glob}?,
	-- globalSetup: (string | nil)?,
	-- globalTeardown: (string | nil)?,
	-- haste: HasteConfig?,
	injectGlobals: boolean?,
	-- moduleDirectories: {string}?,
	-- moduleFileExtensions: {string}?,
	moduleLoader: Path?,
	-- moduleNameMapper: { [string]: string | {string} }?,
	-- modulePathIgnorePatterns: {string}?,
	-- modulePaths: {string}?,
	-- prettierPath: (string | nil)?,
	resetMocks: boolean?,
	resetModules: boolean?,
	-- resolver: (Path | nil)?,
	restoreMocks: boolean?,
	rootDir: Instance?,
	roots: { string }?,
	runner: string?,
	setupFiles: { ModuleScript }?,
	setupFilesAfterEnv: { ModuleScript }?,
	skipFilter: boolean?,
	skipNodeResolution: boolean?,
	slowTestThreshold: number?,
	-- snapshotResolver: Path?,
	snapshotSerializers: { Path }?,
	snapshotFormat: PrettyFormatOptions?,
	testEnvironment: string?,
	testEnvironmentOptions: { [string]: any }?,
	testLocationInResults: boolean?,
	testMatch: { Glob }?,
	testPathIgnorePatterns: { string }?,
	testRegex: (string | { string })?,
	-- testRunner: string?,
	-- testURL: string?,
	timers: Timers?,
	-- transform: { [string]: Path | TransformerConfig }?,
	-- transformIgnorePatterns: {Glob}?,
	-- watchPathIgnorePatterns: {string}?,
	-- unmockedModulePathPatterns: {string}?,
} & {
	-- cwd: string?
}

export type InitialOptions = {
	automock: boolean?,
	bail: (boolean | number)?,
	-- cache: boolean?,
	-- cacheDirectory: Path?,
	ci: boolean?,
	clearMocks: boolean?,
	-- changedFilesWithAncestor: boolean?,
	changedSince: string?,
	-- collectCoverage: boolean?,
	-- collectCoverageFrom: {Glob}?,
	-- collectCoverageOnlyFrom: { [string]: boolean }?,
	-- coverageDirectory: string?,
	-- coveragePathIgnorePatterns: {string}?,
	-- coverageProvider: CoverageProvider?,
	-- coverageReporters: CoverageReporters?,
	-- coverageThreshold: CoverageThreshold?,
	-- dependencyExtractor: string?,
	-- detectLeaks: boolean?,
	-- detectOpenHandles: boolean?,
	displayName: (string | DisplayName)?,
	expand: boolean?,
	-- extensionsToTreatAsEsm: {Path}?,
	-- extraGlobals: {string}?,
	filter: Path?,
	findRelatedTests: boolean?,
	-- forceCoverageMatch: {Glob}?,
	-- forceExit: boolean?,
	json: boolean?,
	globals: ConfigGlobals?,
	-- globalSetup: (string | nil)?,
	-- globalTeardown: (string | nil)?,
	-- haste: HasteConfig?,
	injectGlobals: boolean?,
	reporters: { string | ModuleScript | ReporterConfig }?,
	-- logHeapUsage: boolean?,
	-- lastCommit: boolean?,
	listTests: boolean?,
	maxConcurrency: number?,
	maxWorkers: (number | string)?,
	-- moduleDirectories: {string}?,
	-- moduleFileExtensions: {string}?,
	moduleLoader: Path?,
	-- moduleNameMapper: { [string]: string | {string} }?,
	-- modulePathIgnorePatterns: {string}?,
	-- modulePaths: {string}?,
	id: string?,
	mockDataModel: boolean?,
	noStackTrace: boolean?,
	stackDepth: number?,
	-- notify: boolean?,
	-- notifyMode: string?,
	-- onlyChanged: boolean?,
	-- onlyFailures: boolean?,
	outputFile: Path?,
	oldFunctionSpying: boolean?,
	passWithNoTests: boolean?,
	--[[*
	* @deprecated Use `transformIgnorePatterns` options instead.
	]]
	preprocessorIgnorePatterns: { Glob }?,
	preset: (string | nil)?,
	-- prettierPath: (string | nil)?,
	projects: { Glob | InitialProjectOptions }?,
	-- replname: (string | nil)?,
	resetMocks: boolean?,
	resetModules: boolean?,
	-- resolver: (Path | nil)?,
	restoreMocks: boolean?,
	rootDir: Instance?,
	roots: { Path }?,
	runner: string?,
	runTestsByPath: boolean?,
	runtime: string?,
	sandboxInjectedGlobals: { string }?,
	--[[*
  	 * @deprecated Use `transform` options instead.
  	 ]]
	scriptPreprocessor: string?,
	setupFiles: { ModuleScript }?,
	-- --[[*
	-- * @deprecated Use `setupFilesAfterEnv` options instead.
	-- ]]
	-- setupTestFrameworkScriptFile: Path?,
	setupFilesAfterEnv: { ModuleScript }?,
	silent: boolean?,
	skipFilter: boolean?,
	skipNodeResolution: boolean?,
	slowTestThreshold: number?,
	-- snapshotResolver: Path?,
	snapshotSerializers: { Path }?,
	snapshotFormat: PrettyFormatOptions?,
	-- errorOnDeprecated: boolean?,
	testEnvironment: string?,
	testEnvironmentOptions: { [string]: any }?,
	testFailureExitCode: (string | number)?,
	testLocationInResults: boolean?,
	testMatch: { Glob }?,
	testNamePattern: string?,
	--[[*
	 * @deprecated Use `roots` options instead.
	 ]]
	testPathDirs: { Path }?,
	testPathIgnorePatterns: { string }?,
	testRegex: (string | { string })?,
	-- testResultsProcessor: string?,
	-- testRunner: string?,
	-- testSequencer: string?,
	-- testURL: string?,
	testTimeout: number?,
	timers: Timers?,
	-- transform: { [string]: Path | TransformerConfig }?,
	-- transformIgnorePatterns: {Glob}?,
	-- watchPathIgnorePatterns: {string}?,
	-- unmockedModulePathPatterns: {string}?,
	updateSnapshot: boolean?,
	-- useStderr: boolean?,
	verbose: boolean?,
	-- watch: boolean?,
	-- watchAll: boolean?,
	-- watchman: boolean?,
	-- watchPlugins: {string | {string | { [string]: any }>>?,
}

export type SnapshotUpdateState = "all" | "new" | "none"

export type GlobalConfig = {
	bail: number,
	changedSince: string?,
	-- changedFilesWithAncestor: boolean,
	-- collectCoverage: boolean,
	-- collectCoverageFrom: {Glob},
	-- collectCoverageOnlyFrom: { [string]: boolean }?,
	-- coverageDirectory: string,
	-- coveragePathIgnorePatterns: {string}?,
	-- coverageProvider: CoverageProvider,
	-- coverageReporters: CoverageReporters,
	-- coverageThreshold: CoverageThreshold?,
	-- detectLeaks: boolean,
	-- detectOpenHandles: boolean,
	expand: boolean,
	filter: Path?,
	-- findRelatedTests: boolean,
	-- forceExit: boolean,
	json: boolean,
	-- globalSetup: string?,
	-- globalTeardown: string?,
	-- lastCommit: boolean,
	-- logHeapUsage: boolean,
	listTests: boolean,
	maxConcurrency: number,
	maxWorkers: number,
	noStackTrace: boolean,
	stackDepth: number,
	nonFlagArgs: { string },
	-- noSCM: boolean?,
	-- notify: boolean,
	-- notifyMode: NotifyMode,
	outputFile: Path?,
	-- onlyChanged: boolean,
	-- onlyFailures: boolean,
	passWithNoTests: boolean,
	projects: { Instance },
	-- replname: string?,
	reporters: { string | ModuleScript | ReporterConfig }?,
	runTestsByPath: boolean,
	rootDir: Instance,
	silent: boolean?,
	skipFilter: boolean,
	snapshotFormat: PrettyFormatOptions,
	-- errorOnDeprecated: boolean,
	testFailureExitCode: number,
	testNamePattern: string?,
	testPathPattern: string,
	-- testResultsProcessor: string?,
	-- testSequencer: string,
	testTimeout: number?,
	updateSnapshot: SnapshotUpdateState,
	-- useStderr: boolean,
	verbose: boolean?,
	-- watch: boolean,
	-- watchAll: boolean,
	-- watchman: boolean,
	-- watchPlugins: ({{
	-- 	path: string,
	-- 	config: { [string]: any },
	-- }> | nil)?,
}
export type ProjectConfig = {
	automock: boolean,
	-- cache: boolean,
	-- cacheDirectory: Path,
	clearMocks: boolean,
	-- coveragePathIgnorePatterns: {string},
	-- cwd: Path,
	-- dependencyExtractor: string?,
	-- detectLeaks: boolean,
	-- detectOpenHandles: boolean,
	displayName: DisplayName?,
	-- errorOnDeprecated: boolean,
	-- extensionsToTreatAsEsm: {Path},
	fakeTimers: FakeTimers,
	-- extraGlobals: {string},	filter: Path?,
	-- forceCoverageMatch: {Glob},
	-- globalSetup: string?,
	-- globalTeardown: string?,
	-- globals: ConfigGlobals,
	-- haste: HasteConfig,
	id: string,
	injectGlobals: boolean,
	-- moduleDirectories: {string},
	-- moduleFileExtensions: {string},
	-- moduleLoader: Path?,
	-- moduleNameMapper: {{string}>,
	-- modulePathIgnorePatterns: {string},
	-- modulePaths: {string}?,
	-- prettierPath: string,
	mockDataModel: boolean,
	oldFunctionSpying: boolean,
	resetMocks: boolean,
	resetModules: boolean,
	-- resolver: Path?,
	restoreMocks: boolean,
	rootDir: Instance,
	roots: { Path },
	runner: string,
	runtime: string?,
	sandboxInjectedGlobals: { ProjectConfig },
	setupFiles: { ModuleScript },
	setupFilesAfterEnv: { ModuleScript },
	skipFilter: boolean,
	-- skipNodeResolution: boolean?,
	slowTestThreshold: number,
	-- snapshotResolver: Path?,
	snapshotSerializers: { Path },
	snapshotFormat: PrettyFormatOptions,
	testEnvironment: string,
	testEnvironmentOptions: { [string]: any },
	testMatch: { Glob },
	testLocationInResults: boolean,
	testPathIgnorePatterns: { string },
	testRegex: { string | RegExp },
	-- testRunner: string,
	-- testURL: string,
	timers: Timers,
	-- transform: {{string | Path | { [string]: any }>>,
	-- transformIgnorePatterns: {Glob},
	-- watchPathIgnorePatterns: {string},
	-- unmockedModulePathPatterns: {string}?,
}
export type Argv = Arguments<{
	all: boolean?,
	automock: boolean?,
	bail: (boolean | number)?,
	-- cache: boolean?,
	-- cacheDirectory: string?,
	-- changedFilesWithAncestor: boolean?,
	changedSince: string?,
	ci: boolean?,
	clearCache: boolean?,
	clearMocks: boolean?,
	-- collectCoverage: boolean?,
	-- collectCoverageFrom: string?,
	-- collectCoverageOnlyFrom: {string}?,
	color: boolean?,
	colors: boolean?,
	config: string?,
	coverage: boolean?,
	-- coverageDirectory: string?,
	-- coveragePathIgnorePatterns: {string}?,
	-- coverageReporters: {string}?,
	-- coverageThreshold: string?,
	debug: boolean?,
	env: string?,
	expand: boolean?,
	-- findRelatedTests: boolean?,
	-- forceExit: boolean?,
	globals: string?,
	-- globalSetup: (string | nil)?,
	-- globalTeardown: (string | nil)?,
	-- haste: string?,
	init: boolean?,
	injectGlobals: boolean?,
	json: boolean?,
	-- lastCommit: boolean?,
	-- logHeapUsage: boolean?,
	maxWorkers: (number | string)?,
	-- moduleDirectories: {string}?,
	-- moduleFileExtensions: {string}?,
	-- moduleNameMapper: string?,
	-- modulePathIgnorePatterns: {string}?,
	-- modulePaths: {string}?,
	noStackTrace: boolean?,
	stackDepth: number?,
	-- notify: boolean?,
	-- notifyMode: string?,
	-- onlyChanged: boolean?,
	-- onlyFailures: boolean?,
	outputFile: string?,
	preset: (string | nil)?,
	projects: { string }?,
	-- prettierPath: (string | nil)?,
	reporters: { string | ModuleScript | ReporterConfig }?,
	resetMocks: boolean?,
	resetModules: boolean?,
	-- resolver: (string | nil)?,
	restoreMocks: boolean?,
	rootDir: Instance?,
	roots: { string }?,
	runInBand: boolean?,
	selectProjects: { string }?,
	setupFiles: { ModuleScript }?,
	setupFilesAfterEnv: { ModuleScript }?,
	showConfig: boolean?,
	silent: boolean?,
	snapshotSerializers: { string }?,
	testEnvironment: string?,
	testEnvironmentOptions: string?,
	testFailureExitCode: (string | nil)?,
	testMatch: { string }?,
	testNamePattern: string?,
	testPathIgnorePatterns: { string }?,
	testPathPattern: { string }?,
	testRegex: string | { string }?,
	-- testResultsProcessor: string?,
	-- testRunner: string?,
	-- testSequencer: string?,
	-- testURL: string?,
	testTimeout: (number | nil)?,
	timers: string?,
	-- transform: string?,
	-- transformIgnorePatterns: {string}?,
	-- unmockedModulePathPatterns: ({string} | nil)?,
	updateSnapshot: boolean?,
	-- useStderr: boolean?,
	verbose: boolean?,
	version: boolean?,
	-- watch: boolean?,
	-- watchAll: boolean?,
	-- watchman: boolean?,
	-- watchPathIgnorePatterns: {string}?,
}>

return {}
