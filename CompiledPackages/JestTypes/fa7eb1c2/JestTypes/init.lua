-- ROBLOX upstream: https://github.com/facebook/jest/blob/v28.0.0/packages/jest-types/src/index.ts
--[[*
 * Copyright (c) Facebook, Inc. and its affiliates. All Rights Reserved.
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
 ]]
local CircusModule = require(script.Circus)
export type Circus_BlockFn = CircusModule.BlockFn
export type Circus_BlockNameLike = CircusModule.BlockNameLike
export type Circus_TestNameLike = CircusModule.TestNameLike
export type Circus_BlockName = CircusModule.BlockName
export type Circus_BlockMode = CircusModule.BlockMode
export type Circus_TestMode = CircusModule.TestMode
export type Circus_TestName = CircusModule.TestName
export type Circus_TestFn = CircusModule.TestFn
export type Circus_HookFn = CircusModule.HookFn
export type Circus_AsyncFn = CircusModule.AsyncFn
export type Circus_HookType = CircusModule.HookType
export type Circus_TestContext = CircusModule.TestContext
export type Circus_Exception = CircusModule.Exception
export type Circus_Hook = CircusModule.Hook
export type Circus_EventHandler = CircusModule.EventHandler
export type Circus_Event = CircusModule.Event
export type Circus_SyncEvent = CircusModule.SyncEvent
export type Circus_AsyncEvent = CircusModule.AsyncEvent
export type Circus_TestStatus = CircusModule.TestStatus
export type Circus_TestResult = CircusModule.TestResult
export type Circus_RunResult = CircusModule.RunResult
export type Circus_TestResults = CircusModule.TestResults
export type Circus_GlobalErrorHandlers = CircusModule.GlobalErrorHandlers
export type Circus_State = CircusModule.State
export type Circus_DescribeBlock = CircusModule.DescribeBlock
export type Circus_TestError = CircusModule.TestError
export type Circus_TestEntry = CircusModule.TestEntry

local ConfigModule = require(script.Config)
export type Config_Path = ConfigModule.Path
export type Config_Glob = ConfigModule.Glob
export type Config_ReporterConfig = ConfigModule.ReporterConfig
export type Config_ConfigGlobals = ConfigModule.ConfigGlobals
export type Config_DefaultOptions = ConfigModule.DefaultOptions
export type Config_DisplayName = ConfigModule.DisplayName
export type Config_InitialOptionsWithRootDir = ConfigModule.InitialOptionsWithRootDir
export type Config_InitialOptions = ConfigModule.InitialOptions
export type Config_SnapshotUpdateState = ConfigModule.SnapshotUpdateState
export type Config_GlobalConfig = ConfigModule.GlobalConfig
export type Config_ProjectConfig = ConfigModule.ProjectConfig
export type Config_Argv = ConfigModule.Argv

local GlobalModule = require(script.Global)
export type Global_TestReturnValue = GlobalModule.TestReturnValue
export type Global_DoneFn = GlobalModule.DoneFn
export type Global_PromiseReturningTestFn = GlobalModule.PromiseReturningTestFn
export type Global_GeneratorReturningTestFn = GlobalModule.GeneratorReturningTestFn
export type Global_TestFn = GlobalModule.TestFn
export type Global_ConcurrentTestFn = GlobalModule.ConcurrentTestFn
export type Global_BlockFn = GlobalModule.BlockFn
export type Global_Col = GlobalModule.Col
export type Global_Row = GlobalModule.Row
export type Global_Table = GlobalModule.Table
export type Global_ArrayTable = GlobalModule.ArrayTable
export type Global_TemplateData = GlobalModule.TemplateData
export type Global_EachTable = GlobalModule.EachTable
export type Global_EachTestFn<EachCallback> = GlobalModule.EachTestFn<EachCallback>
export type Global_ItBase = GlobalModule.ItBase
export type Global_It = GlobalModule.It
export type Global_ItConcurrentBase = GlobalModule.ItConcurrentBase
export type Global_ItConcurrentExtended = GlobalModule.ItConcurrentExtended
export type Global_ItConcurrent = GlobalModule.ItConcurrent
export type Global_TestFrameworkGlobals = GlobalModule.TestFrameworkGlobals
export type Global_Global = GlobalModule.Global

local TestResultModule = require(script.TestResult)
export type TestResult_Milliseconds = TestResultModule.Milliseconds
export type TestResult_AssertionResult = TestResultModule.AssertionResult
export type TestResult_SerializableError = TestResultModule.SerializableError
export type TestResult_Callsite = TestResultModule.Callsite
export type TestResult_Status = TestResultModule.Status

local PromiseModule = require(script.Promise)
export type Promise<T> = PromiseModule.Promise<T>

local Error = require(script.Error)
export type Error = Error.Error

return {
	Error = Error,
}
