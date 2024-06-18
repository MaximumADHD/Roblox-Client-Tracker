-- ROBLOX upstream: https://github.com/facebook/jest/blob/v28.0.0/packages/jest-test-result/src/index.ts
--[[*
* Copyright (c) Facebook, Inc. and its affiliates. All Rights Reserved.
*
* This source code is licensed under the MIT license found in the
* LICENSE file in the root directory of this source tree.
]]
local exports = {}

exports.formatTestResults = require(script.formatTestResults).default

local helpersModule = require(script.helpers)
exports.addResult = helpersModule.addResult
exports.buildFailureTestResult = helpersModule.buildFailureTestResult
exports.createEmptyTestResult = helpersModule.createEmptyTestResult
exports.makeEmptyAggregatedTestResult = helpersModule.makeEmptyAggregatedTestResult

local typesModule = require(script.types)
export type AggregatedResult = typesModule.AggregatedResult
export type AssertionLocation = typesModule.AssertionLocation
export type AssertionResult = typesModule.AssertionResult
export type FailedAssertion = typesModule.FailedAssertion
export type FormattedTestResults = typesModule.FormattedTestResults
export type Milliseconds = typesModule.Milliseconds
export type RuntimeTransformResult = typesModule.RuntimeTransformResult
export type SerializableError = typesModule.SerializableError
export type Snapshot = typesModule.Snapshot
export type SnapshotSummary = typesModule.SnapshotSummary
export type Status = typesModule.Status
export type Suite = typesModule.Suite
export type Test = typesModule.Test
export type TestContext = typesModule.Context
export type Context = typesModule.Context
export type TestEvents = typesModule.TestEvents
-- ROBLOX FIXME: find a way to keep the generic param and it's default value when re-exporting
export type TestFileEvent = typesModule.TestFileEvent
export type TestResult = typesModule.TestResult
export type TestResultsProcessor = typesModule.TestResultsProcessor
export type TestCaseResult = typesModule.TestCaseResult
export type V8CoverageResult = typesModule.V8CoverageResult

return exports
