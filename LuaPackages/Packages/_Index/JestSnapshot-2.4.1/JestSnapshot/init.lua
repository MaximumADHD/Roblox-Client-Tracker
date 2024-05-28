-- ROBLOX upstream: https://github.com/facebook/jest/blob/v27.4.7/packages/jest-snapshot/src/index.ts
-- /**
--  * Copyright (c) Facebook, Inc. and its affiliates. All Rights Reserved.
--  *
--  * This source code is licensed under the MIT license found in the
--  * LICENSE file in the root directory of this source tree.
--  */

-- ROBLOX deviation: omitting imports for file system interaction

local CurrentModule = script
local Packages = CurrentModule.Parent

-- ROBLOX deviation: used to communicate with the TestEZ test runner
local JEST_TEST_CONTEXT = "__JEST_TEST_CONTEXT__"

local LuauPolyfill = require(Packages.LuauPolyfill)
local Error = LuauPolyfill.Error
local instanceof = LuauPolyfill.instanceof
local AssertionError = LuauPolyfill.AssertionError

local getType = require(Packages.JestGetType).getType

-- ROBLOX TODO: ADO-1633 fix Jest Types imports
-- local Config = require(Packages.JestTypes).Config
type ConfigPath = string

local JestMatcherUtils = require(Packages.JestMatcherUtils)
local BOLD_WEIGHT = JestMatcherUtils.BOLD_WEIGHT
local EXPECTED_COLOR = JestMatcherUtils.EXPECTED_COLOR
-- local MatcherHintOptions = JestMatcherUtils.MatcherHintOptions
local RECEIVED_COLOR = JestMatcherUtils.RECEIVED_COLOR
local matcherErrorMessage = JestMatcherUtils.matcherErrorMessage
local matcherHint = JestMatcherUtils.matcherHint
local printWithType = JestMatcherUtils.printWithType
local stringify = JestMatcherUtils.stringify

-- ROBLOX TODO: ADO-1449 add imports for snapshot_resolver and related functionality

local SnapshotState = require(CurrentModule.State)

local plugins = require(CurrentModule.plugins)
local addSerializer = plugins.addSerializer
local getSerializers = plugins.getSerializers

local printSnapshot = require(CurrentModule.printSnapshot)
local PROPERTIES_ARG = printSnapshot.PROPERTIES_ARG
-- local SNAPSHOT_ARG = printSnapshot.SNAPSHOT_ARG
local bReceivedColor = printSnapshot.bReceivedColor
local matcherHintFromConfig = printSnapshot.matcherHintFromConfig
-- local noColor = printSnapshot.noColor
local printExpected = printSnapshot.printExpected
local printPropertiesAndReceived = printSnapshot.printPropertiesAndReceived
local printReceived = printSnapshot.printReceived
local printSnapshotAndReceived = printSnapshot.printSnapshotAndReceived

local types = require(CurrentModule.types)
type MatchSnapshotConfig = types.MatchSnapshotConfig

local utils = require(CurrentModule.utils)

local _toMatchSnapshot, _toThrowErrorMatchingSnapshot

local DID_NOT_THROW = "Received function did not throw"
local NOT_SNAPSHOT_MATCHERS = "Snapshot matchers cannot be used with " .. BOLD_WEIGHT("never")

-- ROBLOX deviation: we cannot have multiline regex patterns in Lua so in our usage of
-- this pattern, we will first split on newlines and then use it
-- local INDENTATION_REGEX = "^([^%S\n]*)%S"

-- Display name in report when matcher fails same as in snapshot file,
-- but with optional hint argument in bold weight.
local function printSnapshotName(concatenatedBlockNames_: string?, hint_: string?, count: number): string
	local concatenatedBlockNames = if concatenatedBlockNames_ then concatenatedBlockNames_ else ""
	local hint = if hint_ then hint_ else ""
	local hasNames = concatenatedBlockNames:len() ~= 0
	local hasHint = #hint ~= 0

	local retval = "Snapshot name: `"
	if hasNames then
		retval = retval .. utils.escapeBacktickString(concatenatedBlockNames)
	end

	if hasNames and hasHint then
		retval = retval .. ": "
	end

	if hasHint then
		retval = retval .. BOLD_WEIGHT(utils.escapeBacktickString(hint))
	end

	retval = retval .. " " .. count .. "`"

	return retval
