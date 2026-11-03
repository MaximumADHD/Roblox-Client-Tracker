-- List item prefixes as the renderer reads them (MarkdownCore's BulletList): a prefix starting
-- with `*` or `-` draws a bullet, and any other prefix is drawn as `{prefix}.`.

local Root = script:FindFirstAncestor("Markdown")
local Packages = Root.Parent
local CommonMark = require(Packages.CommonMark)

type ParserNode = CommonMark.Node

local ListMarkers = {}

-- The first number for an ordered list, or nil for a bullet list.
function ListMarkers.startNumber(list: ParserNode): number?
	if list.kind ~= "OrderedList" then
		return nil
	end
	return (list :: CommonMark.OrderedList).markerStartNumber or 1
end

-- The existing parser's bullet prefixes are "* " and "- ". `+` would draw as "+ .", so it becomes
-- "- ", as does a list with no marker.
function ListMarkers.bulletPrefix(list: ParserNode): string
	local marker = if list.kind == "BulletList" then (list :: CommonMark.BulletList).marker else nil
	return if marker == "*" then "* " else "- "
end

-- The prefix of an ordered list's item: its number, which the renderer follows with `.` whatever
-- the delimiter was (`1)` shows as `1.`).
function ListMarkers.orderedPrefix(number: number): string
	return tostring(number)
end

return ListMarkers
