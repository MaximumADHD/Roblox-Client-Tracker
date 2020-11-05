--[[
	Utility file wrapping the implementation of pivots. We're still undecided on
	how exactly we want to store pivots, so we have this abstraction layer
	which we operate on pivots through.
]]

local PivotImplementation = {}

local STORAGE_NAME = "Pivot"

function PivotImplementation.hasPivot(instance)
	if instance:IsA("Model") then
		local primaryPart = instance.PrimaryPart
		return primaryPart and (primaryPart:FindFirstChild(STORAGE_NAME) ~= nil)
	elseif instance:IsA("BasePart") then
		return instance:FindFirstChild(STORAGE_NAME) ~= nil
	else
		return false
	end
end

function PivotImplementation.getPivot(instance)
	if instance:IsA("Model") then
		local primaryPart = instance.PrimaryPart
		if primaryPart then
			return PivotImplementation.getPivot(primaryPart)
		else
			local boundingBoxCFrame, _ = instance:GetBoundingBox()
			return boundingBoxCFrame
		end
	elseif instance:IsA("BasePart") then
		local pivotStorage = instance:FindFirstChild(STORAGE_NAME)
		if pivotStorage then
			return instance.CFrame * pivotStorage.Value
		else
			return instance.CFrame
		end
	else
		return nil
	end
end

local function assignLargestPartToPrimaryPart(model)
	local largestPart, largestSize = nil, -math.huge
	for _, descendant in ipairs(model:GetDescendants()) do
		if descendant:IsA("BasePart") then
			local size = descendant.Size.Magnitude
			if size > largestSize then
				largestSize = size
				largestPart = descendant
			end
		end
	end
	if largestPart then
		model.PrimaryPart = largestPart
	end
	return largestPart
end

function PivotImplementation.setPivot(instance, cframe)
	if instance:IsA("Model") then
		local primaryPart = instance.PrimaryPart
		if not primaryPart then
			-- The default bounding box when no PrimaryPart is specified is
			-- chosen by picking the largest part, so using this method to
			-- choose the primary part will not change the bounding box.
			primaryPart = assignLargestPartToPrimaryPart(instance)
		end
		if primaryPart then
			return PivotImplementation.setPivot(primaryPart, cframe)
		end
	elseif instance:IsA("BasePart") then
		local pivotStorage = instance:FindFirstChild(STORAGE_NAME)
		if not pivotStorage then
			pivotStorage = Instance.new("CFrameValue")
			pivotStorage.Name = STORAGE_NAME
			pivotStorage.Parent = instance
		end
		pivotStorage.Value = instance.CFrame:Inverse() * cframe
	end
end

function PivotImplementation.clearPivot(instance)
	if instance:IsA("Model") then
		local primaryPart = instance.PrimaryPart
		if primaryPart then
			return PivotImplementation.clearPivot(primaryPart)
		end
	else
		local pivotStorage = instance:FindFirstChild(STORAGE_NAME)
		if pivotStorage then
			pivotStorage.Parent = nil
		end
	end
end

return PivotImplementation