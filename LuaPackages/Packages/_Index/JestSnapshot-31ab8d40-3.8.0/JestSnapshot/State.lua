-- ROBLOX upstream: https://github.com/facebook/jest/blob/v28.0.0/packages/jest-snapshot/src/State.ts
-- /**
--  * Copyright (c) Facebook, Inc. and its affiliates. All Rights Reserved.
--  *
--  * This source code is licensed under the MIT license found in the
--  * LICENSE file in the root directory of this source tree.
--  */

-- ROBLOX deviation: omitting fs and types file import and defining in line instead

local CurrentModule = script.Parent
local Packages = CurrentModule.Parent

local LuauPolyfill = require(Packages.LuauPolyfill)
local Array = LuauPolyfill.Array
local Error = LuauPolyfill.Error
type Error = LuauPolyfill.Error
local Object = LuauPolyfill.Object
local Set = LuauPolyfill.Set

local JestTypes = require(Packages.JestTypes)
-- ROBLOX deviation: custom type
type ConfigPath = {
	getInstance: () -> ModuleScript?,
	getPath: () -> string,
}
-- ROBLOX deviation END
type ConfigSnapshotUpdateState = JestTypes.Config_SnapshotUpdateState

-- local JestMessageUtil = require(Packages.JestMessageUtil)
-- local getStackTraceLines = JestMessageUtil.getStackTraceLines
-- local getTopFrame = JestMessageUtil.getTopFrame

-- ROBLOX TODO: fix PrettyFormat types imports
-- local PrettyFormat = require(Packages.PrettyFormat)
local PrettyFormat = require(CurrentModule.PrettyFormat)
type PrettyFormatOptions = PrettyFormat.OptionsReceived

local utils = require(CurrentModule.utils)
local addExtraLineBreaks = utils.addExtraLineBreaks
local getSnapshotData = utils.getSnapshotData
local keyToTestName = utils.keyToTestName
local removeExtraLineBreaks = utils.removeExtraLineBreaks
-- ROBLOX TODO: ADO-1552 translate this function when we add inlineSnapshot functionality
-- local removeLinesBeforeExternalMatcherTrap = utils.removeLinesBeforeExternalMatcherTrap
local saveSnapshotFile = utils.saveSnapshotFile
local serialize = utils.serialize
local testNameToKey = utils.testNameToKey

-- ROBLOX TODO: ADO-1552 add inline_snapshots imports when we support this
-- functionality

local types = require(CurrentModule.types)
-- ROBLOX deviation: we do not have the BabelTraverse or Prettier types defined in the
-- types file
type SnapshotData = types.SnapshotData

export type SnapshotStateOptions = {
	updateSnapshot: ConfigSnapshotUpdateState,
	-- ROBLOX deviation: the function return is defined as any instead of null | Prettier
	-- prettierPath: ConfigPath;
	expand: boolean?,
	snapshotFormat: PrettyFormatOptions,
}

export type SnapshotMatchOptions = {
	testName: string,
	received: any?,
	key: string?,
	inlineSnapshot: string?,
	isInline: boolean,
	-- ROBLOX deviation: error type defined as any instead of Error
	error_: any,
}

type SnapshotReturnOptions = {
	actual: string,
	count: number,
	expected: string?,
	key: string,
	pass: boolean,
}

type SaveStatus = {
	deleted: boolean,
	saved: boolean,
}

export type SnapshotState = {
	markSnapshotsAsCheckedForTest: (self: SnapshotState, testName: string) -> (),
	clear: (self: SnapshotState) -> (),
	save: (self: SnapshotState) -> SaveStatus,
	getUncheckedCount: (self: SnapshotState) -> number,
	getUncheckedKeys: (self: SnapshotState) -> { string },
	removeUncheckedKeys: (self: SnapshotState) -> (),
	match: (self: SnapshotState, snapshotMatchOptions: SnapshotMatchOptions) -> SnapshotReturnOptions,
	fail: (self: SnapshotState, testName: string, _received: any, key: string) -> string,
}

type SnapshotState_statics = {
	new: (snapshotPath: ConfigPath, options: SnapshotStateOptions) -> SnapshotState,
}

