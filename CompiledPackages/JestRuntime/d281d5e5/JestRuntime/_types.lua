--[[*
 * Copyright (c) Facebook, Inc. and its affiliates. All Rights Reserved.
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
 ]]
local CurrentModule = script.Parent
local Packages = CurrentModule.Parent

local moduleMockerModule = require(Packages.JestMock)
type ModuleMocker = moduleMockerModule.ModuleMocker

export type MockFactory = () -> ...unknown

export type RetryTimesOptions = {
	logErrorsBeforeRetry: boolean?,
	waitBeforeRetry: number?,
	retryImmediately: boolean?,
}

export type Jest = {
	-- autoMockOn: () -> Jest,
	-- autoMockOff: () -> Jest,
	-- disableAutomock: () -> Jest,
	-- enableAutomock: () -> Jest,
	-- mock: (scriptInstance: ModuleScript, mockFactory: MockFactory, options: any) -> Jest,
	clearAllMocks: () -> Jest,
	resetAllMocks: () -> Jest,
	restoreAllMocks: () -> Jest,
	useFakeTimers: () -> Jest,
	useRealTimers: () -> Jest,
	resetModules: () -> Jest,
	isolateModules: (fn: () -> ()) -> Jest,
	fn: () -> ModuleMocker,
	-- genMockFromModule: (scriptInstance: ModuleScript) -> any,
	getRealSystemTime: () -> DateTime,
	getTimerCount: () -> number,
	runAllTimers: () -> (),
	runOnlyPendingTimers: () -> (),
	-- setMock: (scriptInstance: ModuleScript, mock: unknown, options: { virtual: boolean? }?) -> Jest,
	setSystemTime: (now: (number | DateTime)?) -> (),
	retryTimes: (numTestRetries: number, options: RetryTimesOptions?) -> Jest,
	setTimeout: any,
}

return {}
