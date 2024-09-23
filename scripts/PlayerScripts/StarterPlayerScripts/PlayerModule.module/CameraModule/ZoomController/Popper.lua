--!nonstrict
--------------------------------------------------------------------------------
-- Popper.lua
-- Prevents your camera from clipping through walls.
--------------------------------------------------------------------------------

local Players = game:GetService("Players")

local camera = game.Workspace.CurrentCamera

local CommonUtils = script.Parent.Parent.Parent:WaitForChild("CommonUtils")
local FlagUtil = require(CommonUtils:WaitForChild("FlagUtil"))

-- Flags
local FFlagUserRaycastPerformanceImprovements = FlagUtil.getUserFlag("UserRaycastPerformanceImprovements")

local min = math.min
local tan = math.tan
local rad = math.rad
local inf = math.huge
local ray = Ray.new

local excludeParams = RaycastParams.new()
excludeParams.IgnoreWater = true
excludeParams.FilterType = Enum.RaycastFilterType.Exclude

local includeParams = RaycastParams.new()
includeParams.IgnoreWater = true
includeParams.FilterType = Enum.RaycastFilterType.Include

local function getTotalTransparency(part)
	return 1 - (1 - part.Transparency)*(1 - part.LocalTransparencyModifier)
end

local function eraseFromEnd(t, toSize)
	for i = #t, toSize + 1, -1 do
		t[i] = nil
	end
end

local nearPlaneZ, projX, projY do
	local function updateProjection()
		local fov = rad(camera.FieldOfView)
		local view = camera.ViewportSize
		local ar = view.X/view.Y

		projY = 2*tan(fov/2)
		projX = ar*projY
	end

	camera:GetPropertyChangedSignal("FieldOfView"):Connect(updateProjection)
	camera:GetPropertyChangedSignal("ViewportSize"):Connect(updateProjection)

	updateProjection()

	nearPlaneZ = camera.NearPlaneZ
	camera:GetPropertyChangedSignal("NearPlaneZ"):Connect(function()
		nearPlaneZ = camera.NearPlaneZ
	end)
end

local excludeList = {} do
	local charMap = {}

	local function refreshIgnoreList()
		local n = 1
		excludeList = {}
		for _, character in pairs(charMap) do
			excludeList[n] = character
			n = n + 1
		end
	end

	local function playerAdded(player)
		local function characterAdded(character)
			charMap[player] = character
			refreshIgnoreList()
		end
		local function characterRemoving()
			charMap[player] = nil
			refreshIgnoreList()
		end

		player.CharacterAdded:Connect(characterAdded)
		player.CharacterRemoving:Connect(characterRemoving)
		if player.Character then
			characterAdded(player.Character)
		end
	end

	local function playerRemoving(player)
		charMap[player] = nil
		refreshIgnoreList()
	end

	Players.PlayerAdded:Connect(playerAdded)
	Players.PlayerRemoving:Connect(playerRemoving)

	for _, player in ipairs(Players:GetPlayers()) do
		playerAdded(player)
	end
	refreshIgnoreList()
end

--------------------------------------------------------------------------------------------
-- Popper uses the level geometry find an upper bound on subject-to-camera distance.
--
-- Hard limits are applied immediately and unconditionally. They are generally caused
-- when level geometry intersects with the near plane (with exceptions, see below).
--
-- Soft limits are only applied under certain conditions.
-- They are caused when level geometry occludes the subject without actually intersecting
-- with the near plane at the target distance.
--
-- Soft limits can be promoted to hard limits and hard limits can be demoted to soft limits.
-- We usually don"t want the latter to happen.
--
-- A soft limit will be promoted to a hard limit if an obstruction
-- lies between the current and target camera positions.
--------------------------------------------------------------------------------------------

local subjectRoot
local subjectPart

camera:GetPropertyChangedSignal("CameraSubject"):Connect(function()
	local subject = camera.CameraSubject
	if subject:IsA("Humanoid") then
		subjectPart = subject.RootPart
	elseif subject:IsA("BasePart") then
		subjectPart = subject
	else
		subjectPart = nil
	end
end)

