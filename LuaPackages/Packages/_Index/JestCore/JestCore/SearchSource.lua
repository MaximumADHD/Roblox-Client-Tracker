-- ROBLOX upstream: https://github.com/facebook/jest/blob/v28.0.0/packages/jest-core/src/SearchSource.ts
--[[*
 * Copyright (c) Facebook, Inc. and its affiliates. All Rights Reserved.
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
 ]]

local Packages = script.Parent.Parent
local LuauPolyfill = require(Packages.LuauPolyfill)
local Array = LuauPolyfill.Array
local Boolean = LuauPolyfill.Boolean
-- ROBLOX deviation START: not needed
-- local Error = LuauPolyfill.Error
-- local Object = LuauPolyfill.Object
-- local Set = LuauPolyfill.Set
-- ROBLOX deviation END
type Array<T> = LuauPolyfill.Array<T>
type Promise<T> = LuauPolyfill.Promise<T>
type Set<T> = LuauPolyfill.Set<T>
local Promise = require(Packages.Promise)
local RegExp = require(Packages.RegExp)

local exports = {}

-- ROBLOX deviation START: not needed
-- local os_ = require(Packages.os)
-- local path = require(Packages.path)
-- local micromatch = require(Packages.micromatch)
-- ROBLOX deviation END
local test_resultModule = require(Packages.JestTestResult)
type Test = test_resultModule.Test
local jestTypesModule = require(Packages.JestTypes)
type Config_GlobalConfig = jestTypesModule.Config_GlobalConfig
type Config_ProjectConfig = jestTypesModule.Config_ProjectConfig
-- ROBLOX deviation START: not needed
-- local jest_changed_filesModule = require(Packages["jest-changed-files"])
-- type ChangedFiles = jest_changed_filesModule.ChangedFiles
type ChangedFiles = nil
-- local replaceRootDirInPath = require(Packages["jest-config"]).replaceRootDirInPath
-- local escapePathForRegex = require(Packages["jest-regex-util"]).escapePathForRegex
-- local DependencyResolver = require(Packages["jest-resolve-dependencies"]).DependencyResolver
-- ROBLOX deviation END
local jest_runtimeModule = require(Packages.JestRuntime)
type Context = jest_runtimeModule.Context
-- ROBLOX deviation START: not needed
-- local buildSnapshotResolver = require(Packages.JestSnapshot).buildSnapshotResolver
-- ROBLOX deviation END
local jest_utilModule = require(Packages.JestUtil)
local globsToMatcher = jest_utilModule.globsToMatcher
local testPathPatternToRegExp = jest_utilModule.testPathPatternToRegExp
local typesModule = require(script.Parent.types)
type Filter = typesModule.Filter
type Stats = typesModule.Stats
type TestPathCases = typesModule.TestPathCases

local globalTypesModule = require(Packages.JestTypes)
type Config_Path = globalTypesModule.Config_Path

-- ROBLOX deviation START: custom implementation for getting all files
type FileInfo = { path: Config_Path, script: ModuleScript }

local getRelativePath = require(Packages.RobloxShared).getRelativePath

local function getAllFiles(context: Context): Array<FileInfo>
	local descendants = context.config.rootDir:GetDescendants()
	return Array.map(
		Array.filter(descendants, function(descendant)
			return descendant:isA("ModuleScript")
		end),
		function(script_: ModuleScript)
			return { path = getRelativePath(script_, context.config.rootDir), script = script_ }
		end
	)
end
-- ROBLOX deviation END

export type SearchResult = {
	-- ROBLOX deviation START: not supported
	-- noSCM: boolean?,
	stats: Stats?,
	-- collectCoverageFrom: Set<string>?,
	-- ROBLOX deviation END
	tests: Array<Test>,
	total: number?,
}

export type TestSelectionConfig = {
	input: string?,
	findRelatedTests: boolean?,
	onlyChanged: boolean?,
	paths: Array<Config_Path>?,
	shouldTreatInputAsPattern: boolean?,
	testPathPattern: string?,
	watch: boolean?,
}

local function regexToMatcher(testRegex: typeof((({} :: any) :: Config_ProjectConfig).testRegex))
	local regexes = Array.map(testRegex, function(testRegex)
		return RegExp(testRegex)
	end)
	return function(path: Config_Path)
		return Array.some(regexes, function(regex)
			local result = regex:test(path)

			-- prevent stateful regexes from breaking, just in case
			regex.lastIndex = 0

			return result
		end)
	end
