local Root = script:FindFirstAncestor("SceneUnderstanding")

local ViewportQueryOptions = require(Root.options.ViewportQueryOptions)

type ViewportQueryOptions = ViewportQueryOptions.ViewportQueryOptions

-- MUS-972 TODO: Stress test this
local function queryViewport(
	camera: Camera,
	predicate: (instance: Instance) -> boolean,
	options: ViewportQueryOptions?
): { Instance }
	local internalOptions = ViewportQueryOptions.new(options)

	local x = 0 -- Initial X position in the grid
	local dx = 1 -- X-axis direction of traversal (right initially)
	local y = 0 -- Initial Y position in the grid
	local dy = 0 -- Y-axis direction of traversal (constant initially)

	local segmentLength = 1
	local stepsTakenInSegment = 0
	local gridSize = internalOptions.maxScreenDivisions

	-- Illustration (numbers represent iteration), notice how we traverse in segments
	--    ... 11 10
	-- 7 7 7 7 6 10
	-- 8 3 3 2 6 10
	-- 8 4 . 1 6 10
	-- 8 4 5 5 5 10
	-- 8 9 9 9 9 9
	local gridCenter = math.ceil(gridSize / 2) - 1

	local matches = {}
	for _ = 1, gridSize * gridSize do
		local screenPoint = Vector2.new(
			(x + 0.5 + gridCenter) * (camera.ViewportSize.X / gridSize),
			(y + 0.5 + gridCenter) * (camera.ViewportSize.Y / gridSize)
		)
		local ray = camera:ScreenPointToRay(screenPoint.X, screenPoint.Y)
		local result =
			workspace:Raycast(ray.Origin, ray.Direction * internalOptions.maxDistance, internalOptions.raycastParams)

		if result and result.Instance and not table.find(matches, result.Instance) and predicate(result.Instance) then
			table.insert(matches, result.Instance)

			if #matches >= internalOptions.limit then
				return matches
			end
		end

		-- Update traversal variables for the next step
		x = x + dx
		y = y + dy
		stepsTakenInSegment = stepsTakenInSegment + 1

		-- Change direction after segment length is reached (moving counter-clockwise)
		if stepsTakenInSegment == segmentLength then
			stepsTakenInSegment = 0
			local temp = dx
			dx = -dy
			dy = temp
			if dy == 0 then
				segmentLength = segmentLength + 1
			end
		end
	end

	return matches
end

return queryViewport
