--[[
	Centralized hover state management for nested submenus.

	Maintains a single "open path" — an array of item IDs representing the currently
	open submenu chain. For example, {"level1", "level2", "level3"} means:
	  - Level 1's submenu is open
	  - Inside it, Level 2's submenu is open
	  - Inside that, Level 3's submenu is open

	All submenu open/close decisions are centralized here, eliminating cascading
	state updates and stale closure issues.
]]

local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local Types = require(Foundation.Components.Types)
type ItemId = Types.ItemId

local useTokens = require(Foundation.Providers.Style.useTokens)

export type SubmenuHoverState = {
	-- The full path of currently open submenu IDs, indexed by depth (1-based)
	openPath: { ItemId },
	-- Open a submenu at the given depth. Truncates deeper items.
	-- When immediate is true, opens synchronously (used for click/tap).
	openAtDepth: (depth: number, id: ItemId, immediate: boolean?) -> (),
	-- Close all submenus at and below the given depth.
	closeAtDepth: (depth: number) -> (),
	-- Immediately reset all open submenus (e.g. on outside click or item activation).
	reset: () -> (),
}

local function truncatePath(path: { ItemId }, toLength: number): { ItemId }
	local newPath = {}
	for i = 1, toLength do
		if path[i] then
			newPath[i] = path[i]
		end
	end
	return newPath
end

local function buildPath(prev: { ItemId }, depth: number, id: ItemId): { ItemId }
	local newPath = truncatePath(prev, depth - 1)
	newPath[depth] = id
	return newPath
end

local function useSubmenuHover(): SubmenuHoverState
	local tokens = useTokens()
	local hoverOpenDelay = tokens.Time.Time_100
	local hoverCloseDelay = tokens.Time.Time_300

	local openPath, setOpenPath = React.useState({} :: { ItemId })
	local openPathRef = React.useRef({} :: { ItemId })
	local openTimer = React.useRef(nil :: thread?)
	local closeTimer = React.useRef(nil :: thread?)

	openPathRef.current = openPath

	local cancelTimers = React.useCallback(function()
		if openTimer.current then
			task.cancel(openTimer.current)
			openTimer.current = nil
		end
		if closeTimer.current then
			task.cancel(closeTimer.current)
			closeTimer.current = nil
		end
	end, {})

	local openAtDepth = React.useCallback(function(depth: number, id: ItemId, immediate: boolean?)
		cancelTimers()

		if openPathRef.current[depth] == id then
			return
		end

		if immediate then
			setOpenPath(function(prev: { ItemId }): { ItemId }
				return buildPath(prev, depth, id)
			end)
			return
		end

		openTimer.current = task.delay(hoverOpenDelay, function()
			setOpenPath(function(prev: { ItemId }): { ItemId }
				return buildPath(prev, depth, id)
			end)
			openTimer.current = nil
		end)
	end, { cancelTimers, hoverOpenDelay } :: { unknown })

	local closeAtDepth = React.useCallback(function(depth: number)
		cancelTimers()

		if #openPathRef.current < depth then
			return
		end

		closeTimer.current = task.delay(hoverCloseDelay, function()
			setOpenPath(function(prev: { ItemId }): { ItemId }
				if #prev < depth then
					return prev
				end
				return truncatePath(prev, depth - 1)
			end)
			closeTimer.current = nil
		end)
	end, { cancelTimers, hoverCloseDelay } :: { unknown })

	-- Immediately clear all open submenus and cancel pending timers.
	-- Used when clicking outside or when a leaf item is activated.
	local reset = React.useCallback(function()
		cancelTimers()
		setOpenPath({})
	end, { cancelTimers })

	-- Cleanup timers on unmount
	React.useEffect(function()
		return function()
			if openTimer.current then
				task.cancel(openTimer.current)
			end
			if closeTimer.current then
				task.cancel(closeTimer.current)
			end
		end
	end, {})

	return {
		openPath = openPath,
		openAtDepth = openAtDepth,
		closeAtDepth = closeAtDepth,
		reset = reset,
	}
end

return useSubmenuHover