end

local function toTests(
	context: Context,
	-- ROBLOX deviation START: custom FileInfo type instead of Config_Path
	tests: Array<FileInfo>
	-- ROBLOX deviation END
): Array<Test>
	return Array.map(tests, function(test)
		return {
			context = context,
			duration = nil,
			path = test.path,
			script = test.script,
		}
	end)
end

-- ROBLOX deviation START: not ported
-- local function hasSCM(changedFilesInfo: ChangedFiles)
-- 	local repos = changedFilesInfo.repos
-- 	-- no SCM (git/hg/...) is found in any of the roots.
-- 	local noSCM = Array.every(Object.values(repos), function(scm)
-- 		return scm.size == 0
-- 	end)
-- 	return not Boolean.toJSBoolean(noSCM)
-- end
-- ROBLOX deviation END

export type SearchSource = {
	isTestFilePath: (self: SearchSource, path: Config_Path) -> boolean,
	findMatchingTests: (self: SearchSource, testPathPattern: string?) -> SearchResult,
	-- ROBLOX deviation START: not ported
	-- findRelatedTests: (
	-- 	self: SearchSource,
	-- 	allPaths: Set<Config_Path>,
	-- 	collectCoverage: boolean
	-- ) -> Promise<SearchResult>,
	-- findTestsByPaths: (self: SearchSource, paths: Array<Config_Path>) -> SearchResult,
	-- findRelatedTestsFromPattern: (
	-- 	self: SearchSource,
	-- 	paths: Array<Config_Path>,
	-- 	collectCoverage: boolean
	-- ) -> Promise<SearchResult>,
	-- findTestRelatedToChangedFiles: (
	-- 	self: SearchSource,
	-- 	changedFilesInfo: ChangedFiles,
	-- 	collectCoverage: boolean
	-- ) -> Promise<SearchResult>,
	-- filterPathsWin32: (self: SearchSource, paths: Array<string>) -> Array<string>,
	-- ROBLOX deviation END
	getTestPaths: (
		self: SearchSource,
		globalConfig: Config_GlobalConfig,
		changedFiles: ChangedFiles?,
		filter: Filter?
	) -> Promise<SearchResult>,
	-- ROBLOX deviation START: not ported
	-- findRelatedSourcesFromTestsInChangedFiles: (
	-- 	self: SearchSource,
	-- 	changedFilesInfo: ChangedFiles
	-- ) -> Promise<Array<string>>,
	-- ROBLOX deviation END
}

type SearchSourcePrivate = {
	_context: Context,
	-- ROBLOX deviation START: not ported
	--  _dependencyResolver: DependencyResolver | nil;
	-- ROBLOX deviation END
	_testPathCases: TestPathCases,
	-- ROBLOX deviation START: not ported
	-- _getOrBuildDependencyResolver: (self: SearchSourcePrivate) -> Promise<DependencyResolver>,
	-- ROBLOX deviation END
	_filterTestPathsWithStats: (
		self: SearchSourcePrivate,
		allPaths: Array<Test>,
		testPathPattern: string
	) -> SearchResult,
	_getAllTestPaths: (self: SearchSourcePrivate, testPathPattern: string) -> SearchResult,
	_getTestPaths: (
		self: SearchSourcePrivate,
		globalConfig: Config_GlobalConfig,
		_changedFiles: ChangedFiles?
	) -> Promise<SearchResult>,

	isTestFilePath: (self: SearchSourcePrivate, path: Config_Path) -> boolean,
	findMatchingTests: (self: SearchSourcePrivate, testPathPattern: string?) -> SearchResult,
	-- ROBLOX deviation START: not ported
	-- findRelatedTests: (
	-- 	self: SearchSourcePrivate,
	-- 	allPaths: Set<Config_Path>,
	-- 	collectCoverage: boolean
	-- ) -> Promise<SearchResult>,
	-- findTestsByPaths: (self: SearchSourcePrivate, paths: Array<Config_Path>) -> SearchResult,
	-- findRelatedTestsFromPattern: (
	-- 	self: SearchSourcePrivate,
	-- 	paths: Array<Config_Path>,
	-- 	collectCoverage: boolean
	-- ) -> Promise<SearchResult>,
	-- findTestRelatedToChangedFiles: (
	-- 	self: SearchSourcePrivate,
	-- 	changedFilesInfo: ChangedFiles,
	-- 	collectCoverage: boolean
	-- ) -> Promise<SearchResult>,
	-- filterPathsWin32: (self: SearchSourcePrivate, paths: Array<string>) -> Array<string>,
	-- ROBLOX deviation END
	getTestPaths: (
		self: SearchSourcePrivate,
		globalConfig: Config_GlobalConfig,
		changedFiles: ChangedFiles | nil,
		filter: Filter?
	) -> Promise<SearchResult>,
	-- ROBLOX deviation START: not ported
	-- findRelatedSourcesFromTestsInChangedFiles: (
	-- 	self: SearchSourcePrivate,
	-- 	changedFilesInfo: ChangedFiles
	-- ) -> Promise<Array<string>>,
	-- ROBLOX deviation END
}

