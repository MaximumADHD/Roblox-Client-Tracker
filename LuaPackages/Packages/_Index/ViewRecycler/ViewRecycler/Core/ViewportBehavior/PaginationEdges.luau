-- Reached-edge notification for pagination. Each edge reports once, then
-- rearms when the viewport leaves it or after a structural data change.
local FFlagViewRecyclerReact08 = require(script:FindFirstAncestor("ViewRecycler").Flags).FFlagViewRecyclerReact08
local Src = script:FindFirstAncestor("ViewRecycler")

local DataSourceChangeType = require(Src.Core.Enums.DataSourceChangeType)

local ReachedThreshold = require(Src.Core.ViewportBehavior.ReachedThreshold)
local Types = require(Src.Core.Types)

export type Config = {
	startReachedThreshold: ReachedThreshold.ReachedThreshold?,
	startReachedEnabled: boolean,
	endReachedEnabled: boolean,
}

export type Input = {
	scrollOffset: number,
	viewportLength: number,
	contentLength: number,
	startThreshold: number,
	atEnd: boolean,
	canReachStart: boolean,
	canReachEnd: boolean,
	rearmAfterStructureChange: boolean?,
}

export type Result = {
	startReached: boolean,
	endReached: boolean,
}

export type PaginationEdges = {
	configure: (config: Config) -> (),
	isEnabled: () -> boolean,
	-- The caller checks only once the list is laid out; an edge without a
	-- callback stays armed.
	check: (scrollState: Types.ScrollState, rearm: boolean) -> (boolean, boolean),
}

local PaginationEdges = {}

local validate
if FFlagViewRecyclerReact08 then
	function validate(config: Config)
		if config.startReachedThreshold ~= nil then
			ReachedThreshold.validate(config.startReachedThreshold, "Virtualizer: startReachedThreshold")
		end
	end
end

function PaginationEdges.hasStructuralChange(changeBatch: Types.DataSourceChangeBatch): boolean
	for _, change in changeBatch.changes do
		if change.type ~= DataSourceChangeType.Update then
			return true
		end
	end
	return false
end

if FFlagViewRecyclerReact08 then
	function PaginationEdges.create(initialConfig: Config): PaginationEdges
		validate(initialConfig)
		local config = initialConfig
		local startArmed = true
		local endArmed = true

		return {
			configure = function(nextConfig)
				validate(nextConfig)
				config = nextConfig
			end,
			isEnabled = function()
				return config.startReachedEnabled or config.endReachedEnabled
			end,
			check = function(scrollState, rearm)
				if rearm then
					startArmed = true
					endArmed = true
				end

				local startThreshold =
					ReachedThreshold.resolve(config.startReachedThreshold, scrollState.viewportLength, 0)
				local atStart = scrollState.scrollOffset <= startThreshold
				local atEnd = scrollState.atEnd
				local startReached = atStart and startArmed and config.startReachedEnabled
				local endReached = atEnd and endArmed and config.endReachedEnabled

				if startReached then
					startArmed = false
				elseif not atStart then
					startArmed = true
				end
				if endReached then
					endArmed = false
				elseif not atEnd then
					endArmed = true
				end

				return startReached, endReached
			end,
		}
	end
else
	function PaginationEdges.create(_initialConfig: Config?): PaginationEdges
		local startArmed = true
		local endArmed = true

		return {
			check = function(input: Input): Result
				if input.rearmAfterStructureChange then
					startArmed = true
					endArmed = true
				end

				local atStart = input.scrollOffset <= input.startThreshold
				local atEnd = input.atEnd
				local startReached = atStart and startArmed and input.canReachStart
				local endReached = atEnd and endArmed and input.canReachEnd

				if startReached then
					startArmed = false
				elseif not atStart then
					startArmed = true
				end
				if endReached then
					endArmed = false
				elseif not atEnd then
					endArmed = true
				end

				return {
					startReached = startReached,
					endReached = endReached,
				}
			end,
		} :: any
	end
end

return PaginationEdges
