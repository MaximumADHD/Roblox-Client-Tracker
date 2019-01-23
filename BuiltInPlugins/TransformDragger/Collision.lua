local Utility = require(script.Parent.Utility)
local List = require(script.Parent.List)

local maxMove = 1000

local function movePrimitivesDelta(part, direction, movedSoFar, isMetapart)
	if isMetapart then
		part.TranslateFromTo(part.CFrame, part.CFrame + direction)
	else
		part.CFrame = part.CFrame + direction
	end

	return movedSoFar + direction
end

local function searchIn(part, ignoreList, direction, moveBy, inExtent, outExtent)
	if math.abs(moveBy) < 0.0001 then return end

	while not List.itemsHasItemNotInList(part:GetTouchingParts(), ignoreList) do
		outExtent = part.CFrame.p
		if (part.CFrame.p + (direction.Unit * moveBy) == inExtent) then
			
			searchIn(part, ignoreList, direction, moveBy * 0.5, inExtent, outExtent)
			return
		end
		movePrimitivesDelta(part, direction.Unit * moveBy, Vector3.new(0,0,0))
	end
		
	searchOut(part, ignoreList, direction, moveBy * -0.5, inExtent, outExtent)
end

function searchOut(part, ignoreList, direction, moveBy, inExtent, outExtent)
	
	if math.abs(moveBy) < 0.0001 then
		part.CFrame = part.CFrame - part.CFrame.p + outExtent
		return
	end
	
	while List.itemsHasItemNotInList(part:GetTouchingParts(), ignoreList) do
		inExtent = part.CFrame.p
		if outExtent and (part.CFrame.p + (direction.Unit * moveBy) == outExtent) then
			searchOut(part, ignoreList, direction, moveBy * 0.5, inExtent, outExtent)
			return
		end
		movePrimitivesDelta(part, direction.Unit * moveBy, Vector3.new(0,0,0))
	end
	
	searchIn(part, ignoreList, direction, moveBy * -0.5, inExtent, outExtent)		
end

local function castOut(part, ray)
	local oriOS = part.CFrame:pointToObjectSpace(ray.Origin)
	local dirOS = part.CFrame:pointToObjectSpace(ray.Origin + ray.Direction) - oriOS
	dirOS = dirOS.Unit
	
	local hSize = part.Size / 2
	local normDir = dirOS / Vector3.new(math.abs(dirOS.X), math.abs(dirOS.Y), math.abs(dirOS.Z))
	
	local iPoints = normDir * hSize
	
	if ((iPoints * 2) - oriOS).Magnitude < oriOS.Magnitude then return nil end
	--assume inside box
	
	local yI = ((iPoints.X - oriOS.X) / dirOS.X * dirOS.Y) + oriOS.Y
	local zI = ((iPoints.X - oriOS.X) / dirOS.X * dirOS.Z) + oriOS.Z
	local xPlaneI = Vector3.new(iPoints.X, yI, zI)
	
	local xI = ((iPoints.Y - oriOS.Y) / dirOS.Y * dirOS.X) + oriOS.X
	zI = ((iPoints.Y - oriOS.Y) / dirOS.Y * dirOS.Z) + oriOS.Z
	local yPlaneI = Vector3.new(xI, iPoints.Y, zI)
	
	xI = ((iPoints.Z - oriOS.Z) / dirOS.Z * dirOS.X) + oriOS.X
	yI = ((iPoints.Z - oriOS.Z) / dirOS.Z * dirOS.Y) + oriOS.Y
	local zPlaneI = Vector3.new(xI, yI, iPoints.Z)
	
	local xPlaneDist = (xPlaneI.Y <= hSize.Y and xPlaneI.Y >= -hSize.Y and xPlaneI.Z <= hSize.Z and xPlaneI.Z >= -hSize.Z) and (xPlaneI - oriOS).Magnitude or 10000
	local yPlaneDist = (yPlaneI.X <= hSize.X and yPlaneI.X >= -hSize.X and yPlaneI.Z <= hSize.Z and yPlaneI.Z >= -hSize.Z) and (yPlaneI - oriOS).Magnitude or 10000
	local zPlaneDist = (zPlaneI.X <= hSize.X and zPlaneI.X >= -hSize.X and zPlaneI.Y <= hSize.Y and zPlaneI.Y >= -hSize.Y) and (zPlaneI - oriOS).Magnitude or 10000
	
	local minDist = Utility.min(xPlaneDist, yPlaneDist, zPlaneDist)
	
	if minDist == 10000 then return nil end

	if minDist == xPlaneDist then return part.CFrame:pointToWorldSpace(xPlaneI)
	elseif minDist == yPlaneDist then return part.CFrame:pointToWorldSpace(yPlaneI)
	else return part.CFrame:pointToWorldSpace(zPlaneI) end
end