local function canOcclude(part)
	-- Occluders must be:
	-- 1. Opaque
	-- 2. Interactable
	-- 3. Not in the same assembly as the subject

	return
		getTotalTransparency(part) < 0.25 and
		part.CanCollide and
		subjectRoot ~= (part:GetRootPart() or part) and
		not part:IsA("TrussPart")
end

-- Offsets for the volume visibility test
local SCAN_SAMPLE_OFFSETS = {
	Vector2.new( 0.4, 0.0),
	Vector2.new(-0.4, 0.0),
	Vector2.new( 0.0,-0.4),
	Vector2.new( 0.0, 0.4),
	Vector2.new( 0.0, 0.2),
}

-- Maximum number of rays that can be cast 
local QUERY_POINT_CAST_LIMIT = 64

--------------------------------------------------------------------------------
-- Piercing raycasts

local function getCollisionPoint(origin, dir)
	if FFlagUserRaycastPerformanceImprovements then
		excludeParams.FilterDescendantsInstances = excludeList
		repeat
			local raycastResult = workspace:Raycast(origin, dir, excludeParams)

			if raycastResult then
				if raycastResult.Instance.CanCollide then
					return raycastResult.Position, true
				end
				excludeParams:AddToFilter(raycastResult.Instance)
			end
		until not raycastResult
	else
		local originalSize = #excludeList

		repeat
			local hitPart, hitPoint = workspace:FindPartOnRayWithIgnoreList(
				ray(origin, dir), excludeList, false, true
			)

			if hitPart then
				if hitPart.CanCollide then
					eraseFromEnd(excludeList, originalSize)
					return hitPoint, true
				end
				excludeList[#excludeList + 1] = hitPart
			end
		until not hitPart

		eraseFromEnd(excludeList, originalSize)
	end

	return origin + dir, false
end

--------------------------------------------------------------------------------

local function queryPoint(origin, unitDir, dist, lastPos)
	debug.profilebegin("queryPoint")

	local originalSize = #excludeList

	dist = dist + nearPlaneZ
	local target = origin + unitDir*dist

	local softLimit = inf
	local hardLimit = inf
	local movingOrigin = origin

	local numPierced = 0
	
	if FFlagUserRaycastPerformanceImprovements then
		repeat
			excludeParams.FilterDescendantsInstances = excludeList

			local enterRaycastResult = workspace:Raycast(movingOrigin, target - movingOrigin, excludeParams)
			local entryInstance, entryPosition
			if enterRaycastResult then
				entryInstance, entryPosition = enterRaycastResult.Instance, enterRaycastResult.Position
				numPierced += 1

				local earlyAbort = numPierced >= QUERY_POINT_CAST_LIMIT

				if canOcclude(entryInstance) or earlyAbort then
					local includeList = { entryInstance }
					includeParams.FilterDescendantsInstances = includeList

					local exitRaycastResult = workspace:Raycast(target, entryPosition - target, includeParams)

					local lim = (entryPosition - origin).Magnitude

					if exitRaycastResult and not earlyAbort then
						local promote = if lastPos then
							workspace:Raycast(lastPos, target - lastPos, includeParams) or
								workspace:Raycast(target, lastPos - target, includeParams) else nil

						if promote then
							-- Ostensibly a soft limit, but the camera has passed through it in the last frame, so promote to a hard limit.
							hardLimit = lim
						elseif dist < softLimit then
							-- Trivial soft limit
							softLimit = lim
						end
					else
						-- Trivial hard limit
						hardLimit = lim
					end
				end

				excludeParams:AddToFilter(entryInstance)
				movingOrigin = entryPosition - unitDir*1e-3
			end
		until hardLimit < inf or not entryInstance
	else
		repeat
			local entryPart, entryPos = workspace:FindPartOnRayWithIgnoreList(ray(movingOrigin, target - movingOrigin), excludeList, false, true)
			numPierced += 1

			if entryPart then
				-- forces the current iteration into a hard limit to cap the number of raycasts
				local earlyAbort = numPierced >= QUERY_POINT_CAST_LIMIT
				
				if canOcclude(entryPart) or earlyAbort then
					local wl = {entryPart}
					local exitPart = workspace:FindPartOnRayWithWhitelist(ray(target, entryPos - target), wl, true)

					local lim = (entryPos - origin).Magnitude

					if exitPart and not earlyAbort then
						local promote = false
						if lastPos then
							promote =
								workspace:FindPartOnRayWithWhitelist(ray(lastPos, target - lastPos), wl, true) or
								workspace:FindPartOnRayWithWhitelist(ray(target, lastPos - target), wl, true)
						end

						if promote then
							-- Ostensibly a soft limit, but the camera has passed through it in the last frame, so promote to a hard limit.
							hardLimit = lim
						elseif dist < softLimit then
							-- Trivial soft limit
							softLimit = lim
						end
					else
						-- Trivial hard limit
						hardLimit = lim
					end
				end

				excludeList[#excludeList + 1] = entryPart
				movingOrigin = entryPos - unitDir*1e-3
			end
		until hardLimit < inf or not entryPart

		eraseFromEnd(excludeList, originalSize)
	end

	debug.profileend()
	return softLimit - nearPlaneZ, hardLimit - nearPlaneZ
end

local function queryViewport(focus, dist)
	debug.profilebegin("queryViewport")

	local fP =  focus.p
	local fX =  focus.rightVector
	local fY =  focus.upVector
	local fZ = -focus.lookVector

	local viewport = camera.ViewportSize

	local hardBoxLimit = inf
	local softBoxLimit = inf

	-- Center the viewport on the PoI, sweep points on the edge towards the target, and take the minimum limits
	for viewX = 0, 1 do
		local worldX = fX*((viewX - 0.5)*projX)

		for viewY = 0, 1 do
			local worldY = fY*((viewY - 0.5)*projY)

			local origin = fP + nearPlaneZ*(worldX + worldY)
			local lastPos = camera:ViewportPointToRay(
				viewport.x*viewX,
				viewport.y*viewY
			).Origin

			local softPointLimit, hardPointLimit = queryPoint(origin, fZ, dist, lastPos)

			if hardPointLimit < hardBoxLimit then
				hardBoxLimit = hardPointLimit
			end
			if softPointLimit < softBoxLimit then
				softBoxLimit = softPointLimit
			end
		end
	end
	debug.profileend()

	return softBoxLimit, hardBoxLimit
end

local function testPromotion(focus, dist, focusExtrapolation)
	debug.profilebegin("testPromotion")

	local fP = focus.p
	local fX = focus.rightVector
	local fY = focus.upVector
	local fZ = -focus.lookVector

	do
		-- Dead reckoning the camera rotation and focus
		debug.profilebegin("extrapolate")

		local SAMPLE_DT = 0.0625
		local SAMPLE_MAX_T = 1.25

		local maxDist = (getCollisionPoint(fP, focusExtrapolation.posVelocity*SAMPLE_MAX_T) - fP).Magnitude
		-- Metric that decides how many samples to take
		local combinedSpeed = focusExtrapolation.posVelocity.magnitude

		for dt = 0, min(SAMPLE_MAX_T, focusExtrapolation.rotVelocity.magnitude + maxDist/combinedSpeed), SAMPLE_DT do
			local cfDt = focusExtrapolation.extrapolate(dt) -- Extrapolated CFrame at time dt

			if queryPoint(cfDt.p, -cfDt.lookVector, dist) >= dist then
				return false
			end
		end

		debug.profileend()
	end

	do
		-- Test screen-space offsets from the focus for the presence of soft limits
		debug.profilebegin("testOffsets")

		for _, offset in ipairs(SCAN_SAMPLE_OFFSETS) do
			local scaledOffset = offset
			local pos = getCollisionPoint(fP, fX*scaledOffset.x + fY*scaledOffset.y)
			if queryPoint(pos, (fP + fZ*dist - pos).Unit, dist) == inf then
				return false
			end
		end

		debug.profileend()
	end

	debug.profileend()
	return true
end

local function Popper(focus, targetDist, focusExtrapolation)
	debug.profilebegin("popper")

	subjectRoot = subjectPart and subjectPart:GetRootPart() or subjectPart

	local dist = targetDist
	local soft, hard = queryViewport(focus, targetDist)
	if hard < dist then
		dist = hard
	end
	if soft < dist and testPromotion(focus, targetDist, focusExtrapolation) then
		dist = soft
	end

	subjectRoot = nil

	debug.profileend()
	return dist
end

return Popper
