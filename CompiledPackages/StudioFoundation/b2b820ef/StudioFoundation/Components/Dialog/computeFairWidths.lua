--[[
	Computes fair button widths to distribute available horizontal space.

	## Why
	When dialog buttons overflow their container, we need to decide which buttons to truncate
	and by how much. A naive equal-width split wastes space when some buttons are short.
	This function implements a "shrink longest first" strategy that preserves short buttons
	at their natural width while only shrinking the buttons that cause the overflow.

	## Mental Model
	Imagine shrinking from the longest button down:

	1. Take the longest button and shrink it until it matches the second longest.
	   Now the two longest buttons are tied.
	2. Shrink both of them together until they match the third longest.
	   Now the three longest are tied.
	3. Repeat until the total width fits within the available space.

	At each step, if the buttons being shrunk together reach the point where
	everything fits, stop — that's the threshold. Short buttons are never touched
	unless ALL buttons need to shrink.

	## Example
	Buttons: "OK" (60px), "This is very long" (300px), "Cancel" (50px)
	Container: 300px, gap: 8px → available = 300 - 16 = 284px

	1. Shrink 300 → max(284 - 60 - 50, 60) = max(174, 60) = 174.
	   Total = 50 + 60 + 174 = 284 ✓. Done.
	Result: "Cancel" = 50, "OK" = 60, "This is very long" = 174.
	Only the long button is truncated; short buttons keep their natural width.

	## Implementation
	Rather than iteratively shrinking from the top, the code finds the threshold in a
	single pass from the bottom (ascending sort). This is mathematically equivalent:
	for each button from shortest to longest, check if it fits within the equal share
	of remaining space. If it does, it would never be shrunk in the top-down model —
	subtract it and continue. If it doesn't, all remaining buttons share the remaining
	space equally — that's the threshold.

	## Returns
	nil if no overflow (all buttons fit at natural width).
	{ [id]: width } otherwise, where each width is min(naturalWidth, threshold).
]]
local function computeFairWidths(
	naturalWidths: { [string]: number },
	containerWidth: number,
	numButtons: number,
	gapSize: number
): { [string]: number }?
	local entries = {}
	for id, width in naturalWidths do
		table.insert(entries, { id = id, width = width })
	end

	local n = numButtons
	if n == 0 then
		return nil
	end

	-- Available space after accounting for gaps between buttons
	local available = containerWidth - math.max(n - 1, 0) * gapSize

	-- Check if everything fits without truncation
	local totalNatural = 0
	for _, entry in entries do
		totalNatural += entry.width
	end

	if totalNatural <= available then
		return nil
	end

	-- Sort ascending to find the threshold in one pass. Each button that fits
	-- within the equal share of remaining space would survive all rounds of
	-- shrinking from the top — subtract it and move on. The first button that
	-- doesn't fit marks the threshold: it and all larger buttons share the
	-- remaining space equally (equivalent to shrinking the longest together).
	table.sort(entries, function(a, b)
		return a.width < b.width
	end)

	local threshold = available / n
	local remaining = available
	for i, entry in entries do
		local equalShare = remaining / (n - i + 1)
		if entry.width >= equalShare then
			threshold = equalShare
			break
		end
		remaining -= entry.width
	end

	local widths = {}
	for _, entry in entries do
		widths[entry.id] = math.max(math.min(entry.width, threshold), 0)
	end
	return widths
end

return computeFairWidths
