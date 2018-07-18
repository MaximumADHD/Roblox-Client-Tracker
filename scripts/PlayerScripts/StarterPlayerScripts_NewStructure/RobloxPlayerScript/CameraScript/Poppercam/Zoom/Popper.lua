--------------------------------------------------------------------------------
-- Popper.lua
-- Prevents your camera from clipping through walls.
--------------------------------------------------------------------------------

local Rotate = require(script.Parent.Parent:WaitForChild("Rotate"))

local camera = game.Workspace.CurrentCamera

local min = math.min
local tan = math.tan
local rad = math.rad
local inf = math.huge
local ray = Ray.new

local function eraseFromEnd(t, toSize)
	for i = #t, toSize + 1, -1 do
		t[i] = nil
	end
end

local nearZ, projX, projY do
	local function updateProjection()
		local fov = rad(camera.FieldOfView)
		local view = camera.ViewportSize
		local ar = view.X/view.Y
		
		projY = 2*tan(fov/2)
		projX = ar*projY
	end
	
	camera:GetPropertyChangedSignal('FieldOfView'):Connect(updateProjection)
	camera:GetPropertyChangedSignal('ViewportSize'):Connect(updateProjection)
	
	updateProjection()

	nearZ = camera.NearZ
	camera:GetPropertyChangedSignal('NearPlaneZ'):Connect(function()
		nearZ = camera.NearPlaneZ
	end)
end

local blacklist = {} do
	local charMap = {}

	local function refreshIgnoreList()
		local n = 1
		blacklist = {}
		for player, character in pairs(charMap) do
			blacklist[n] = character
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

	do
		local Players = game:GetService('Players')
		
		Players.PlayerAdded:Connect(playerAdded)
		Players.PlayerRemoving:Connect(playerRemoving)
		
		for _, player in ipairs(Players:GetPlayers()) do
			playerAdded(player)
		end
		refreshIgnoreList()
	end
end

--------------------------------------------------------------------------------------------
-- Popper uses the level geometry find an upper bound on subject-to-camera distance.
-- 
-- Hard limits are applied immediately and unconditionally. They're generally caused
-- when level geometry intersects with the near plane (with exceptions, see below).
-- 
-- Soft limits are only applied under certain conditions.
-- They're caused when level geometry occludes the subject without actually intersecting 
-- with the near plane at the target distance.
-- 
-- Soft limits can be promoted to hard limits and hard limits can be demoted to soft limits.
-- We usually don't want the latter to happen.
-- 
-- A soft limit will be promoted to a hard limit if an obstruction 
-- lies between the current and target camera positions.
--------------------------------------------------------------------------------------------

local subjectRootPart

-- @todo cache
local function canCollide(part)
	return subjectRootPart:CanCollideWith(part)
end

local function canOcclude(part)
	-- Filter for opaque, interactable objects
	return
		part.Transparency < 0.2 and
		canCollide(part) and
		not part:IsA('TrussPart')
end

-- Offsets for the volume visibility test
local SCAN_SAMPLE_OFFSETS = {
	Vector2.new( 0.4, 0.0),
	Vector2.new(-0.4, 0.0),
	Vector2.new( 0.0,-0.4),
	Vector2.new( 0.0, 0.4),
	Vector2.new( 0.0, 0.2),
}

--------------------------------------------------------------------------------
-- Piercing raycasts