type SnapshotStatePrivate = {
	_counters: { [string]: number },
	_dirty: boolean,
	_index: number,
	_updateSnapshot: ConfigSnapshotUpdateState,
	_snapshotData: SnapshotData,
	_initialData: SnapshotData,
	_snapshotPath: ConfigPath,
	-- ROBLOX TODO: ADO-1552 align this type as Array<InlineSnapshot> when we support inlineSnapshot testing
	_inlineSnapshots: { any },
	-- ROBLOX deviation: defined as any for now because LuauPolyfill.Set<string> and Set.Set<string>
	-- both didn't seem to be working
	_uncheckedKeys: any,
	-- _uncheckedKeys: LuauPolyfill.Set<string>,
	-- ROBLOX deviation: omitting field _prettierPath
	-- _prettierPath: ConfigPath;
	_snapshotFormat: PrettyFormatOptions,

	added: number,
	expand: boolean,
	matched: number,
	unmatched: number,
	updated: number,

	_addSnapshot: (
		self: SnapshotStatePrivate,
		key: string,
		receivedSerialized: string,
		options: { isInline: boolean, error: Error? }
	) -> (),

	markSnapshotsAsCheckedForTest: (self: SnapshotStatePrivate, testName: string) -> (),
	clear: (self: SnapshotStatePrivate) -> (),
	save: (self: SnapshotStatePrivate) -> SaveStatus,
	getUncheckedCount: (self: SnapshotStatePrivate) -> number,
	getUncheckedKeys: (self: SnapshotStatePrivate) -> { string },
	removeUncheckedKeys: (self: SnapshotStatePrivate) -> (),
	match: (self: SnapshotStatePrivate, snapshotMatchOptions: SnapshotMatchOptions) -> SnapshotReturnOptions,
	fail: (self: SnapshotStatePrivate, testName: string, _received: any, key: string) -> string,
}

local SnapshotState = {} :: SnapshotStatePrivate & SnapshotState_statics;
(SnapshotState :: any).__index = SnapshotState

function SnapshotState.new(snapshotPath: ConfigPath, options: SnapshotStateOptions): SnapshotState
	local returnValue = getSnapshotData(
		-- ROBLOX deviation START: get instance of a snapshot
		snapshotPath.getInstance(),
		-- ROBLOX deviation END
		options.updateSnapshot
	)
	local data = returnValue.data
	local dirty = returnValue.dirty

	local self = {
		_snapshotPath = snapshotPath,
		_initialData = data,
		_snapshotData = data,
		_dirty = dirty,
		-- ROBLOX deviation: omitting assignment for getBabelTraverse, getPrettier
		_inlineSnapshots = {},
		_uncheckedKeys = Set.new(Object.keys(data)),
		_counters = {},
		_index = 0,
		expand = options.expand or false,
		added = 0,
		matched = 0,
		unmatched = 0,
		_updateSnapshot = options.updateSnapshot,
		updated = 0,
		_snapshotFormat = options.snapshotFormat,
	}

	return (setmetatable(self, SnapshotState) :: any) :: SnapshotState
end

function SnapshotState:markSnapshotsAsCheckedForTest(testName: string): ()
	for _, uncheckedKey in self._uncheckedKeys do
		if keyToTestName(uncheckedKey) == testName then
			self._uncheckedKeys:delete(uncheckedKey)
		end
	end
end

-- ROBLOX deviation: Error type annotated as any
function SnapshotState:_addSnapshot(
	key: string,
	receivedSerialized: string,
	options: { isInline: boolean, error: any? }
): ()
	self._dirty = true
	if options.isInline then
		-- ROBLOX TODO: ADO-1552 Add when we support inlineSnapshot testing
		error(Error("Jest-Roblox: inline snapshot testing is not currently supported"))
	else
		self._snapshotData[key] = receivedSerialized
	end
end

function SnapshotState:clear(): ()
	self._snapshotData = self._initialData
	self._inlineSnapshots = {}
	self._counters = {}
	self._index = 0
	self.added = 0
	self.matched = 0
	self.unmatched = 0
	self.updated = 0
end

function SnapshotState:save(): SaveStatus
	-- ROBLOX deviation START: checking if there is more than 0 keys as `0` is considered truthy in L
	local hasExternalSnapshots = #Object.keys(self._snapshotData) > 0
	local hasInlineSnapshots = #self._inlineSnapshots > 0
	-- ROBLOX deviation END
	local isEmpty = not hasExternalSnapshots and not hasInlineSnapshots

	local status: SaveStatus = {
		deleted = false,
		saved = false,
	}

	if (self._dirty or self._uncheckedKeys.size > 0) and not isEmpty then
		if hasExternalSnapshots and (self._dirty or self._updateSnapshot == "all") then
			saveSnapshotFile(
				self._snapshotData,
				-- ROBLOX deviation START: custom logic
				self._snapshotPath.getPath()
				-- ROBLOX deviation END
			)
		end
		if hasInlineSnapshots then
			-- ROBLOX TODO: Add when we support inlineSnapshot testing
			error(Error("Jest-Roblox: inline snapshot testing is not currently supported"))
		end
		status.saved = true
	elseif
		not hasExternalSnapshots
		-- ROBLOX deviation START: check if ModuleScript for given snapshot file exists
		and self._snapshotPath.getInstance() ~= nil
		-- ROBLOX deviation END
	then
		-- ROBLOX deviation START: omitted part of code dealing with unlinking file until we have
		-- robust final solution for I/O. This may not even be needed in our translation?
		if self._updateSnapshot == "all" then
			error(
				"Jest-Roblox: You shouldn't reach this code path. Please file an issue at github.com/Roblox/jest-roblox-internal or in #jest-roblox"
			)
			--	fs.unlinkSync(this._snapshotPath)
		end
		-- ROBLOX deviation END
		status.deleted = true
	end

	return status
