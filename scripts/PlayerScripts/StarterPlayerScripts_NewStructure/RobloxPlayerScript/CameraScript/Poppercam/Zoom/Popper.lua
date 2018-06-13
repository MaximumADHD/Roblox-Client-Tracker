--------------------------------------------------------------------------------
-- Popper.lua
-- Author: Parker Stebbins <pstebbins@roblox.com>
--------------------------------------------------------------------------------

local Blacklist = require(script:WaitForChild("Blacklist"))
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
	-- @todo handle changing camera
	
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

	--[[ @todo enable when NearPlaneZ is fixed
	nearZ = camera.NearZ
	camera:GetPropertyChangedSignal('NearPlaneZ'):Connect(function()
		nearZ = camera.NearPlaneZ
	end)
	--]]

	coroutine.wrap(function()
		-- hack! don't ship this
		nearZ = 0.1
		wait()
		local originalCFrame = camera.CFrame
		camera.CFrame = CFrame.new()
		local center = camera.ViewportSize/2
		nearZ = camera:ViewportPointToRay(center.X, center.Y).Origin.Z
		camera.CFrame = originalCFrame
	end)()
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

local function queryPoint(origin, unitDir, dist, blacklist, lastPos)
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
						-- Target passed through the part, promote to a hard limit
						hardLimit = lim
					elseif dist < softLimit then
						-- So it's a soft limit
						softLimit = lim
					end
				else
					-- Target is within the part, so it's a hard limit
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

local function queryViewport(focus, dist, blacklist)
	debug.profilebegin('queryViewport')
	
	local fP =  focus.p
	local fX =  focus.rightVector
	local fY =  focus.upVector
	local fZ = -focus.lookVector
	
	local viewport = game.Workspace.CurrentCamera.ViewportSize
	
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
			--[[
			if viewX + viewY == 0 then
				print((origin - lastPos).magnitude)
			end
			--]]
			local softPointLimit, hardPointLimit = queryPoint(origin, fZ, dist, blacklist, lastPos)
			
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

local SCAN_SAMPLE_OFFSETS = {
	Vector2.new( 0.6, 0.0),
	Vector2.new(-0.6, 0.0),
	Vector2.new( 0.0,-0.4),
	Vector2.new( 0.0, 0.4),
	Vector2.new( 0.0, 0.2),
}

local function testPromotion(focus, dist, blacklist)
	debug.profilebegin('testPromotion')
	
	local fP =  focus.p
	local fX =  focus.rightVector
	local fY =  focus.upVector
	local fZ = -focus.lookVector
	
	do
		debug.profilebegin('extrapolate')
		
		local SAMPLE_DT = 0.0625
		local SAMPLE_MAX_T = 1.25
		
		local vel = subjectRootPart.Velocity
		local speed = vel.Magnitude
		local maxDist = (getCollisionPoint(fP, vel*SAMPLE_MAX_T, blacklist) - fP).Magnitude
		
		for dt = 0, min(SAMPLE_MAX_T, maxDist/speed), SAMPLE_DT do
			local origin = fP + vel*dt
			local dir = -(focus*Rotate:GetDelta(dt)).lookVector
			
			if queryPoint(origin, dir, dist, blacklist) >= dist then
				return false
			end
		end
		
		debug.profileend()
	end
	
	do
		debug.profilebegin('testOffsets')
		
		for _, point in ipairs(SCAN_SAMPLE_OFFSETS) do
			local pos, isHit = getCollisionPoint(fP, fX*point.x + fY*point.y, blacklist)
			if queryPoint(pos, (fP + fZ*dist - pos).Unit, dist, blacklist) == inf then
				return false
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
	
	local blacklist = Blacklist()
	
	local dist = targetDist
	local soft, hard = queryViewport(focus, targetDist, blacklist)
	if hard < dist then
		dist = hard
	end
	if soft < dist and testPromotion(focus, targetDist, blacklist) then
		dist = soft
	end

	subjectRootPart = nil
	
	debug.profileend()
	return dist
end

return Popper