local function castMove(part, threshold, ignoreList, direction)
	local collisions = List.filterOutItems(ignoreList, part:GetTouchingParts())
	local castOutRay = Ray.new(part.CFrame.p, direction.Unit)
	
	local iPoint = nil
	local dist = 0
	
	for i, v in ipairs(collisions) do
		
		local intersection = castOut(v, castOutRay)
		
		if intersection then
			local iDist = (intersection - part.CFrame.p).Magnitude
			if iDist > dist then 
				dist = iDist
				iPoint = intersection
			end
		end
	end
	
	if iPoint then
		part.CFrame = part.CFrame - part.CFrame.p + iPoint
	end
	
end

local function safeMove(part, ignoreList, direction)
	if direction.magnitude == 0 then
		return
	end
	--collision safemove
	local originalCollision = List.filterOutItems(ignoreList, part:GetTouchingParts())
	
	
	local threshold = 0.002
	--if true then return end
	if #originalCollision > 0 and List.listDoesNotContainType(originalCollision, "Terrain") then
		--local initialTime = tick()
		local keepCasting = true
		
		while keepCasting do
			castMove(part, threshold, ignoreList, direction)
			local colliding = List.filterOutItems(originalCollision, List.filterOutItems(ignoreList, part:GetTouchingParts()))
			if #colliding == 0 then
				keepCasting = false
			else
				originalCollision = List.combineLists(originalCollision, colliding)
			end
		end
				
		searchOut(part, ignoreList, direction * -1, 0 - math.min(part.Size.X / 2, part.Size.Y / 2, part.Size.Z / 2), part.CFrame.p, nil)
		
	end
end

local function searchDirectionFine(part, ignoreList, movedSoFar, direction, moveBy, threshold, depth, isMetapart)
	
	if depth > 13 then return end
	if moveBy <= 0.0002 then return end
	
	movedSoFar = movePrimitivesDelta(part, direction.Unit * moveBy, movedSoFar, isMetapart)
	
	if movedSoFar ~= movedSoFar then return end
	
	if List.itemsHasItemNotInList(part:GetTouchingParts(), ignoreList) then
		movedSoFar = movePrimitivesDelta(part, direction.Unit * -moveBy, movedSoFar, isMetapart)
		searchDirectionFine(part, ignoreList, movedSoFar, direction, moveBy * 0.5, threshold, depth + 1, isMetapart)
	else
		searchDirectionFine(part, ignoreList, movedSoFar, direction, moveBy, threshold, depth + 1, isMetapart)
	end
end

local function searchDirectionGross(part, ignoreList, movedSoFar, direction, threshold, isMetapart)
	if (movedSoFar.Magnitude > maxMove) then return end
	movedSoFar = movePrimitivesDelta(part, direction.Unit, movedSoFar, isMetapart)
	
	if (movedSoFar ~= movedSoFar) then return end
	
	if List.itemsHasItemNotInList(part:GetTouchingParts(), ignoreList) then
		searchDirectionGross(part, ignoreList, movedSoFar, direction, threshold, isMetapart)
	else
		searchDirectionFine(part, ignoreList, movedSoFar, direction * -1.0, 0.5, threshold, 0, isMetapart)
	end
end

local function safeMoveAlongLine(part, ignoreList, direction, threshold, isMetapart)
	--Check if colliding?
	if List.itemsHasItemNotInList(part:GetTouchingParts(), ignoreList) then
		searchDirectionGross(part, ignoreList, Vector3.new(0,0,0), direction * -1, threshold, isMetapart)
	end
end

local function searchDirectionUntilCollideGross(part, ignoreList, movedSoFar, direction, threshold, maxDist, isMetapart)
	local distanceTraveled = movedSoFar.Magnitude
	if (distanceTraveled > 1000) then return false end
	
	movedSoFar = movePrimitivesDelta(part, direction.Unit, movedSoFar, isMetapart)
	
	if (movedSoFar ~= movedSoFar) then return false end
	
	if List.itemsHasItemNotInList(part:GetTouchingParts(), ignoreList) then

		safeMoveAlongLine(part, ignoreList, direction, threshold, isMetapart)
		return true
	else
		if (distanceTraveled + 1 > maxDist) then return false end
		return searchDirectionUntilCollideGross(part, ignoreList, movedSoFar, direction, threshold, maxDist, isMetapart)
	end
end

local function moveUntilCollide(part, ignoreList, direction, threshold, maxDist)
	if not List.itemsHasItemNotInList(part:GetTouchingParts(), ignoreList) then
		return searchDirectionUntilCollideGross(part, ignoreList, Vector3.new(0,0,0), direction, threshold, maxDist)
	end
	return false
end
-----------------------Metapart--------------------------

local function moveUntilCollideMetapart(metapart, ignoreList, direction, maxDist)
	if not List.itemsHasItemNotInList(metapart:GetTouchingParts(), ignoreList) then
		return searchDirectionUntilCollideGross(metapart, ignoreList, Vector3.new(0,0,0), direction, 0.0002, maxDist, true) 
	end
	return false
end

--------------------------------------------------------------
--------------------------------------------------------------
--------------------------------------------------------------

local module = {}

module.SafeMove = safeMove
module.MovePrimitivesDelta = movePrimitivesDelta
module.moveUntilCollide = moveUntilCollide

module.moveUntilCollideMetapart = moveUntilCollideMetapart

return module
