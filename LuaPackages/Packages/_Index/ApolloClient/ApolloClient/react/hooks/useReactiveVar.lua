--[[
 * Copyright (c) 2021 Apollo Graph, Inc. (Formerly Meteor Development Group, Inc.)
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
]]
-- ROBLOX upstream: https://github.com/apollographql/apollo-client/blob/v3.4.2/src/react/hooks/useReactiveVar.ts
local exports = {}
local srcWorkspace = script.Parent.Parent.Parent
local rootWorkspace = srcWorkspace.Parent

type Function = (...any) -> ...any

local reactModule = require(rootWorkspace.React)
local useEffect = reactModule.useEffect
local useState = reactModule.useState

-- ROBLOX deviation: import from cache module instead of core that reexports it upstream
local cacheModule = require(srcWorkspace.cache)
type ReactiveVar<T> = cacheModule.ReactiveVar<T>

-- ROBLOX deviation: error is triggered because array with nil values has a different count
local NIL = { __value = "nil placeholder" }

local function useReactiveVar<T>(rv: ReactiveVar<T>): T
	local value = rv()
	-- We don't actually care what useState thinks the value of the variable
	-- is, so we take only the update function from the returned array.
	local _, setValue = useState(value)

	-- We subscribe to variable updates on initial mount and when the value has
	-- changed. This avoids a subtle bug in React.StrictMode where multiple
	-- listeners are added, leading to inconsistent updates.
	useEffect(function()
		local probablySameValue = rv()
		if value ~= probablySameValue then
			-- If the value of rv has already changed, we don't need to listen for the
			-- next change, because we can report this change immediately.
			setValue(probablySameValue)
		else
			return rv:onNextChange(setValue)
		end
		-- ROBLOX deviation START: value or NIL here because we need to hold the 'undefined' value
	end :: Function, { value or NIL })
	-- ROBLOX deviation END

	return value
end

exports.useReactiveVar = useReactiveVar

return exports
