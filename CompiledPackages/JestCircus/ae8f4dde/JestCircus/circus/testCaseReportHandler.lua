-- ROBLOX upstream: https://github.com/facebook/jest/blob/v28.0.0/packages/jest-circus/src/testCaseReportHandler.ts
--[[*
 * Copyright (c) Facebook, Inc. and its affiliates. All Rights Reserved.
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
 ]]

local CurrentModule = script.Parent
local Packages = CurrentModule.Parent.Parent
local exports = {}
local testResultModule = require(Packages.JestTestResult)
type TestFileEvent = testResultModule.TestFileEvent
local typesModule = require(Packages.JestTypes)
type Circus_Event = typesModule.Circus_Event
local utilsModule = require(script.Parent.utils)
local makeSingleTestResult = utilsModule.makeSingleTestResult
local parseSingleTestResult = utilsModule.parseSingleTestResult

local function testCaseReportHandler(testPath: string, sendMessageToJest: TestFileEvent)
	return function(_self, event: Circus_Event): ()
		if event.name == "test_done" then
			local testResult = makeSingleTestResult(event.test)
			local testCaseResult = parseSingleTestResult(testResult)
			-- ROBLOX FIXME Luau: roblox-cli doesn't allow for mixed arrays
			sendMessageToJest("test-case-result", { testPath :: any, testCaseResult })
		end
	end
end

exports.default = testCaseReportHandler

return exports