end

-- ROBLOX TODO: ADO-1552 Add stripAddedIndentation when we support inlineSnapshot testing

-- ROBLOX deviation: omitted fileExists and cleanup

local function toMatchSnapshot(...)
	local args = { ... }
	local this: types.Context = args[1]
	local received: any = args[2]
	local propertiesOrHint: any = args[3]
	local hint: ConfigPath = args[4]

	local matcherName = "toMatchSnapshot"
	local properties

	local length = select("#", ...)
	-- ROBLOX deviation: all the length parameters are one more than upstream because
	-- the this parameter isn't counted in upstream
	if length == 3 and typeof(propertiesOrHint) == "string" then
		hint = propertiesOrHint
	elseif length >= 3 then
		if typeof(propertiesOrHint) ~= "table" or typeof(propertiesOrHint) == nil then
			local options: JestMatcherUtils.MatcherHintOptions = {
				isNot = this.isNot,
				promise = this.promise,
			}
			local printedWithType = printWithType("Expected properties", propertiesOrHint, printExpected)

			if length == 4 then
				options.secondArgument = "hint"
				options.secondArgumentColor = BOLD_WEIGHT

				if propertiesOrHint == nil then
					printedWithType = printedWithType
						.. "\n\nTo provide a hint without properties: toMatchSnapshot('hint')"
				end
			end

			error(AssertionError.new({
				message = matcherErrorMessage(
					matcherHint(matcherName, nil, PROPERTIES_ARG, options),
					"Expected " .. EXPECTED_COLOR("properties") .. " must be an object",
					printedWithType
				),
			}))
		end

		-- Future breaking change: Snapshot hint must be a string
		-- if (arguments.length === 3 && typeof hint !== 'string') {}

		properties = propertiesOrHint
	end

	return _toMatchSnapshot({
		context = this,
		hint = hint,
		isInline = false,
		matcherName = matcherName,
		properties = properties,
		received = received,
	})
end

-- ROBLOX TODO: ADO-1552 add toMatchInlineSnapshot

