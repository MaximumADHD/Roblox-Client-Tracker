--[=[
	Options for viewport-based querying.

	@interface ViewportQueryOptions
	.raycastParams RaycastParams?
	.maxDistance number?
	.maxScreenVisions number?
	limit number?

	@within SceneUnderstanding
]=]
export type ViewportQueryOptions = {
	-- Controls how raycasting is handled under the hood. This parameter has no
	-- default value, so when unspecified there is no extra nuance to worry
	-- about in terms of instance filtering or collision detection. It all uses
	-- the raycasting defaults.
	raycastParams: RaycastParams?,

	-- Controls how far away a Source Asset can be while still being captured.
	-- (Default: `5000`)
	maxDistance: number?,

	-- Controls how many screen divisions are made when raycasting to find
	-- Source Assets. Increasing this value can improve the detection of smaller
	-- assets. (Default: `16`)
	maxScreenDivisions: number?,

	-- Limit the number of assets that will be returned. This can be used in
	-- busy scenes where asset detection is bogging down performance. (Default:
	-- `math.huge`)
	limit: number?,
}

local defaultOptions = {
	maxDistance = 5000,
	maxScreenDivisions = 16,
	limit = math.huge,
}

export type ViewportQueryOptionsWithDefaults = typeof(defaultOptions) & ViewportQueryOptions

local ViewportQueryOptions = {}

function ViewportQueryOptions.new(providedOptions: ViewportQueryOptions?): ViewportQueryOptionsWithDefaults
	local options = table.clone(defaultOptions)
	if providedOptions then
		for k, v in providedOptions do
			options[k] = v
		end
	end
	return options
end

return ViewportQueryOptions