type SearchSource_statics = {
	new: (context: Context) -> SearchSource,
}

local SearchSource = {} :: SearchSourcePrivate & SearchSource_statics;
(SearchSource :: any).__index = SearchSource

function SearchSource.new(context: Context): SearchSource
	local self = setmetatable({}, SearchSource)
	self._testPathCases = {}
	local config = context.config
	self._context = context
	self._dependencyResolver = nil

	-- ROBLOX deviation START: not needed
	-- local rootPattern = RegExp(Array.join(
	-- 	Array.map(config.roots, function(dir)
	-- 		return escapePathForRegex(dir .. path.sep)
	-- 	end),
	-- 	"|"
	-- ))
	-- table.insert(self._testPathCases, {
	-- 	isMatch = function(path)
	-- 		return rootPattern:test(path)
	-- 	end,
	-- 	stat = "roots",
	-- })
	-- ROBLOX deviation END

	if #config.testMatch > 0 then
		table.insert(self._testPathCases, { isMatch = globsToMatcher(config.testMatch), stat = "testMatch" })
	end

	if #config.testPathIgnorePatterns > 0 then
		local testIgnorePatternsRegex = RegExp(Array.join(config.testPathIgnorePatterns, "|"))
		table.insert(self._testPathCases, {
			isMatch = function(path)
				return not testIgnorePatternsRegex:test(path)
			end,
			stat = "testPathIgnorePatterns",
		})
	end

	if #config.testRegex > 0 then
		table.insert(self._testPathCases, { isMatch = regexToMatcher(config.testRegex), stat = "testRegex" })
	end

	return (self :: any) :: SearchSource
end

-- ROBLOX deviation START: not ported
-- function SearchSource:_getOrBuildDependencyResolver(): Promise<DependencyResolver>
-- 	return Promise.resolve():andThen(function()
-- 		if not self._dependencyResolver then
-- 			self._dependencyResolver = DependencyResolver.new(
-- 				self._context.resolver,
-- 				self._context.hasteFS,
-- 				buildSnapshotResolver(self._context.config):expect()
-- 			)
-- 		end
-- 		return self._dependencyResolver
-- 	end)
-- end
-- ROBLOX deviation END

function SearchSource:_filterTestPathsWithStats(allPaths: Array<Test>, testPathPattern: string?): SearchResult
	local data: { stats: Stats, tests: Array<Test>, total: number } = {
		stats = { roots = 0, testMatch = 0, testPathIgnorePatterns = 0, testRegex = 0 },
		tests = {},
		total = #allPaths,
	}

	-- ROBLOX FIXME Luau: should be inferred from passed param
	local testCases = Array.from(self._testPathCases) :: typeof(self._testPathCases) -- clone
	if testPathPattern ~= nil and Boolean.toJSBoolean(testPathPattern) then
		local regex = testPathPatternToRegExp(testPathPattern)
		table.insert(testCases, {
			isMatch = function(path: string)
				return regex:test(path)
			end,
			stat = "testPathPattern",
		})
		data.stats.testPathPattern = 0
	end

	data.tests = Array.filter(allPaths, function(test)
		local filterResult = true
		for _, ref in testCases do
			local isMatch, stat = ref.isMatch, ref.stat
			if isMatch(test.path) then
				-- ROBLOX deviation START: make sure data.stats[stat] is not `nil` before adding 1
				data.stats[stat] = data.stats[stat] or 0
				-- ROBLOX deviation END
				-- ROBLOX FIXME Luau: stat is typed as a union of Stat type keys so this should be infered as number?
				(data.stats :: { [string]: number })[stat] += 1
			else
				filterResult = false
			end
		end
		return filterResult
	end)

	return data
end

