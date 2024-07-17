--[=[
	Options for range-based querying.

	@interface RangeQueryOptions
	.maxDistance number?
	limit number?

	@within SceneUnderstanding
]=]
export type RangeQueryOptions = {
	-- Controls how far away a Source Asset can be while still being captured.
	-- (Default: `5000`)
	maxDistance: number?,

	-- Limit the number of assets that will be returned. This can be used in
	-- busy scenes where asset detection is bogging down performance. (Default:
	-- `math.huge`)
	limit: number?,
}

local defaultOptions = {
	maxDistance = 100, -- studs
	limit = math.huge,
}

export type RangeQueryOptionsWithDefaults = typeof(defaultOptions) & RangeQueryOptions

local RangeQueryOptions = {}

function RangeQueryOptions.new(providedOptions: RangeQueryOptions?): RangeQueryOptionsWithDefaults
	local options = table.clone(defaultOptions)
	if providedOptions then
		for k, v in providedOptions do
			options[k] = v
		end
	end
	return options
end

return RangeQueryOptions
