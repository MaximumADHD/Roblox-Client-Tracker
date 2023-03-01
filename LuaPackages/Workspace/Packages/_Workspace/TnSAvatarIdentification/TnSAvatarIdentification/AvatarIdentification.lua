--!nonstrict
local PlayersService = game:GetService("Players")

local BAILOUT_TIME_S = 0.5

local exports = {}
function shouldIgnoreLocalCharacter(localCharacter: Model): boolean
	local head = localCharacter:FindFirstChild("Head")
	if head and head:IsA("BasePart") then
		-- This will be true if the player is in first person.
		return head.LocalTransparencyModifier >= 0.95
	end
	return false
end
function getLocalCharacterPosition(localCharacter: Model): Vector3?
	local rootPart = localCharacter:FindFirstChild("HumanoidRootPart")
	if not rootPart then
		return nil
	end
	return rootPart.Position
end

function getBBCorners(frame: CFrame, size: Vector3): { Vector3 }
	local result: { Vector3 } = table.create(8)

	local vX = frame.XVector
	local vY = frame.YVector
	local vZ = frame.ZVector
	local i: number = 1
	for xChangeSign = -0.5, 0.5 do
		local xChange = vX * xChangeSign * size.X
		for yChangeSign = -0.5, 0.5 do
			local yChange = vY * yChangeSign * size.Y
			for zChangeSign = -0.5, 0.5 do
				local zChange = vZ * zChangeSign * size.Z

				result[i] = frame.Position + xChange + yChange + zChange
				i += 1
			end
		end
	end
	return result
end