function _toMatchSnapshot(config: MatchSnapshotConfig)
	local context = config.context
	local hint = config.hint
	local inlineSnapshot = config.inlineSnapshot
	local isInline = config.isInline
	local matcherName = config.matcherName
	local properties = config.properties
	local received = config.received

	--[[
		deviation: we modify the TestEZ test runner to record the test context in
		a global state for jest-snapshot to find the correct snapshot
		deviation: loads an empty snapshot state if one doesn't exist, Jest creates
		one by default but we cannot do so because of permission issues
	--]]
	local snapshotFileName = _G[JEST_TEST_CONTEXT].instance.Name:match("(.*)%.spec") .. ".snap"
	if _G[JEST_TEST_CONTEXT].snapshotState == nil then
		local snapshotPath = nil
		pcall(function()
			snapshotPath = _G[JEST_TEST_CONTEXT].instance.Parent.__snapshots__[snapshotFileName]
		end)
		local ok, result = pcall(function()
			return SnapshotState.new(
				snapshotPath,
				{ updateSnapshot = _G.UPDATESNAPSHOT or "none", snapshotFormat = {} }
			)
		end)
		if ok then
			_G[JEST_TEST_CONTEXT].snapshotState = result
		else
			return {
				message = function()
					return "Jest-Roblox: Error while loading snapshot file"
				end,
				pass = false,
			}
		end
	end
	context.snapshotState = context.snapshotState or _G[JEST_TEST_CONTEXT].snapshotState
	context.currentTestName = context.currentTestName or table.concat(_G[JEST_TEST_CONTEXT].blocks, " ")

	-- ROBLOX deviation: we don't call dontThrow because we don't yet have the functionality in
	-- place where we add errors to global matcher state and deal with them accordingly
	-- so we instead rely on throwing the actual errors
	-- local _ = context.dontThrow and context.dontThrow()

	local currentTestName = context.currentTestName
	local isNot = context.isNot
	local snapshotState = context.snapshotState

	if isNot then
		error(AssertionError.new({
			message = matcherErrorMessage(matcherHintFromConfig(config, false), NOT_SNAPSHOT_MATCHERS),
		}))
	end

	if snapshotState == nil then
		-- Because the state is the problem, this is not a matcher error.
		-- Call generic stringify from jest-matcher-utils package
		-- because uninitialized snapshot state does not need snapshot serializers.
		error(AssertionError.new({
			message = matcherHintFromConfig(config, false)
				.. "\n\n"
				.. "Snapshot state must be initialized"
				.. "\n\n"
				.. printWithType("Snapshot state", snapshotState, stringify),
		}))
	end

	local fullTestName = if currentTestName and hint
		then currentTestName .. ": " .. hint :: string
		else currentTestName or "" -- future BREAKING change: || hint

	if typeof(properties) == "table" then
		-- ROBLOX deviation: Roblox Instance matchers
		-- allow property matchers against received Instance values
		if received == nil or (typeof(received) ~= "table" and getType(received) ~= "Instance") then
			error(AssertionError.new({
				message = matcherErrorMessage(
					matcherHintFromConfig(config, false),
					RECEIVED_COLOR("received")
						.. " value must be an object when the matcher has "
						.. EXPECTED_COLOR("properties"),
					printWithType("Received", received, printReceived)
				),
			}))
		end

		local propertyPass = context.equals(received, properties, {
			context.utils.iterableEquality,
			context.utils.subsetEquality,
			-- ROBLOX deviation: Roblox Instance matchers
			-- ROBLOX TODO: uncomment when implementing snapshot property matchers on Instances
			-- context.utils.instanceSubsetEquality,
		})

		if not propertyPass then
			local key = snapshotState:fail(fullTestName, received)
			local matched = key:match("(%d+)$")
			-- ROBLOX deviation START: no way for Luau to know if matched is non-nil then tonumber(matched) is guaranteed to be non-nil
			local count = if matched == nil then 1 else tonumber(matched) :: number
			-- ROBLOX deviation END

			local message = function()
				return matcherHintFromConfig(config, false)
					.. "\n\n"
					.. printSnapshotName(currentTestName, hint, count)
					.. "\n\n"
					.. printPropertiesAndReceived(properties, received, snapshotState.expand)
			end

			return {
				message = message,
				name = matcherName,
				pass = false,
			}
		else
			received = utils.deepMerge(received, properties)
		end
	end

	local result = snapshotState:match({
		error = context.error,
		inlineSnapshot = inlineSnapshot,
		isInline = isInline,
		received = received,
		testName = fullTestName,
	})
	local actual = result.actual
	local count = result.count
	local expected = result.expected
	local pass = result.pass

	if pass then
		return {
			message = function()
				return ""
			end,
			pass = true,
		}
	end

	local message
	if expected == nil then
		message = function()
			local retval = matcherHintFromConfig(config, true)
				.. "\n\n"
				.. printSnapshotName(currentTestName, hint, count)
				.. "\n\n"
				.. "New snapshot was "
				.. BOLD_WEIGHT("not written")
				.. ". The update flag "
				.. "must be explicitly passed to write a new snapshot.\n\n"
				.. "This is likely because this test is run in a continuous integration "
				.. "(CI) environment in which snapshots are not written by default.\n\n"
				.. "Received:"

			if actual:find("\n") then
				retval = retval .. "\n"
			else
				retval = retval .. " "
			end

			retval = retval .. bReceivedColor(actual)

			return retval
		end
	else
		message = function()
			return matcherHintFromConfig(config, true)
				.. "\n\n"
				.. printSnapshotName(currentTestName, hint, count)
				.. "\n\n"
				.. printSnapshotAndReceived(expected, actual, received, snapshotState.expand)
		end
	end

	-- Passing the actual and expected objects so that a custom reporter
	-- could access them, for example in order to display a custom visual diff,
	-- or create a different error message
	return {
		actual = actual,
		expected = expected,
		message = message,
		name = matcherName,
		pass = false,
	}
