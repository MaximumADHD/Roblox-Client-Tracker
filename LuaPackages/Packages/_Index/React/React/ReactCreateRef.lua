-- ROBLOX upstream: https://github.com/facebook/react/blob/b87aabdfe1b7461e7331abb3601d9e6bb27544bc/packages/react/src/ReactCreateRef.js
--!strict
--[[*
 * Copyright (c) Facebook, Inc. and its affiliates.
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
 * @flow
*]]

local Packages = script.Parent.Parent
local ReactGlobals = require(Packages.ReactGlobals)
local ReactTypes = require(Packages.Shared)
type RefObject = ReactTypes.RefObject
local enableAllocationTrims = ReactTypes.ReactFeatureFlags.enableAllocationTrims

-- ROBLOX DEVIATION: In Roact, refs are implemented in terms of bindings
--[[
  A ref is nothing more than a binding with a special field 'current'
  that maps to the getValue method of the binding
]]
local Binding = require(script.Parent["ReactBinding.roblox"])

local exports = {}

-- an immutable object with a single mutable value
exports.createRef = function(): RefObject
	local binding, _ = Binding.create(nil)

	local ref = {}

	-- ROBLOX DEVIATION: Since refs are used as bindings, they can often be
	-- assigned to fields of other Instances; we track creation here parallel to
	-- how we do with bindings created via `createBinding` to improve messaging
	-- when something goes wrong
	if ReactGlobals.__DEV__ then
		-- ROBLOX TODO: LUAFDN-619 - improve debug stacktraces for refs
		binding._source = debug.traceback("Ref created at:", 1)
	end

	--[[
    A ref is just redirected to a binding via its metatable
  ]]
	setmetatable(ref, {
		__index = function(self, key)
			if key == "current" then
				return binding:getValue()
			else
				return (binding :: any)[key]
			end
		end,
		__newindex = function(self, key, value)
			if key == "current" then
				-- ROBLOX FIXME: Bindings - This is not allowed in Roact, but is okay in
				-- React. Lots of discussion at
				-- https://github.com/DefinitelyTyped/DefinitelyTyped/issues/31065
				-- error("Cannot assign to the 'current' property of refs", 2)
				Binding.update(binding, value)
			end

			(binding :: any)[key] = value
		end,
		__tostring = function(self)
			return string.format("Ref(%s)", tostring(binding:getValue()))
		end,
	})

	return (ref :: any) :: RefObject
end

--[[
  With allocation trims, a ref's metatable __index is the binding itself, so
  reading `current` reads the binding's `current` field, which __newindex keeps
  equal to the binding's value (assigning `current` is the only way a ref's
  binding gets updated). The metamethods are shared between refs, and the
  binding doesn't allocate an updater function.
]]
local function refNewIndex(self, key, value)
	local binding = getmetatable(self).__index
	binding[key] = value
	if key == "current" then
		-- ROBLOX FIXME: Bindings - This is not allowed in Roact, but is okay in
		-- React. Lots of discussion at
		-- https://github.com/DefinitelyTyped/DefinitelyTyped/issues/31065
		-- error("Cannot assign to the 'current' property of refs", 2)
		Binding.update(binding, value)
	end
end

local function refToString(self)
	return string.format("Ref(%s)", tostring(getmetatable(self).__index:getValue()))
end

local function createRefWithoutClosures(): RefObject
	-- ROBLOX DEVIATION: see createRef
	local source
	if ReactGlobals.__DEV__ then
		-- ROBLOX TODO: LUAFDN-619 - improve debug stacktraces for refs
		source = debug.traceback("Ref created at:", 1)
	end

	local binding = Binding.createWithoutUpdater(nil, source)
	return (
		setmetatable({}, {
			__index = binding,
			__newindex = refNewIndex,
			__tostring = refToString,
		}) :: any
	) :: RefObject
end

if enableAllocationTrims then
	exports.createRef = createRefWithoutClosures :: () -> RefObject
end

return exports
