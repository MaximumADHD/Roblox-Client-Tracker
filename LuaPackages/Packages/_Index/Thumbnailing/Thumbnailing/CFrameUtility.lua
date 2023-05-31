local module = {}

--[[
	Reads in CFrame, returns CFrame with same Position and orientation around Y axis, but
	Look vector is "flattened" onto XZ frame.
	We can use this for other things than a head, but I am going to talk
	through it with head as running example because it's easier to picture.
]]
module.CalculateTargetCFrame = function(baseCFrame: CFrame): CFrame
	local targetLookVector
	if math.abs(baseCFrame.LookVector.Y) > 0.9 then
		-- The head is positioned so that it is looking almost straight down.
		-- Use the 'up' vector coming out of the top of the head.
		targetLookVector = baseCFrame.UpVector
	else
		targetLookVector = baseCFrame.LookVector
	end
	-- Flatten it into the X-Z plane.
	targetLookVector = Vector3.new(targetLookVector.X, 0, targetLookVector.Z).Unit
	-- Make a cframe with same position, just using new Look vector as look vector.
	return CFrame.lookAt(baseCFrame.Position, baseCFrame.Position + targetLookVector)
end

module.AdjustTargetCFrameWithExtents = function(targetCFrame: CFrame, minExtent: Vector3, maxExtent: Vector3): CFrame
	local adjustment = (minExtent + maxExtent) / 2
	local tmpCFrame = targetCFrame - targetCFrame.Position
	adjustment = tmpCFrame * adjustment
	targetCFrame = targetCFrame + adjustment
	return targetCFrame
end

--[[
	Same idea as CalculateTargetCFrame, then we adjust the result so that Position of
	CFrame is adjusted by center of Extents.  Extents are expressed in terms of
	original targetCFrame.

	So again using an example where targetCFrame describes position/orientation of Head:
		- Suppose user has no hair, just a bald head.
		  Then minExtent = (-headSizeX/2, -headSizeY/2, -headSizeZ/2) and
		  Then maxExtent = (headSizeX/2, headSizeY/2, headSizeZ/2) and
		  Adjustment to CFrame Position is 0.
		- Suppose user is wearing a very tall narrow hat perched at the very top of the head.
		  Then minExtent = (-headSizeX/2, -headSizeY/2, -headSizeZ/2) and
		  Then maxExtent = (headSizeX/2, headSizeY/2 + hatSizeY, headSizeZ/2) and
		  Adjustment to CFrame position is +hatSizeY/2.
]]
module.CalculateTargetCFrameWithExtents = function(baseCFrame: CFrame, minExtent: Vector3, maxExtent: Vector3): CFrame
	local targetCFrame = module.CalculateTargetCFrame(baseCFrame)
	return module.AdjustTargetCFrameWithExtents(targetCFrame, minExtent, maxExtent)
end

return module