function SearchSource:_getAllTestPaths(testPathPattern: string?): SearchResult
	return self:_filterTestPathsWithStats(
		toTests(
			self._context,
			-- ROBLOX deviation START: custom logic for getting all files
			getAllFiles(self._context)
			-- ROBLOX devation END
		),
		-- ROBLOX deviation START: workaround 'string?' param type being mistaken for 'string'
		-- testPathPattern
		testPathPattern :: string
		-- ROBLOX devation END
	)
end

function SearchSource:isTestFilePath(path: Config_Path): boolean
	return Array.every(self._testPathCases, function(testCase)
		return testCase.isMatch(path)
	end)
end

-- ROBLOX deviation START: workaround 'string?' param type being mistaken for 'string'
-- function SearchSource_private:findMatchingTests(testPathPattern: string): SearchResult
-- 	return self:_getAllTestPaths(testPathPattern)
function SearchSource:findMatchingTests(testPathPattern: string?): SearchResult
	return self:_getAllTestPaths(testPathPattern :: string)
	-- ROBLOX deviation END
end

-- ROBLOX deviation START: not ported
-- function SearchSource:findRelatedTests(allPaths: Set<Config_Path>, collectCoverage: boolean): Promise<SearchResult>
-- 	return Promise.resolve():andThen(function()
-- 		local dependencyResolver = self:_getOrBuildDependencyResolver():expect()

-- 		if not collectCoverage then
-- 			return {
-- 				tests = toTests(
-- 					self._context,
-- 					dependencyResolver:resolveInverse(
-- 						allPaths,
-- 						self.isTestFilePath:bind(self),
-- 						{ skipNodeResolution = self._context.config.skipNodeResolution }
-- 					)
-- 				),
-- 			}
-- 		end

-- 		local testModulesMap = dependencyResolver:resolveInverseModuleMap(
-- 			allPaths,
-- 			self.isTestFilePath:bind(self),
-- 			{ skipNodeResolution = self._context.config.skipNodeResolution }
-- 		)

-- 		local allPathsAbsolute = Array.map(Array.from(allPaths), function(p)
-- 			return path:resolve(p)
-- 		end)

-- 		local collectCoverageFrom = Set.new()

-- 		Array.forEach(testModulesMap, function(testModule)
-- 			if not Boolean.toJSBoolean(testModule.dependencies) then
-- 				return
-- 			end

-- 			Array.forEach(testModule.dependencies, function(p)
-- 				if not Array.includes(allPathsAbsolute, p) then
-- 					return
-- 				end

-- 				local filename = replaceRootDirInPath(self._context.config.rootDir, p)
-- 				collectCoverageFrom:add(
-- 					if Boolean.toJSBoolean(path:isAbsolute(filename))
-- 						then path:relative(self._context.config.rootDir, filename)
-- 						else filename
-- 				)
-- 			end)
-- 		end)

-- 		return {
-- 			collectCoverageFrom = collectCoverageFrom,
-- 			tests = toTests(
-- 				self._context,
-- 				Array.map(testModulesMap, function(testModule)
-- 					return testModule.file
-- 				end)
-- 			),
-- 		}
-- 	end)
-- end

-- function SearchSource:findTestsByPaths(paths: Array<Config_Path>): SearchResult
-- 	return {
-- 		tests = toTests(
-- 			self._context,
-- 			Array.filter(
-- 				Array.map(paths, function(p)
-- 					return path:resolve(self._context.config.cwd, p)
-- 				end),
-- 				function(_self, ...)
-- 					self:isTestFilePath(...)
-- 				end
-- 			)
-- 		),
-- 	}
-- end

-- function SearchSource:findRelatedTestsFromPattern(
-- 	paths: Array<Config_Path>,
-- 	collectCoverage: boolean
-- ): Promise<SearchResult>
-- 	return Promise.resolve():andThen(function()
-- 		if Array.isArray(paths) and #paths > 0 then
-- 			local resolvedPaths = Array.map(paths, function(p)
-- 				return path:resolve(self._context.config.cwd, p)
-- 			end)
-- 			return self:findRelatedTests(Set.new(resolvedPaths), collectCoverage)
-- 		end
-- 		return { tests = {} }
-- 	end)
-- end

