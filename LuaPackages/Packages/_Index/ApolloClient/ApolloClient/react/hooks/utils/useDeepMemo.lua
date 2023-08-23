--[[
 * Copyright (c) 2021 Apollo Graph, Inc. (Formerly Meteor Development Group, Inc.)
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/apollographql/apollo-client/blob/v3.4.2/src/react/hooks/utils/useDeepMemo.ts
local exports = {}

local srcWorkspace = script.Parent.Parent.Parent.Parent
local rootWorkspace = srcWorkspace.Parent

local React = require(rootWorkspace.React)
local useRef = React.useRef
local equal = require(srcWorkspace.jsutils.equal)

--[[
	/**
 * Memoize a result using deep equality. This hook has two advantages over
 * React.useMemo: it uses deep equality to compare memo keys, and it guarantees
 * that the memo function will only be called if the keys are unequal.
 * React.useMemo cannot be relied on to do this, since it is only a performance
 * optimization (see https://reactjs.org/docs/hooks-reference.html#usememo).
 */
]]
local function useDeepMemo<TKey, TValue>(memoFn: (() -> TValue), key: TKey): TValue
	local ref = useRef((nil :: any) :: { key: TKey, value: TValue })
	if not ref.current or not equal(key, ref.current.key) then
		ref.current = { key = key, value = memoFn() }
	end
	-- ROBLOX FIXME Luau: analyze fails to narrow based on 'not .current' and '.current =' above
	return (ref.current :: { key: TKey, value: TValue }).value
end
exports.useDeepMemo = useDeepMemo
return exports
