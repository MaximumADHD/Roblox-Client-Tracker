export type ViewportFraction = {
	viewportFraction: number,
}

export type ReachedThreshold = number | ViewportFraction

local ReachedThreshold = {}

local function validateNumber(value: number, name: string)
	assert(value >= 0 and value < math.huge, `{name} must be a finite non-negative number`)
end

function ReachedThreshold.validate(value: ReachedThreshold, name: string?)
	local label = name or "ReachedThreshold"
	if type(value) == "number" then
		validateNumber(value, label)
		return
	end
	assert(type(value) == "table", `{label} must be a number or viewport-fraction table`)
	assert(type(value.viewportFraction) == "number", `{label}.viewportFraction must be a number`)
	validateNumber(value.viewportFraction, `{label}.viewportFraction`)
end

-- Callers validate a threshold when it is set; resolving runs every scroll.
function ReachedThreshold.resolve(value: ReachedThreshold?, viewportLength: number, defaultValue: number): number
	local resolved = value or defaultValue
	if type(resolved) == "number" then
		return resolved
	end
	return resolved.viewportFraction * viewportLength
end

return table.freeze(ReachedThreshold)
