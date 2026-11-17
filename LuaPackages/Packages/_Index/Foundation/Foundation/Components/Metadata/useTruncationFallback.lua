local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local Services = require(Foundation.Utility.Wrappers.Services)
local Types = require(Foundation.Components.Types)
local getTextBoundsAsync = require(Foundation.Utility.getTextBoundsAsync)
local normalizeFontFace = require(Foundation.Utility.normalizeFontFace)
local RunService = Services.RunService

local SHRINK_RATIO_BASE = 1000
local COLLAPSED_SLACK = 1
local RELEASE_MARGIN = 4
local MAX_SETTLE_FRAMES = 10
local ELLIPSIS = "…"

-- Shared by every Metadata with the same font, and only filled once an item actually collapses.
local ellipsisWidths: { [string]: number } = {}

type FallbackState = {
	key: string,
	level: number,
}

export type TruncationFallback = {
	minWidth: number,
	getShrinkRatio: (priority: number) -> number?,
	isPinned: (priority: number) -> boolean,
	isDeciding: (priority: number) -> boolean,
	onSizeChanged: (priority: number, instance: TextLabel) -> (),
}

-- Items truncate one after another by priority (0 = the `truncateIndex` item): the next item may only shrink
-- once the current one has collapsed, and collapsed items are pinned at `minWidth` (the width of `…`).
-- Earlier items get far larger shrink ratios so they give up space first.
local function useTruncationFallback(key: string, itemCount: number, fontStyle: Types.FontStyle): TruncationFallback
	local state, setState = React.useState({ key = key, level = 0 } :: FallbackState)
	local level = if state.key == key then state.level else 0
	local maxLevel = math.max(itemCount - 1, 0)
	local fontKey = `{fontStyle.Font}|{fontStyle.FontSize}`
	local minWidth = ellipsisWidths[fontKey] or 0
	local pendingChecks = React.useRef({} :: { [number]: RBXScriptConnection })
	local labels = React.useRef({} :: { [number]: TextLabel })

	React.useEffect(function()
		return function()
			for _, connection in pendingChecks.current do
				connection:Disconnect()
			end
			table.clear(pendingChecks.current)
			table.clear(labels.current)
		end
	end, { key })

	local updateLevel = React.useCallback(function(priority: number, width: number, fits: boolean)
		local isCollapsed = not fits and width <= minWidth + COLLAPSED_SLACK
		local nextLevel = level
		if priority == level and level < maxLevel and isCollapsed then
			nextLevel = level + 1
		elseif priority == level - 1 and width > minWidth + RELEASE_MARGIN then
			nextLevel = level - 1
		end
		if nextLevel > level and ellipsisWidths[fontKey] == nil then
			local font = normalizeFontFace(fontStyle.Font)
			local size = if typeof(font) == "Font"
				then getTextBoundsAsync(ELLIPSIS, font, fontStyle.FontSize or 0)
				else nil
			if size and size.X > 0 then
				ellipsisWidths[fontKey] = math.ceil(size.X)
			end
		end
		if nextLevel ~= level then
			setState({ key = key, level = nextLevel })
		end
	end, { key, level, maxLevel, minWidth, fontKey, fontStyle } :: { unknown })

	-- Pending checks run a frame later, so they must use the latest key and `minWidth`, not the ones they were scheduled with.
	local latestUpdateLevel = React.useRef(updateLevel)
	latestUpdateLevel.current = updateLevel

	-- While layout settles, a label's text bounds can exceed its width; wait for them to match before deciding.
	local onSizeChanged = React.useCallback(function(priority: number, instance: TextLabel)
		labels.current[priority] = instance
		if pendingChecks.current[priority] then
			return
		end
		local frames = 0
		local function check()
			frames += 1
			local width = instance.AbsoluteSize.X
			if instance.TextBounds.X > width + COLLAPSED_SLACK and frames < MAX_SETTLE_FRAMES then
				pendingChecks.current[priority] = RunService.Heartbeat:Once(check)
				return
			end
			pendingChecks.current[priority] = nil
			latestUpdateLevel.current(priority, width, instance.TextFits)
		end
		pendingChecks.current[priority] = RunService.Heartbeat:Once(check)
	end, {})

	-- A level, text, or `minWidth` change can leave the deciding items at the same width, so no size event fires.
	React.useEffect(function()
		for _, priority in { level - 1, level } do
			local label = labels.current[priority]
			if label and label.Parent then
				onSizeChanged(priority, label)
			end
		end
	end, { level, key, minWidth, onSizeChanged } :: { unknown })

	local getShrinkRatio = React.useCallback(function(priority: number): number?
		return if priority <= level then SHRINK_RATIO_BASE ^ (level - priority) else nil
	end, { level })

	local isPinned = React.useCallback(function(priority: number): boolean
		return priority < level
	end, { level })

	local isDeciding = React.useCallback(function(priority: number): boolean
		return priority == level or priority == level - 1
	end, { level })

	return {
		minWidth = minWidth,
		getShrinkRatio = getShrinkRatio,
		isPinned = isPinned,
		isDeciding = isDeciding,
		onSizeChanged = onSizeChanged,
	}
end

return useTruncationFallback
