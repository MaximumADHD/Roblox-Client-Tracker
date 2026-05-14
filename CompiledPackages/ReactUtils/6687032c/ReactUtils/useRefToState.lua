--!strict
local ReactUtils = script:FindFirstAncestor("ReactUtils")

local Packages = ReactUtils.Parent
local React = require(Packages.React)

-- Maintains a ref to a given value (not necessarily a useState, but that is the extremely common case).
-- This is useful for being able to have an effect/callback not need a dependency on a state if
-- it is unnecessary.
--
-- One common use case of this is to have an effect that relies on state, but you still only want
-- the unmount function to run once.
-- ```
-- React.useEffect(function()
--	return function()
--		sendAnalytics({ type = "closedPage", page = page })
--	end)
-- end, { page })
-- ```
-- This will send an analytic every time the page is change, when we only want
-- it when the page is CLOSED (unmount).
-- `useRefToState` solves this:
-- ```
-- local pageRef = useRefToState(page)
-- React.useEffect(function()
--	return function()
--		sendAnalytics({ type = "closedPage", page = pageRef.current })
--	end
-- end, {}) -- No dependencies
-- ```
local function useRefToState<T>(state: T): { current: T }
	local ref = React.useRef(state) :: { current: T }
	ref.current = state
	return ref
end

return useRefToState