local function getCollisionPoint(origin, dir, blacklist)
	local originalSize = #blacklist
	repeat
		local hitPart, hitPoint = workspace:FindPartOnRayWithIgnoreList(
			ray(origin, dir), blacklist, false, true
		)
		
		if hitPart then
			if canCollide(hitPart) then
				eraseFromEnd(blacklist, originalSize)
				return hitPoint, true
			end
			blacklist[#blacklist + 1] = hitPart
		end
	until not hitPart
	
	eraseFromEnd(blacklist, originalSize)
	return origin + dir, false
end

--------------------------------------------------------------------------------

local function queryPoint(origin, unitDir, dist, lastPos)
	debug.profilebegin('queryPoint')
	
	local originalSize = #blacklist
	
	dist = dist + nearZ
	local target = origin + unitDir*dist
	
	local softLimit = inf
	local hardLimit = inf
	local movingOrigin = origin
	
	repeat
		local entryPart, entryPos = workspace:FindPartOnRayWithIgnoreList(ray(movingOrigin, target - movingOrigin), blacklist, false, true)
		
		if entryPart then
			if canOcclude(entryPart) then
				local wl = {entryPart}
				local exitPart = workspace:FindPartOnRayWithWhitelist(ray(target, entryPos - target), wl, false, true)

				local lim = (entryPos - origin).Magnitude

				if exitPart then
					local promote = false
					if lastPos then
						promote = 
							workspace:FindPartOnRayWithWhitelist(ray(lastPos, target - lastPos), wl, false, true) or
							workspace:FindPartOnRayWithWhitelist(ray(target, lastPos - target), wl, false, true)
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
			
			blacklist[#blacklist + 1] = entryPart
			movingOrigin = entryPos
		end
	until hardLimit < inf or not entryPart
	
	eraseFromEnd(blacklist, originalSize)
	
	debug.profileend()
	return softLimit - nearZ, hardLimit - nearZ
end

local function queryViewport(focus, dist)
	debug.profilebegin('queryViewport')
	
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
			
			local origin = fP + nearZ*(worldX + worldY)
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

local function getBodyScale(humanoid, scaleName)
	local scaleValue = humanoid:FindFirstChild(scaleName)
	if scaleValue and scaleValue:IsA('NumberValue') then
		return scaleValue.Value
	end
	return 1
end

local function testPromotion(focus, dist)
	debug.profilebegin('testPromotion')
	
	local fP =  focus.p
	local fX =  focus.rightVector
	local fY =  focus.upVector
	local fZ = -focus.lookVector
	
	do
		-- Dead reckoning the camera rotation and focus
		debug.profilebegin('extrapolate')

		local SAMPLE_DT = 0.0625
		local SAMPLE_MAX_T = 1.25
		
		local vel = subjectRootPart.Velocity
		local speed = vel.Magnitude
		local maxDist = (getCollisionPoint(fP, vel*SAMPLE_MAX_T) - fP).Magnitude
		
		for dt = 0, min(SAMPLE_MAX_T, maxDist/speed), SAMPLE_DT do
			local origin = fP + vel*dt
			local dir = -(focus*Rotate:GetDelta(dt)).lookVector
			
			if queryPoint(origin, dir, dist) >= dist then
				return false
			end
		end
		
		debug.profileend()
	end
	
	do
		-- Test screen-space offsets from the focus for the presence of soft limits
		debug.profilebegin('testOffsets')
		
		local humanoid = subjectRootPart.Parent:FindFirstChildOfClass('Humanoid')
		
		if humanoid then
			local scaleX = getBodyScale(humanoid, 'BodyWidthScale')
			local scaleY = getBodyScale(humanoid, 'BodyHeightScale')
			local scaleZ = getBodyScale(humanoid, 'BodyDepthScale')
			
			local sampleScale = Vector2.new(math.sqrt(scaleX*scaleX + scaleZ*scaleZ), scaleY)
			
			for _, offset in ipairs(SCAN_SAMPLE_OFFSETS) do
				local scaledOffset = offset*sampleScale
				local pos, isHit = getCollisionPoint(fP, fX*scaledOffset.x + fY*scaledOffset.y)
				if queryPoint(pos, (fP + fZ*dist - pos).Unit, dist) == inf then
					return false
				end
			end
		end
		
		debug.profileend()
	end
	
	debug.profileend()
	return true
end

--------------------------------------------------------------------------------

function Popper(focus, targetDist, _subjectRootPart)
	debug.profilebegin('popper')
	
	subjectRootPart = _subjectRootPart
	
	local dist = targetDist
	local soft, hard = queryViewport(focus, targetDist)
	if hard < dist then
		dist = hard
	end
	if soft < dist and testPromotion(focus, targetDist) then
		dist = soft
	end

	subjectRootPart = nil
	
	debug.profileend()
	return dist
end

return Popper