end

function SnapshotState:getUncheckedCount(): number
	return self._uncheckedKeys.size or 0
end

function SnapshotState:getUncheckedKeys(): { string }
	return Array.from(self._uncheckedKeys)
end

function SnapshotState:removeUncheckedKeys(): ()
	if self._updateSnapshot == "all" and self._uncheckedKeys.size > 0 then
		self._dirty = true
		for _, key in self._uncheckedKeys do
			self._snapshotData[key] = nil
		end
		self._uncheckedKeys:clear()
	end
end

function SnapshotState:match(snapshotMatchOptions: SnapshotMatchOptions): SnapshotReturnOptions
	local testName = snapshotMatchOptions.testName
	local received = snapshotMatchOptions.received
	-- ROBLOX deviation START: not supported
	-- local inlineSnapshot = snapshotMatchOptions.inlineSnapshot
	-- ROBLOX deviation END
	local isInline = snapshotMatchOptions.isInline
	local error_ = snapshotMatchOptions.error_

	self._counters[testName] = (self._counters[testName] or 0) + 1
	local count = self._counters[testName]

	local key = if snapshotMatchOptions.key then snapshotMatchOptions.key else testNameToKey(testName, count)

	-- Do not mark the snapshot as "checked" if the snapshot is inline and
	-- there's an external snapshot. This way the external snapshot can be
	-- removed with `--updateSnapshot`.
	if not (isInline and self._snapshotData[key] ~= nil) then
		self._uncheckedKeys:delete(key)
	end

	local receivedSerialized = addExtraLineBreaks(serialize(received, nil, self._snapshotFormat))
	local expected
	if isInline then
		-- ROBLOX TODO: ADO-1552 Add when we support inlineSnapshot testing
		error(Error("Jest-Roblox: inline snapshot testing is not currently supported"))
	else
		expected = self._snapshotData[key]
	end

	local pass = expected == receivedSerialized
	local hasSnapshot = expected ~= nil
	local snapshotPathExists, _ = pcall(function()
		local _ = require(self._snapshotPath.getInstance()) :: any
	end)
	local snapshotIsPersisted = isInline or snapshotPathExists

	if pass and not isInline then
		-- Executing a snapshot file as JavaScript and writing the strings back
		-- when other snapshots have changed loses the proper escaping for some
		-- characters. Since we check every snapshot in every test, use the newly
		-- generated formatted string.
		-- Note that this is only relevant when a snapshot is added and the dirty
		-- flag is set.
		self._snapshotData[key] = receivedSerialized
	end

	-- These are the conditions on when to write snapshots:
	--  * There's no snapshot file in a non-CI environment.
	--  * There is a snapshot file and we decided to update the snapshot.
	--  * There is a snapshot file, but it doesn't have this snaphsot.
	-- These are the conditions on when not to write snapshots:
	--  * The update flag is set to 'none'.
	--  * There's no snapshot file or a file without this snapshot on a CI environment.
	if
		(hasSnapshot and self._updateSnapshot == "all")
		or (
			(not hasSnapshot or not snapshotIsPersisted)
			and (self._updateSnapshot == "new" or (self._updateSnapshot :: any) == "all")
		)
	then
		if self._updateSnapshot == "all" then
			if not pass then
				if hasSnapshot then
					self.updated = self.updated + 1
				else
					self.added = self.added + 1
				end
				self:_addSnapshot(key, receivedSerialized, { error = error_, isInline = isInline })
			else
				self.matched = self.matched + 1
			end
		else
			self:_addSnapshot(key, receivedSerialized, { error = error_, isInline = isInline })
			self.added = self.added + 1
		end

		return {
			actual = "",
			count = count,
			expected = "",
			key = key,
			pass = true,
		}
	else
		if not pass then
			self.unmatched = self.unmatched + 1
			local expectedValue = if expected then removeExtraLineBreaks(expected) else nil
			return {
				actual = removeExtraLineBreaks(receivedSerialized),
				count = count,
				expected = expectedValue,
				key = key,
				pass = false,
			}
		else
			self.matched = self.matched + 1
			return {
				actual = "",
				count = count,
				expected = "",
				key = key,
				pass = true,
			}
		end
	end
end

-- ROBLOX deviation: changed string? to string so that return type could align
function SnapshotState:fail(testName: string, _received: any, key: string): string
	self._counters[testName] = (self._counters[testName] or 0) + 1
	local count = self._counters[testName]

	key = key or testNameToKey(testName, count)

	self._uncheckedKeys:delete(key)
	self.unmatched = self.unmatched + 1
	return key
end

return {
	default = SnapshotState :: SnapshotState & SnapshotState_statics,
}
