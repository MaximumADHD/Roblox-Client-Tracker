local Src = script:FindFirstAncestor("ViewRecycler")

local ScrollDirection = require(Src.Core.Enums.ScrollDirection)
local Types = require(Src.Core.Types)

export type ScrollDirection = ScrollDirection.ScrollDirection

export type Span = {
	before: number,
	after: number,
}

export type Context = {
	visibleRange: Types.IndexRange,
	scrollOffset: number,
	viewportLength: number,
	scrollDirection: ScrollDirection,
	itemCount: number,
}

export type Policy = {
	compute: (context: Context) -> Span,
}

local DEFAULT_OVERSCAN = 1

local OverscanPolicy = {}

local function validateUnit(value: number, field: string)
	assert(value >= 0 and value % 1 == 0, `OverscanPolicy: {field} must be a non-negative integer`)
end

function OverscanPolicy.fixed(overscan: number?): Policy
	local value = overscan or DEFAULT_OVERSCAN
	validateUnit(value, "fixed overscan")
	local span = table.freeze({
		before = value,
		after = value,
	})
	return table.freeze({
		compute = function()
			return span
		end,
	})
end

return table.freeze(OverscanPolicy)
