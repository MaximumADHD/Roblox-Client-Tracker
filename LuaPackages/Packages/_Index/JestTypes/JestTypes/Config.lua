-- ROBLOX upstream: https://github.com/facebook/jest/blob/v27.4.7/packages/jest-types/src/Config.ts
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
	--[[* Path to a custom implementation of Haste. ]]
	hasteImplModulePath: string?,
	--[[* All platforms to target, e.g ['ios', 'android']. ]]
	platforms: Array<string>?,
	--[[* Whether to throw on error on module collision. ]]
	throwOnModuleCollision: boolean?,
	--[[* Custom HasteMap module ]]
	hasteMapModulePath: string?,
}

export type CoverageReporterName = string --[[ ROBLOX TODO: Unhandled node for type: TSTypeOperator ]] --[[ keyof ReportOptions ]]

-- ROBLOX FIXME: add default generic type <K = CoverageReporterName>
-- ROBLOX TODO: Unhandled node for type: TSConditionalType ]] --[[ K extends CoverageReporterName ? ReportOptions[K] extends never ? never : [K, Partial<ReportOptions[K]>] : never
export type CoverageReporterWithOptions<K> = Array<string | Object> --[[ [K, Partial<ReportOptions[K]>] ]] | nil

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
	cache: boolean,
	cacheDirectory: Path,
	changedFilesWithAncestor: boolean,
	ci: boolean,
	clearMocks: boolean,
	collectCoverage: boolean,
	coveragePathIgnorePatterns: Array<string>,
	coverageReporters: Array<CoverageReporterName>,
	coverageProvider: CoverageProvider,
	detectLeaks: boolean,
	detectOpenHandles: boolean,
	errorOnDeprecated: boolean,
	expand: boolean,
	extensionsToTreatAsEsm: Array<Path>,
	forceCoverageMatch: Array<Glob>,
	globals: ConfigGlobals,
	haste: HasteConfig,
	injectGlobals: boolean,
	listTests: boolean,
	maxConcurrency: number,
	maxWorkers: number | string,
	moduleDirectories: Array<string>,
	moduleFileExtensions: Array<string>,
	moduleNameMapper: Record<string, string | Array<string>>,
	modulePathIgnorePatterns: Array<string>,
	noStackTrace: boolean,
	notify: boolean,
	notifyMode: NotifyMode,
	passWithNoTests: boolean,
	prettierPath: string,
	resetMocks: boolean,
	resetModules: boolean,
	restoreMocks: boolean,
	roots: Array<Path>,
	runTestsByPath: boolean,
	runner: string,
	setupFiles: Array<Path>,
	setupFilesAfterEnv: Array<Path>,
	skipFilter: boolean,
	slowTestThreshold: number,
	snapshotSerializers: Array<Path>,
	testEnvironment: string,
	testEnvironmentOptions: Record<string, any>,
	testFailureExitCode: string | number,
	testLocationInResults: boolean,
	testMatch: Array<Glob>,
	testPathIgnorePatterns: Array<string>,
	testRegex: Array<string>,
	testRunner: string,
	testSequencer: string,
	testURL: string,
	timers: Timers,
	transformIgnorePatterns: Array<Glob>,
	useStderr: boolean,
	watch: boolean,
	watchPathIgnorePatterns: Array<string>,
	watchman: boolean,
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
	cache: boolean?,
	cacheDirectory: Path?,
	clearMocks: boolean?,
	coveragePathIgnorePatterns: Array<string>?,
	dependencyExtractor: string?,
	detectLeaks: boolean?,
	detectOpenHandles: boolean?,
	displayName: (string | DisplayName)?,
	extensionsToTreatAsEsm: Array<Path>?,
	extraGlobals: Array<string>?,
	filter: Path?,
	forceCoverageMatch: Array<Glob>?,
	globalSetup: (string | nil)?,
	globalTeardown: (string | nil)?,
	haste: HasteConfig?,
	injectGlobals: boolean?,
	moduleDirectories: Array<string>?,
	moduleFileExtensions: Array<string>?,
	moduleLoader: Path?,
	moduleNameMapper: { [string]: string | Array<string> }?,
	modulePathIgnorePatterns: Array<string>?,
	modulePaths: Array<string>?,
	name: string?,
	prettierPath: (string | nil)?,
	resetMocks: boolean?,
	resetModules: boolean?,
	resolver: (Path | nil)?,
	restoreMocks: boolean?,
	rootDir: Path?,
	roots: Array<Path>?,
	runner: string?,
	setupFiles: Array<Path>?,
	setupFilesAfterEnv: Array<Path>?,
	skipFilter: boolean?,
	skipNodeResolution: boolean?,
	slowTestThreshold: number?,
	snapshotResolver: Path?,
	snapshotSerializers: Array<Path>?,
	snapshotFormat: PrettyFormatOptions?,
	testEnvironment: string?,
	testEnvironmentOptions: Record<string, any>?,
	testLocationInResults: boolean?,
	testMatch: Array<Glob>?,
	testPathIgnorePatterns: Array<string>?,
	testRegex: (string | Array<string>)?,
	testRunner: string?,
	testURL: string?,
	timers: Timers?,
	transform: { [string]: Path | TransformerConfig }?,
	transformIgnorePatterns: Array<Glob>?,
	watchPathIgnorePatterns: Array<string>?,
	unmockedModulePathPatterns: Array<string>?,
} & { cwd: string? }

-- ROBLOX deviation: replace Partial type making all fields optional
export type InitialOptions = {
	automock: boolean?,
	bail: (boolean | number)?,
	cache: boolean?,
	cacheDirectory: Path?,
	ci: boolean?,
	clearMocks: boolean?,
	changedFilesWithAncestor: boolean?,
	changedSince: string?,
	collectCoverage: boolean?,
	collectCoverageFrom: Array<Glob>?,
	collectCoverageOnlyFrom: { [string]: boolean }?,
	coverageDirectory: string?,
	coveragePathIgnorePatterns: Array<string>?,
	coverageProvider: CoverageProvider?,
	coverageReporters: CoverageReporters?,
	coverageThreshold: CoverageThreshold?,
	dependencyExtractor: string?,
	detectLeaks: boolean?,
	detectOpenHandles: boolean?,
	displayName: (string | DisplayName)?,
	expand: boolean?,
	extensionsToTreatAsEsm: Array<Path>?,
	extraGlobals: Array<string>?,
	filter: Path?,
	findRelatedTests: boolean?,
	forceCoverageMatch: Array<Glob>?,
	forceExit: boolean?,
	json: boolean?,
	globals: ConfigGlobals?,
	globalSetup: (string | nil)?,
	globalTeardown: (string | nil)?,
	haste: HasteConfig?,
	injectGlobals: boolean?,
	reporters: Array<string | ReporterConfig>?,
	logHeapUsage: boolean?,
	lastCommit: boolean?,
	listTests: boolean?,
	maxConcurrency: number?,
	maxWorkers: (number | string)?,
	moduleDirectories: Array<string>?,
	moduleFileExtensions: Array<string>?,
	moduleLoader: Path?,
	moduleNameMapper: { [string]: string | Array<string> }?,
	modulePathIgnorePatterns: Array<string>?,
	modulePaths: Array<string>?,
	name: string?,
	noStackTrace: boolean?,
	notify: boolean?,
	notifyMode: string?,
	onlyChanged: boolean?,
	onlyFailures: boolean?,
	outputFile: Path?,
	passWithNoTests: boolean?,
	--[[*
  	 * @deprecated Use `transformIgnorePatterns` options instead.
  	 ]]
	preprocessorIgnorePatterns: Array<Glob>?,
	preset: (string | nil)?,
	prettierPath: (string | nil)?,
	projects: Array<Glob | InitialProjectOptions>?,
	replname: (string | nil)?,
	resetMocks: boolean?,
	resetModules: boolean?,
	resolver: (Path | nil)?,
	restoreMocks: boolean?,
	rootDir: Path?,
	roots: Array<Path>?,
	runner: string?,
	runTestsByPath: boolean?,
	--[[*
  	 * @deprecated Use `transform` options instead.
  	 ]]
	scriptPreprocessor: string?,
	setupFiles: Array<Path>?,
	--[[*
  	 * @deprecated Use `setupFilesAfterEnv` options instead.
  	 ]]
	setupTestFrameworkScriptFile: Path?,
	setupFilesAfterEnv: Array<Path>?,
	silent: boolean?,
	skipFilter: boolean?,
	skipNodeResolution: boolean?,
	slowTestThreshold: number?,
	snapshotResolver: Path?,
	snapshotSerializers: Array<Path>?,
	snapshotFormat: PrettyFormatOptions?,
	errorOnDeprecated: boolean?,
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
	testResultsProcessor: string?,
	testRunner: string?,
	testSequencer: string?,
	testURL: string?,
	testTimeout: number?,
	timers: Timers?,
	transform: { [string]: Path | TransformerConfig }?,
	transformIgnorePatterns: Array<Glob>?,
	watchPathIgnorePatterns: Array<string>?,
	unmockedModulePathPatterns: Array<string>?,
	updateSnapshot: boolean?,
	useStderr: boolean?,
	verbose: boolean?,
	watch: boolean?,
	watchAll: boolean?,
	watchman: boolean?,
	watchPlugins: Array<string | Array<string | Record<string, any>>>?,
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
	changedFilesWithAncestor: boolean,
	collectCoverage: boolean,
	collectCoverageFrom: Array<Glob>,
	collectCoverageOnlyFrom: { [string]: boolean }?,
	coverageDirectory: string,
	coveragePathIgnorePatterns: Array<string>?,
	coverageProvider: CoverageProvider,
	coverageReporters: CoverageReporters,
	coverageThreshold: CoverageThreshold?,
	detectLeaks: boolean,
	detectOpenHandles: boolean,
	expand: boolean,
	filter: Path?,
	findRelatedTests: boolean,
	forceExit: boolean,
	json: boolean,
	globalSetup: string?,
	globalTeardown: string?,
	lastCommit: boolean,
	logHeapUsage: boolean,
	listTests: boolean,
	maxConcurrency: number,
	maxWorkers: number,
	noStackTrace: boolean,
	nonFlagArgs: Array<string>,
	noSCM: boolean?,
	notify: boolean,
	notifyMode: NotifyMode,
	outputFile: Path?,
	onlyChanged: boolean,
	onlyFailures: boolean,
	passWithNoTests: boolean,
	projects: Array<Glob>,
	replname: string?,
	reporters: Array<string | ReporterConfig>?,
	runTestsByPath: boolean,
	rootDir: Path,
	silent: boolean?,
	skipFilter: boolean,
	snapshotFormat: PrettyFormatOptions,
	errorOnDeprecated: boolean,
	testFailureExitCode: number,
	testNamePattern: string?,
	testPathPattern: string,
	testResultsProcessor: string?,
	testSequencer: string,
	testTimeout: number?,
	updateSnapshot: SnapshotUpdateState,
	useStderr: boolean,
	verbose: boolean?,
	watch: boolean,
	watchAll: boolean,
	watchman: boolean,
	watchPlugins: (Array<{
		path: string,
		config: Record<string, any>,
	}> | nil)?,
}
export type ProjectConfig = {
	automock: boolean,
	cache: boolean,
	cacheDirectory: Path,
	clearMocks: boolean,
	coveragePathIgnorePatterns: Array<string>,
	cwd: Path,
	dependencyExtractor: string?,
	detectLeaks: boolean,
	detectOpenHandles: boolean,
	displayName: DisplayName?,
	errorOnDeprecated: boolean,
	extensionsToTreatAsEsm: Array<Path>,
	extraGlobals: Array<string>, -- ROBLOX deviation: Array<keyof typeof globalThis>;
	filter: Path?,
	forceCoverageMatch: Array<Glob>,
	globalSetup: string?,
	globalTeardown: string?,
	globals: ConfigGlobals,
	haste: HasteConfig,
	injectGlobals: boolean,
	moduleDirectories: Array<string>,
	moduleFileExtensions: Array<string>,
	moduleLoader: Path?,
	moduleNameMapper: Array<Array<string>>,
	modulePathIgnorePatterns: Array<string>,
	modulePaths: Array<string>?,
	name: string,
	prettierPath: string,
	resetMocks: boolean,
	resetModules: boolean,
	resolver: Path?,
	restoreMocks: boolean,
	rootDir: Path,
	roots: Array<Path>,
	runner: string,
	setupFiles: Array<Path>,
	setupFilesAfterEnv: Array<Path>,
	skipFilter: boolean,
	skipNodeResolution: boolean?,
	slowTestThreshold: number,
	snapshotResolver: Path?,
	snapshotSerializers: Array<Path>,
	snapshotFormat: PrettyFormatOptions,
	testEnvironment: string,
	testEnvironmentOptions: Record<string, any>,
	testMatch: Array<Glob>,
	testLocationInResults: boolean,
	testPathIgnorePatterns: Array<string>,
	testRegex: Array<string | RegExp>,
	testRunner: string,
	testURL: string,
	timers: Timers,
	transform: Array<Array<string | Path | Record<string, any>>>,
	transformIgnorePatterns: Array<Glob>,
	watchPathIgnorePatterns: Array<string>,
	unmockedModulePathPatterns: Array<string>?,
}
-- ROBLOX deviation: replace Partial type making all fields optional
export type Argv = Arguments<{
	all: boolean?,
	automock: boolean?,
	bail: (boolean | number)?,
	cache: boolean?,
	cacheDirectory: string?,
	changedFilesWithAncestor: boolean?,
	changedSince: string?,
	ci: boolean?,
	clearCache: boolean?,
	clearMocks: boolean?,
	collectCoverage: boolean?,
	collectCoverageFrom: string?,
	collectCoverageOnlyFrom: Array<string>?,
	color: boolean?,
	colors: boolean?,
	config: string?,
	coverage: boolean?,
	coverageDirectory: string?,
	coveragePathIgnorePatterns: Array<string>?,
	coverageReporters: Array<string>?,
	coverageThreshold: string?,
	debug: boolean?,
	env: string?,
	expand: boolean?,
	findRelatedTests: boolean?,
	forceExit: boolean?,
	globals: string?,
	globalSetup: (string | nil)?,
	globalTeardown: (string | nil)?,
	haste: string?,
	init: boolean?,
	injectGlobals: boolean?,
	json: boolean?,
	lastCommit: boolean?,
	logHeapUsage: boolean?,
	maxWorkers: (number | string)?,
	moduleDirectories: Array<string>?,
	moduleFileExtensions: Array<string>?,
	moduleNameMapper: string?,
	modulePathIgnorePatterns: Array<string>?,
	modulePaths: Array<string>?,
	noStackTrace: boolean?,
	notify: boolean?,
	notifyMode: string?,
	onlyChanged: boolean?,
	onlyFailures: boolean?,
	outputFile: string?,
	preset: (string | nil)?,
	projects: Array<string>?,
	prettierPath: (string | nil)?,
	resetMocks: boolean?,
	resetModules: boolean?,
	resolver: (string | nil)?,
	restoreMocks: boolean?,
	rootDir: string?,
	roots: Array<string>?,
	runInBand: boolean?,
	selectProjects: Array<string>?,
	setupFiles: Array<string>?,
	setupFilesAfterEnv: Array<string>?,
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
	testResultsProcessor: string?,
	testRunner: string?,
	testSequencer: string?,
	testURL: string?,
	testTimeout: (number | nil)?,
	timers: string?,
	transform: string?,
	transformIgnorePatterns: Array<string>?,
	unmockedModulePathPatterns: (Array<string> | nil)?,
	updateSnapshot: boolean?,
	useStderr: boolean?,
	verbose: boolean?,
	version: boolean?,
	watch: boolean?,
	watchAll: boolean?,
	watchman: boolean?,
	watchPathIgnorePatterns: Array<string>?,
}>

return {}
