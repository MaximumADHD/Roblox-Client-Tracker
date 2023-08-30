-- ROBLOX upstream: https://github.com/facebook/jest/blob/v28.0.0/packages/jest-core/src/testSchedulerHelper.ts
--[[*
 * Copyright (c) Facebook, Inc. and its affiliates. All Rights Reserved.
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
 ]]

local Packages = script.Parent.Parent
local LuauPolyfill = require(Packages.LuauPolyfill)
type Array<T> = LuauPolyfill.Array<T>
local exports = {}
local test_resultModule = require(Packages.JestTestResult)
type Test = test_resultModule.Test
local typesModule = require(Packages.JestTypes)
type Config_GlobalConfig = typesModule.Config_GlobalConfig
-- ROBLOX deviation START: always run in band
-- local SLOW_TEST_TIME = 1000
local function shouldRunInBand(_tests: Array<Test>, _timings: Array<number>, _ref: Config_GlobalConfig): boolean
	return true
	-- local detectOpenHandles, maxWorkers, watch, watchAll =
	-- 	ref.detectOpenHandles, ref.maxWorkers, ref.watch, ref.watchAll
	-- -- detectOpenHandles makes no sense without runInBand, because it cannot detect leaks in workers
	-- if detectOpenHandles then
	-- 	return true
	-- end
	-- --[[
	--  * Run in band if we only have one test or one worker available, unless we
	--  * are using the watch mode, in which case the TTY has to be responsive and
	--  * we cannot schedule anything in the main thread. Same logic applies to
	--  * watchAll.
	--  * Also, if we are confident from previous runs that the tests will finish
	--  * quickly we also run in band to reduce the overhead of spawning workers.
	--  * Finally, the user can provide the runInBand argument in the CLI to
	--  * force running in band.
	--  * https://github.com/facebook/jest/blob/700e0dadb85f5dc8ff5dac6c7e98956690049734/packages/jest-config/src/getMaxWorkers.js#L14-L17
	--  ]]
	-- local isWatchMode = watch or watchAll
	-- local areFastTests = Array.every(timings, function(timing)
	-- 	return timing < SLOW_TEST_TIME
	-- end)
	-- local oneWorkerOrLess = maxWorkers <= 1
	-- local oneTestOrLess = #tests <= 1
	-- if isWatchMode then
	-- 	return oneWorkerOrLess or (oneTestOrLess and areFastTests)
	-- end
	-- return oneWorkerOrLess or oneTestOrLess or (#tests <= 20 and #timings > 0 and areFastTests)
end
-- ROBLOX deviation END
exports.shouldRunInBand = shouldRunInBand
return exports
