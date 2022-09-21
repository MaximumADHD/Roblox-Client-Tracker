game:DefineFastFlag("TransformToolRubberBandError", false)

local Adorn = require(script.Parent.Adornments)

local selectionScreenGui = nil
local rubberBandFrames = {}

local rubberbandBorderSize = 2

local selectionSettingInProgress = false
local partsInRubberbandSelection = {}

local rubberBandDragInProgress = false
local selectionBoxStart = nil

local function findFirstCFrame(parent)
	if parent:IsA("BasePart") then return parent.CFrame end
	local children = parent:GetChildren()
	for i = 1, #children do
		local cframe = findFirstCFrame(children[i])
		if cframe then return cframe end
	end
	return nil
end

local function findPartsInSelection(parent, startPos, endPos, partsList)
	local children = parent:GetChildren()
	local camera = workspace.CurrentCamera
	
	local partsList = partsList or {}
	
	for i, v in ipairs(children) do
		local pos = nil
		local isLocked = false
		
		if v:IsA("BasePart") then
			pos = v.CFrame.p
			isLocked = v.Locked
		elseif v:IsA("Model") and not v:IsA("Workspace") then
			if v.PrimaryPart then
				pos = v:GetPrimaryPartCFrame().p
			else
				pos = v:GetModelCFrame().p
			end
			isLocked = false
		elseif v:IsA("Tool") then
			if game:GetFastFlag("TransformToolRubberBandError") then
				pos = findFirstCFrame(v)
				if pos then
					pos = pos.p
				end	
			else
				pos = findFirstCFrame(v).p
			end
			isLocked = false
		elseif v:IsA("Folder") then
			findPartsInSelection(v, startPos, endPos, partsList)
		end
		
		if pos then
			if camera.CoordinateFrame:pointToObjectSpace(pos).Z < 0 then -- check to make sure the object is in front of the camera
				local projection = camera:WorldToScreenPoint(pos)
		
				if not isLocked and
					projection.X < math.max(startPos.X, endPos.X) and
					projection.X > math.min(startPos.X, endPos.X) and
					projection.Y < math.max(startPos.Y, endPos.Y) and
					projection.Y > math.min(startPos.Y, endPos.Y) then
					table.insert(partsList, v)
				end
			end
			
		end
		
	end
	return partsList
end

local function isRubberBandDragInProgress()
	return rubberBandDragInProgress
end

function startRubberbandDrag(location)
	rubberBandDragInProgress = true
	Adorn.setPlaneVisibility(false)
	selectionBoxStart = location
	
	partsInRubberbandSelection = {}
	
	if not selectionScreenGui then
		selectionScreenGui = Instance.new("ScreenGui", game:GetService("CoreGui"))
		rubberBandFrames[1] = Instance.new("Frame", selectionScreenGui)
		rubberBandFrames[1].BorderSizePixel = 0
		rubberBandFrames[1].BackgroundColor3 = Color3.new(0,0,0)
		
		rubberBandFrames[2] = Instance.new("Frame", selectionScreenGui)
		rubberBandFrames[2].BorderSizePixel = 0
		rubberBandFrames[2].BackgroundColor3 = Color3.new(0,0,0)
		
		rubberBandFrames[3] = Instance.new("Frame", selectionScreenGui)
		rubberBandFrames[3].BorderSizePixel = 0
		rubberBandFrames[3].BackgroundColor3 = Color3.new(0,0,0)
		
		rubberBandFrames[4] = Instance.new("Frame", selectionScreenGui)
		rubberBandFrames[4].BorderSizePixel = 0
		rubberBandFrames[4].BackgroundColor3 = Color3.new(0,0,0)
	end
end

function finishRubberbandDrag()
	if not rubberBandDragInProgress then return end
	
	rubberBandDragInProgress = false
	
	game:GetService("Selection"):Set(partsInRubberbandSelection)
	selectionBoxStart = nil
	
	if selectionScreenGui then 
		selectionScreenGui:Destroy()
		selectionScreenGui = nil
	end
end

function updateRubberBand(location)	
	if not rubberBandDragInProgress then return end
	
	--local initialTick = tick()
	
	local xSize = location.X - selectionBoxStart.X
	local ySize = location.Y - selectionBoxStart.Y
	
	rubberBandFrames[1].Size = UDim2.new(0, rubberbandBorderSize, 0, ySize + rubberbandBorderSize)
	rubberBandFrames[2].Size = UDim2.new(0, rubberbandBorderSize, 0, ySize + rubberbandBorderSize)
	rubberBandFrames[3].Size = UDim2.new(0, xSize + rubberbandBorderSize, 0, rubberbandBorderSize)
	rubberBandFrames[4].Size = UDim2.new(0, xSize + rubberbandBorderSize, 0, rubberbandBorderSize)
	
	rubberBandFrames[1].Position = UDim2.new(0, selectionBoxStart.X, 0, selectionBoxStart.Y)
	rubberBandFrames[2].Position = UDim2.new(0, selectionBoxStart.X + xSize, 0, selectionBoxStart.Y)
	rubberBandFrames[3].Position = UDim2.new(0, selectionBoxStart.X, 0, selectionBoxStart.Y)
	rubberBandFrames[4].Position = UDim2.new(0, selectionBoxStart.X, 0, selectionBoxStart.Y + ySize)
	
	partsInRubberbandSelection = findPartsInSelection(workspace, selectionBoxStart, location)
	
	if (#game:GetService("Selection"):Get() ~= #partsInRubberbandSelection) then
		game:GetService("Selection"):Set(partsInRubberbandSelection)
		--spawn(function() game:GetService("Selection"):Set(partsInRubberbandSelection) end)
	end
end

local module = {}

module.isRubberBandDragInProgress = isRubberBandDragInProgress
module.startRubberbandDrag = startRubberbandDrag
module.finishRubberbandDrag = finishRubberbandDrag
module.updateRubberBand = updateRubberBand

return module
