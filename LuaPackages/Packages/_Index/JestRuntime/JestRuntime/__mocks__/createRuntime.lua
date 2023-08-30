-- ROBLOX upstream: https://github.com/facebook/jest/blob/v28.0.0/jest-runtime/src/__mocks__/createRuntime.js
--[[*
 * Copyright (c) Facebook, Inc. and its affiliates. All Rights Reserved.
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
 ]]
local Packages = script.Parent.Parent.Parent
local Promise = require(Packages.Promise)
-- ROBLOX deviation START: not needed
-- local path = require(Packages.path).default
-- local Map = LuauPolyfill.Map
-- local JestGlobals = require(Packages.Dev.JestGlobals)
-- local expect = JestGlobals.expect
-- local tmpdir = require(Packages.os).tmpdir
-- local makeProjectConfig = require(Packages["@jest"]["test-utils"]).makeProjectConfig
-- local createScriptTransformer = require(Packages["@jest"].transform).createScriptTransformer
-- local NodeEnvironment = require(Packages["jest-environment-node"]).default
-- local JestEnvironmentLuau = require(Packages.Dev.JestEnvironmentLuau).default
-- local tryRealpath = require(Packages.JestUtil).tryRealpath
-- ROBLOX deviation END
local Runtime = require(script.Parent.Parent) -- Copy from jest-config (since we don't want to depend on this package)
-- ROBLOX deviation START: not used
-- local function getCacheDirectory()
-- 	local getuid = process.getuid
-- 	local tmpdirPath = Array.join(path, tryRealpath(tmpdir()), "jest") --[[ ROBLOX CHECK: check if 'path' is an Array ]]
-- 	if
-- 		getuid == nil --[[ ROBLOX CHECK: loose equality used upstream ]]
-- 	then
-- 		return tmpdirPath
-- 	else
-- 		-- On some platforms tmpdir() is `/tmp`, causing conflicts between different
-- 		-- users and permission issues. Adding an additional subdivision by UID can
-- 		-- help.
-- 		return ("%s_%s"):format(tostring(tmpdirPath), tostring(getuid(process):toString(36)))
-- 	end
-- end
-- local function setupModuleNameMapper(config, rootDir)
-- 	if Boolean.toJSBoolean(if Boolean.toJSBoolean(config) then config.moduleNameMapper else config) then
-- 		return Array.map(Object.keys(config.moduleNameMapper), function(regex)
-- 			local item = if Boolean.toJSBoolean(config.moduleNameMapper)
-- 				then config.moduleNameMapper[tostring(regex)]
-- 				else config.moduleNameMapper
-- 			return if Boolean.toJSBoolean(item) then { regex, item:replace("<rootDir>", rootDir) } else item
-- 		end) --[[ ROBLOX CHECK: check if 'Object.keys(config.moduleNameMapper)' is an Array ]]
-- 	end
-- 	return {}
-- end
-- local function setupTransform(config, rootDir)
-- 	if Boolean.toJSBoolean(if typeof(config) == "table" then config.transform else nil) then
-- 		local transform = config.transform
-- 		return Array.map(Object.keys(transform), function(regex)
-- 			return { regex, path:resolve(rootDir, transform[tostring(regex)]) }
-- 		end) --[[ ROBLOX CHECK: check if 'Object.keys(transform)' is an Array ]]
-- 	end
-- 	return { { "^.+\\.[jt]sx?$", require_:resolve("babel-jest") } }
-- end
-- ROBLOX deviation END
return function( -- ROBLOX deviation START: arguments not needed. filename only kept to preserve this createRuntime's call api
	-- self: any,
	filename: ModuleScript
	-- config
	-- ROBLOX deviation END
)
	return Promise.resolve():andThen(function()
		-- ROBLOX deviation START: custom implementation
		-- local rootDir = path:resolve(path:dirname(filename), "test_root")
		-- local moduleNameMapper = setupModuleNameMapper(config, rootDir)
		-- local transform = setupTransform(config, rootDir)
		-- config = makeProjectConfig(Object.assign({}, {
		-- 	cacheDirectory = getCacheDirectory(),
		-- 	cwd = path:resolve(__dirname, "..", "..", "..", ".."),
		-- 	haste = {
		-- 		hasteImplModulePath = path:resolve(
		-- 			__dirname,
		-- 			"..",
		-- 			"..",
		-- 			"..",
		-- 			"jest-haste-map",
		-- 			"src",
		-- 			"__tests__",
		-- 			"haste_impl.js"
		-- 		),
		-- 	},
		-- 	moduleDirectories = { "node_modules" },
		-- 	moduleFileExtensions = { "js", "jsx", "ts", "tsx", "json", "node" },
		-- 	name = "Runtime-"
		-- 		.. tostring(
		-- 			filename:replace(
		-- 				error("not implemented"), --[[ ROBLOX TODO: Unhandled node for type: RegExpLiteral ]] --[[ /\W/ ]]
		-- 				"-"
		-- 			)
		-- 		)
		-- 		.. ".tests",
		-- 	rootDir = rootDir,
		-- }, config, { moduleNameMapper = moduleNameMapper, transform = transform }))
		-- if not Boolean.toJSBoolean(config.roots.length) then
		-- 	config.roots = { config.rootDir }
		-- end
		-- local environment = NodeEnvironment.new(config)
		-- environment.global.console = console
		-- local hasteMap = Runtime:createHasteMap(config, { maxWorkers = 1, resetCache = false }):build():expect()
		-- local cacheFS = Map.new()
		-- local scriptTransformer = createScriptTransformer(config, cacheFS):expect()
		-- local runtime = Runtime.new(
		-- 	config,
		-- 	environment,
		-- 	Runtime:createResolver(config, hasteMap.moduleMap),
		-- 	scriptTransformer,
		-- 	cacheFS,
		-- 	{
		-- 		changedFiles = nil,
		-- 		collectCoverage = false,
		-- 		collectCoverageFrom = {},
		-- 		collectCoverageOnlyFrom = nil,
		-- 		coverageProvider = "v8",
		-- 		sourcesRelatedToTestsInChangedFiles = nil,
		-- 	},
		-- 	filename
		-- )
		-- for _, path in config.setupFiles do
		-- 	local esm = runtime:unstable_shouldLoadAsEsm(path)
		-- 	if Boolean.toJSBoolean(esm) then
		-- 		runtime:unstable_importModule(path):expect()
		-- 	else
		-- 		runtime:requireModule(path)
		-- 	end
		-- end
		-- runtime.__mockRootPath = Array.join(path, config.rootDir, "root.js") --[[ ROBLOX CHECK: check if 'path' is an Array ]]
		-- runtime.__mockSubdirPath = Array.join(path, config.rootDir, "subdir2", "module_dir", "module_dir_module.js") --[[ ROBLOX CHECK: check if 'path' is an Array ]]
		local runtime = Runtime.new();
		-- ROBLOX NOTE: this is JS file upstream so no type checking is performed
		(runtime :: any).__mockRootPath = script.Parent.Parent.__tests__.test_root
		-- ROBLOX deviation END
		return runtime
	end)
end
