

local PathDisplay = {}
PathDisplay.spacing = 8
PathDisplay.image = "rbxasset://textures/Cursors/Gamepad/Pointer.png"
PathDisplay.imageSize = Vector2.new(2, 2)

local currentPoints = {}
local renderedPoints = {}

local pointModel = Instance.new("Model")
pointModel.Name = "PathDisplayPoints"

local adorneePart = Instance.new("Part")
adorneePart.Anchored = true
adorneePart.CanCollide = false
adorneePart.Transparency = 1
adorneePart.Name = "PathDisplayAdornee"
adorneePart.CFrame = CFrame.new(0, 0, 0)
adorneePart.Parent = pointModel

local pointPool = {}
local poolTop = 30
for i = 1, poolTop do
	local point = Instance.new("ImageHandleAdornment")
	point.Archivable = false
	point.Adornee = adorneePart
	point.Image = PathDisplay.image
	point.Size = PathDisplay.imageSize
	pointPool[i] = point
end

local function retrieveFromPool()
	local point = pointPool[1]
	if not point then
		return
	end
	
	pointPool[1], pointPool[poolTop] = pointPool[poolTop], nil
	poolTop = poolTop - 1
	return point
end

local function returnToPool(point)
	poolTop = poolTop + 1
	pointPool[poolTop] = point
end

local function renderPoint(point, isLast)
	if poolTop == 0 then
		return
	end

	local rayDown = Ray.new(point + Vector3.new(0, 2, 0), Vector3.new(0, -8, 0))
	local hitPart, hitPoint, hitNormal = workspace:FindPartOnRayWithIgnoreList(rayDown, { game.Players.LocalPlayer.Character, workspace.CurrentCamera  }) 	
	if not hitPart then
		return
	end

	local pointCFrame = CFrame.new(hitPoint, hitPoint + hitNormal)
	
	local point = retrieveFromPool()
	point.CFrame = pointCFrame
	point.Parent = pointModel
	return point
end

function PathDisplay.setCurrentPoints(points)
	if typeof(points) == 'table' then
		currentPoints = points
	else
		currentPoints = {}
	end
end

function PathDisplay.clearRenderedPath()
	for _, oldPoint in ipairs(renderedPoints) do
		oldPoint.Parent = nil
		returnToPool(oldPoint)
	end
	renderedPoints = {}
	pointModel.Parent = nil
end

function PathDisplay.renderPath()
	PathDisplay.clearRenderedPath()
	if not currentPoints or #currentPoints == 0 then
		return
	end

	local currentIdx = #currentPoints
	local lastPos = currentPoints[currentIdx]	
	local distanceBudget = 0
	
	renderedPoints[1] = renderPoint(lastPos, true)
	if not renderedPoints[1] then
		return
	end
	
	while true do
		local currentPoint = currentPoints[currentIdx]
		local nextPoint = currentPoints[currentIdx - 1]
		
		if currentIdx < 2 then
			break
		else
			
			local toNextPoint = nextPoint - currentPoint
			local distToNextPoint = toNextPoint.magnitude	
			
			if distanceBudget > distToNextPoint then
				distanceBudget = distanceBudget - distToNextPoint
				currentIdx = currentIdx - 1
			else
				local dirToNextPoint = toNextPoint.unit
				local pointPos = currentPoint + (dirToNextPoint * distanceBudget)
				local point = renderPoint(pointPos, false)
				
				if point then
					renderedPoints[#renderedPoints + 1] = point
				end
				
				distanceBudget = distanceBudget + PathDisplay.spacing
			end
		end
	end
	
	pointModel.Parent = workspace.CurrentCamera
end

return PathDisplay