local defaultMax: Vector2 = Vector2.new(0, 0)
local defaultMin: Vector2 = Vector2.new(math.huge, math.huge)
function getCoveringPolygon(castResults: { PartVisibilityResult }, camera: Camera, character: Model): { Vector2 }
	local viewportSize: Vector2 = camera.ViewportSize
	local bbCorners3d: { Vector3 } = {}

	for _, castResult in ipairs(castResults) do
		-- the hitInstance is something belonging to the character
		-- but could be an accessory of some sort. Spot checking accessory BBs,
		-- they don't seem as rigorous as those for other parts that are subject to
		-- physics.
		-- Ignore the accessories for now.
		local targetPart: BasePart = castResult.target

		local frame: CFrame = targetPart.ExtentsCFrame
		local size: Vector3 = targetPart.ExtentsSize
		local corners = getBBCorners(frame, size)
		for _, corner in corners do
			table.insert(bbCorners3d, corner)
		end
	end

	local bbCorners2d: { Vector2 } = table.create(#bbCorners3d)
	for i, bbCorner in ipairs(bbCorners3d) do
		local viewportCoords: Vector3, _ = camera:WorldToViewportPoint(bbCorner)
		local relativeCoords = Vector2.new(viewportCoords.X, viewportCoords.Y) / viewportSize
		bbCorners2d[i] = relativeCoords
	end

	return getConvexHull(bbCorners2d)
end

function getViewportCorners(worldBBCorners: { Vector3 }, camera: Camera): (Vector2, Vector2)
	local viewportMin: Vector2 = defaultMin
	local viewportMax: Vector2 = defaultMax
	local viewportSize: Vector2 = camera.ViewportSize
	local visibleCount = 0
	for _, worldBBCorner in ipairs(worldBBCorners) do
		local viewportPos: Vector3, visible: boolean = camera:WorldToViewportPoint(worldBBCorner)
		local normalized: Vector2 = Vector2.new(viewportPos.X / viewportSize.X, viewportPos.Y / viewportSize.Y)

		if not visible then
			normalized = Vector2.new(math.clamp(normalized.X, 0, 1), math.clamp(normalized.Y, 0, 1))
		end
		visibleCount += 1
		-- Vector2 has Min, Max but the type checker doesn't believe so
		viewportMin = (viewportMin :: any):Min(normalized)
		viewportMax = (viewportMax :: any):Max(normalized)
	end

	if visibleCount <= 2 then
		return defaultMin, defaultMax
	end

	return viewportMin, viewportMax
end

-- If this is negative, the center of the CFrame in question is behind the camera
function getDistanceAlongCamLookVector(objectFrame: CFrame, camera: Camera): number
	local cameraFrame: CFrame = camera.CFrame

	local vCameraToObject: Vector3 = objectFrame.Position - cameraFrame.Position
	local distanceAlongLV: number = vCameraToObject:Dot(cameraFrame.LookVector)
	return distanceAlongLV
end

type PartVisibilityResult = {
	result: RaycastResult,
	target: BasePart,
}

function getVisibleParts(camera: Camera, player: Player, ignorableParts: { Model }): (number, { PartVisibilityResult })
	local cameraPos = camera.CFrame.Position

	local characterMaybe: Model? = player.Character
	if not characterMaybe or not characterMaybe.Parent then
		return 0, {}
	end
	local character: Model = characterMaybe :: Model

	local children = character:GetChildren()
	local raycastParams: RaycastParams = RaycastParams.new()
	raycastParams.FilterType = Enum.RaycastFilterType.Exclude
	raycastParams.FilterDescendantsInstances = ignorableParts
	raycastParams.IgnoreWater = true

	local attemptedCasts: number = 0
	local hitPoints: { PartVisibilityResult } = {}
	for _, child in ipairs(children) do
		if child:IsA("BasePart") then
			local partCFrame = child.CFrame
			local direction: Vector3 = partCFrame.Position - cameraPos

			-- technically we should start from the near clip plane, not the
			-- exact camera position. This new pos can be calculated as
			-- cameraPos + (^direction [normalized direction] *
			-- (nearClipDistance / (^look • ^direction)))
			-- Ignore this for now.
			attemptedCasts += 1
			local result: RaycastResult = workspace:Raycast(cameraPos, direction, raycastParams)
			if result.Instance:IsDescendantOf(character) then
				table.insert(hitPoints, {
					result = result,
					target = child,
				})
			end
		end
	end

	return attemptedCasts, hitPoints
end

local function counterclockwise(p1: Vector2, p2: Vector2, p3: Vector2): number
	return (p2 - p1):Cross(p3 - p2)
end

function getConvexHull(points: { Vector2 }): { Vector2 }
	if #points <= 2 then
		-- Less than 3 points not useful for our purposes
		return {}
	end

	local stack = {}
	local lowestPoint: Vector2 = points[1]
	local byPolarAngle: { Vector3 } = {}
	for i = 2, #points, 1 do
		local point = points[i]
		if point.Y < lowestPoint.Y or (point.Y == lowestPoint.Y and point.X < lowestPoint.X) then
			lowestPoint = point
		end
	end

	table.insert(stack, lowestPoint)
	local function angleFromLowest(v: Vector2): number
		local diff1: Vector2 = v - lowestPoint
		return math.atan2(diff1.Y, diff1.X)
	end

	for _, point in ipairs(points) do
		if point == lowestPoint then
			continue
		end
		table.insert(byPolarAngle, Vector3.new(point.X, point.Y, angleFromLowest(point)))
	end

	local function compareByAngle(v1: Vector3, v2: Vector3): boolean
		if v1.Z ~= v2.Z then
			return v1.Z < v2.Z
		end
		return (Vector2.new(v1.X, v1.Y) - lowestPoint).Magnitude < (Vector2.new(v1.X, v1.Y) - lowestPoint).Magnitude
	end

	table.sort(byPolarAngle, compareByAngle)
	local toConsider: { Vector2 } = {}

	local lastItem: Vector3 = byPolarAngle[1]
	-- There are at least two items in toConsider
	for i = 2, #byPolarAngle do
		local thisItem = byPolarAngle[i]
		if lastItem.Z == thisItem.Z then
			lastItem = thisItem
			continue
		end
		table.insert(toConsider, Vector2.new(lastItem.X, lastItem.Y))
		lastItem = thisItem
	end
	table.insert(toConsider, Vector2.new(lastItem.X, lastItem.Y))

	if #toConsider == 1 then
		-- Trivial case of collinear points, unlikely due to finite numerical
		-- precision. Not useful for our purposes so return nothing.
		return {}
	end

	table.insert(stack, toConsider[1])
	table.insert(stack, toConsider[2])
	for i = 3, #toConsider do
		local current: Vector2 = toConsider[i]
		while #stack > 1 and counterclockwise(stack[#stack - 1], stack[#stack], current) <= 0 do
			table.remove(stack)
		end
		table.insert(stack, current)
	end
	return stack
end

type VisiblePlayer = {
	player: Player,
	distance: number,
	boundingBox: {
		min: Vector2,
		max: Vector2,
	},
	hitRate: number,
	convexHull: { Vector2 },
}

type Results = {
	[number]: VisiblePlayer,
}

type AvatarIDStats = {
	-- number of players besides the local player
	totalPlayers: number,
	-- number of players we had time to consider for avatar ID
	-- should equal totalPlayers if we had enough time to check everyone
	checkedPlayers: number,
	-- how long it took in wall clock time to ID avatars
	duration: number,
}

exports.getAvatarsForPoint = function(identifiedAvatars: Results, queryPoint: Vector2): { Player }
	local results: { [number]: Player } = {}

	for userId, playerResult in pairs(identifiedAvatars) do
		local bb = playerResult.boundingBox

		-- check BB first to save computation
		if queryPoint.X < bb.min.X or queryPoint.Y < bb.min.Y or queryPoint.X > bb.max.X or queryPoint.Y > bb.max.Y then
			continue
		end

		local convexHull = playerResult.convexHull
		if #convexHull < 3 then
			continue
		end

		local lastPoint = convexHull[#convexHull]
		local allPositive = true
		local allNegative = true
		for _, currentPoint in ipairs(convexHull) do
			-- cross product between v(A, query) and v(A, B) will be the
			-- same sign for every edge if query is inside hull.
			local crossProduct = (currentPoint - lastPoint):Cross(queryPoint - lastPoint)
			-- use <= to allow a point on the edge to count as "in"
			allNegative = allNegative and (crossProduct <= 0)
			allPositive = allPositive and (crossProduct >= 0)
			lastPoint = currentPoint
		end

		if allPositive or allNegative then
			results[playerResult.player.UserId] = playerResult.player
		end
	end

	return results
end
exports.getVisibleAvatars = function(): (Results, AvatarIDStats)
	local players = PlayersService:GetPlayers()
	local avatarIDStats: AvatarIDStats = {
		totalPlayers = 0,
		checkedPlayers = 0,
		duration = 0,
	}

	local camera = workspace.CurrentCamera
	if not camera then
		return {}, avatarIDStats
	end

	local localPlayer = PlayersService.LocalPlayer
	if not localPlayer then
		return {}, avatarIDStats
	end

	local localCharacter = localPlayer.Character
	local localPlayerPosition: Vector3
	local ignoreLocalPlayerForRaycast: boolean
	local ignorableParts = {}

	if localCharacter then
		localPlayerPosition = getLocalCharacterPosition(localCharacter) or camera.CFrame.Position
		ignoreLocalPlayerForRaycast = shouldIgnoreLocalCharacter(localCharacter)
		if ignoreLocalPlayerForRaycast then
			ignorableParts[#ignorableParts + 1] = localCharacter
		end
	else
		localPlayerPosition = camera.CFrame.Position
		ignoreLocalPlayerForRaycast = false
	end

	local results: Results = {}
	local startTime = os.clock()
	avatarIDStats.totalPlayers = #players - 1 -- minus 1 for local player

	local updatedStats = function(): AvatarIDStats
		avatarIDStats.duration = os.clock() - startTime
		return avatarIDStats
	end
	local isOverTime = function(): boolean
		return (os.clock() - startTime) > BAILOUT_TIME_S
	end

	for _, player in ipairs(players) do
		if player == localPlayer then
			continue
		end

		if player.Character then
			if isOverTime() then
				return results, updatedStats()
			end

			-- local pStartTime = os.clock()

			local frame: CFrame, size: Vector3 = player.Character:GetBoundingBox()

			local distance = (frame.Position - localPlayerPosition).Magnitude

			local distanceAlongCamLV: number = getDistanceAlongCamLookVector(frame, camera)
			if distanceAlongCamLV < 0 then
				-- behind camera
				avatarIDStats.checkedPlayers += 1
				continue
			end

			local bbCornersWorld: { Vector3 } = getBBCorners(frame, size)

			local viewportMin, viewportMax = getViewportCorners(bbCornersWorld, camera)
			if viewportMax.X == 0 or viewportMax.Y == 0 then
				-- too far off screen
				avatarIDStats.checkedPlayers += 1
				continue
			end

			-- local pBBTime = os.clock()
			local castAttempts, castResults = getVisibleParts(camera, player, ignorableParts)
			-- local pRaycastTime = os.clock()

			if isOverTime() then
				return results, updatedStats()
			end

			local convexHull = getCoveringPolygon(castResults, camera, localCharacter)
			-- local pConvexHullTime = os.clock()
			local hitRate = #castResults / castAttempts

			--[[
			Logging.warn(
				string.format(
					"AI time for [%d]: total %.5f, bb: %.5f, raycast: %.5f, hull: %.5f",
					player.UserId,
					pConvexHullTime - pStartTime,
					pBBTime - pStartTime,
					pRaycastTime - pBBTime,
					pConvexHullTime - pRaycastTime
				)
			)
			]]
			results[player.UserId] = {
				player = player,
				distance = distance,
				boundingBox = {
					min = viewportMin,
					max = viewportMax,
				},
				hitRate = hitRate,
				convexHull = convexHull,
			}
			avatarIDStats.checkedPlayers += 1
		end
	end

	return results, updatedStats()
end

export type Type = typeof(exports)

return exports