-- function SearchSource:findTestRelatedToChangedFiles(
-- 	changedFilesInfo: ChangedFiles,
-- 	collectCoverage: boolean
-- ): Promise<SearchResult>
-- 	return Promise.resolve():andThen(function()
-- 		if not Boolean.toJSBoolean(hasSCM(changedFilesInfo)) then
-- 			return { noSCM = true, tests = {} }
-- 		end
-- 		local changedFiles = changedFilesInfo.changedFiles
-- 		return self:findRelatedTests(changedFiles, collectCoverage)
-- 	end)
-- end
-- ROBLOX deviation END

function SearchSource:_getTestPaths(
	globalConfig: Config_GlobalConfig,
	_changedFiles: ChangedFiles?
): Promise<SearchResult>
	return Promise.resolve():andThen(function()
		-- ROBLOX deviation START: not supported yet
		-- if globalConfig.onlyChanged then
		-- 	if not changedFiles then
		-- 		error(Error.new("Changed files must be set when running with -o."))
		-- 	end

		-- 	return self:findTestRelatedToChangedFiles(changedFiles, globalConfig.collectCoverage)
		-- end

		-- local paths = globalConfig.nonFlagArgs

		-- if globalConfig.findRelatedTests and "win32" == os_:platform() then
		-- 	paths = self:filterPathsWin32(paths)
		-- end

		-- if globalConfig.runTestsByPath and paths and #paths > 0 then
		-- 	return self:findTestsByPaths(paths)
		-- elseif globalConfig.findRelatedTests and paths and #paths > 0 then
		-- 	return self:findRelatedTestsFromPattern(paths, globalConfig.collectCoverage)
		-- elseif globalConfig.testPathPattern ~= nil then
		-- ROBLOX deviation END
		if globalConfig.testPathPattern ~= nil then
			return self:findMatchingTests(globalConfig.testPathPattern)
		else
			return { tests = {} }
		end
	end)
end

-- ROBLOX deviation START: not ported
-- function SearchSource:filterPathsWin32(paths: Array<string>): Array<string>
-- 	local allFiles = self._context.hasteFS:getAllFiles()
-- 	local options = { nocase = true, windows = false }

-- 	local function normalizePosix(filePath: string)
-- 		return filePath:replace(
-- 			error("not implemented"), --[[ ROBLOX TODO: Unhandled node for type: RegExpLiteral ]] --[[ /\\/g ]]
-- 			"/"
-- 		)
-- 	end

-- 	paths = Array.map(
-- 		Array.filter(
-- 			Array.map(paths, function(p)
-- 				-- micromatch works with forward slashes: https://github.com/micromatch/micromatch#backslashes
-- 				local normalizedPath = normalizePosix(path:resolve(self._context.config.cwd, p))
-- 				local match = micromatch(Array.map(allFiles, normalizePosix), normalizedPath, options)
-- 				return match[1]
-- 			end),
-- 			Boolean.toJSBoolean
-- 		),
-- 		function(p)
-- 			return path:resolve(p)
-- 		end
-- 	)
-- 	return paths
-- end
-- ROBLOX deviation END

function SearchSource:getTestPaths(
	globalConfig: Config_GlobalConfig,
	changedFiles: ChangedFiles?,
	filter: Filter?
): Promise<SearchResult>
	return Promise.resolve():andThen(function()
		-- ROBLOX deviation START: custom implementation
		local searchResult = self:_getTestPaths(globalConfig, changedFiles):expect()
		-- ROBLOX deviation END

		return searchResult
	end)
end

-- ROBLOX deviation START: not ported
-- function SearchSource:findRelatedSourcesFromTestsInChangedFiles(changedFilesInfo: ChangedFiles): Promise<Array<string>>
-- 	return Promise.resolve():andThen(function()
-- 		if not hasSCM(changedFilesInfo) then
-- 			return {}
-- 		end
-- 		local changedFiles = changedFilesInfo.changedFiles
-- 		local dependencyResolver = self:_getOrBuildDependencyResolver():expect()
-- 		local relatedSourcesSet = Set.new()
-- 		Array.forEach(changedFiles, function(filePath)
-- 			if self:isTestFilePath(filePath) then
-- 				local sourcePaths = dependencyResolver:resolve(
-- 					filePath,
-- 					{ skipNodeResolution = self._context.config.skipNodeResolution }
-- 				)
-- 				Array.forEach(sourcePaths, function(sourcePath)
-- 					return relatedSourcesSet:add(sourcePath)
-- 				end)
-- 			end
-- 		end)
-- 		return Array.from(relatedSourcesSet)
-- 	end)
-- end
-- ROBLOX deviation END

exports.default = SearchSource :: SearchSource & SearchSource_statics

return exports