end

local function toThrowErrorMatchingSnapshot(
	this: types.Context,
	received: any,
	hint: string | any,
	fromPromise: boolean
)
	local matcherName = "toThrowErrorMatchingSnapshot"

	-- Future breaking change: Snapshot hint must be a string
	-- if (hint !== undefined && typeof hint !== string) {}

	return _toThrowErrorMatchingSnapshot({
		context = this,
		hint = hint,
		isInline = false,
		matcherName = matcherName,
		received = received,
	}, fromPromise)
end

function _toThrowErrorMatchingSnapshot(config: types.MatchSnapshotConfig, fromPromise: boolean?)
	local context = config.context
	local hint = config.hint
	local inlineSnapshot = config.inlineSnapshot
	local isInline = config.isInline
	local matcherName = config.matcherName
	local received = config.received

	-- ROBLOX deviation: we don't call dontThrow because we don't yet have the functionality in
	-- place where we add errors to global matcher state and deal with them accordingly
	-- so we instead rely on throwing the actual errors
	-- local _ = context.dontThrow and context.dontThrow()

	local isNot = context.isNot
	local promise = context.promise

	if not fromPromise then
		if typeof(received) ~= "function" then
			local options: JestMatcherUtils.MatcherHintOptions = { isNot = isNot, promise = promise }

			error(AssertionError.new({
				message = matcherErrorMessage(
					matcherHint(matcherName, nil, "", options),
					RECEIVED_COLOR("received") .. " value must be a function",
					printWithType("Received", received, printReceived)
				),
			}))
		end
	end

	if isNot then
		error(AssertionError.new({
			message = matcherErrorMessage(matcherHintFromConfig(config, false), NOT_SNAPSHOT_MATCHERS),
		}))
	end

	local error_

	if fromPromise then
		error_ = received
	else
		local ok, result = pcall(function()
			received()
		end)
		if not ok then
			error_ = result
		end
	end

	if error_ == nil then
		-- Because the received value is a function, this is not a matcher error.
		error(AssertionError.new({ message = matcherHintFromConfig(config, false) .. "\n\n" .. DID_NOT_THROW }))
	end

	-- ROBLOX deviation: instead of being able to set received = error.message in our
	-- _toMatchSnapshot call, we have to deal with different cases since in Lua
	-- we could be dealing with our Error polyfill, a thrown object, or a thrown
	-- string
	if instanceof(error_, Error) or typeof(error_) == "table" and rawget(error_, "message") ~= nil then
		error_ = error_.message
	elseif typeof(error_) ~= "string" then
		error_ = tostring(error_)
	end

	return _toMatchSnapshot({
		context = context,
		hint = hint,
		inlineSnapshot = inlineSnapshot,
		isInline = isInline,
		matcherName = matcherName,
		received = error_,
	})
end

return {
	-- EXTENSION = EXTENSION,
	SnapshotState = SnapshotState,
	addSerializer = addSerializer,
	-- buildSnapshotResolver = buildSnapshotResolver,
	-- cleanup = cleanup,
	getSerializers = getSerializers,
	-- isSnapshotPath = isSnapshotPath,
	-- toMatchInlineSnapshot = toMatchInlineSnapshot,
	toMatchSnapshot = toMatchSnapshot,
	toThrowErrorMatchingSnapshot = toThrowErrorMatchingSnapshot,
	utils = utils,
	-- WORKSPACES FIXME: needs to be exported for consumption by workspace neighbors
	plugins = require(CurrentModule.plugins),
}
