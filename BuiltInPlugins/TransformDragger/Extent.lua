local Utility = require(script.Parent.Utility)
--local Selection = require(script.Parent.Selection)

function unionVector3(vect, lowerV, upperV, extentSpace)
	
	if not vect then
		return lowerV, upperV
	end
	
	vect = extentSpace:pointToObjectSpace(vect)
	if not lowerV then 
		lowerV = vect
	else
		lowerV = extentSpace:pointToObjectSpace(lowerV)
	end
	
	if not upperV then
		upperV = vect
	else
		upperV = extentSpace:pointToObjectSpace(upperV)
	end
	
	if vect.x < lowerV.x then lowerV = Vector3.new(vect.x, lowerV.y, lowerV.z) end
	if vect.y < lowerV.y then lowerV = Vector3.new(lowerV.x, vect.y, lowerV.z) end
	if vect.z < lowerV.z then lowerV = Vector3.new(lowerV.x, lowerV.y, vect.z) end
	if vect.x > upperV.x then upperV = Vector3.new(vect.x, upperV.y, upperV.z) end
	if vect.y > upperV.y then upperV = Vector3.new(upperV.x, vect.y, upperV.z) end
	if vect.z > upperV.z then upperV = Vector3.new(upperV.x, upperV.y, vect.z) end
	
	lowerV = extentSpace:pointToWorldSpace(lowerV)
	upperV = extentSpace:pointToWorldSpace(upperV)	
	
	return lowerV, upperV
end

function unionTuple(bounds, lowerBounds, upperBounds, extentSpace)
	if not bounds.Lower and not bounds.Upper then return {Lower=nil, Upper=nil} end	
	
	if not lowerBounds then lowerBounds = bounds.Lower end
	if not upperBounds then upperBounds = bounds.Upper end
	
	lowerBounds = Utility.minVector3(bounds.Lower, lowerBounds)
	upperBounds = Utility.maxVector3(bounds.Upper, upperBounds)
	
	return {Lower=lowerBounds, Upper=upperBounds}
end	

local level = 0


function unionVector3NoSpaceChange(vect, lowerV, upperV)
	if not vect then
		return lowerV, upperV
	end
	if not lowerV then lowerV = vect end
	if not upperV then upperV = vect end
	if vect.x < lowerV.x then lowerV = Vector3.new(vect.x, lowerV.y, lowerV.z) end
	if vect.y < lowerV.y then lowerV = Vector3.new(lowerV.x, vect.y, lowerV.z) end
	if vect.z < lowerV.z then lowerV = Vector3.new(lowerV.x, lowerV.y, vect.z) end
	if vect.x > upperV.x then upperV = Vector3.new(vect.x, upperV.y, upperV.z) end
	if vect.y > upperV.y then upperV = Vector3.new(upperV.x, vect.y, upperV.z) end
	if vect.z > upperV.z then upperV = Vector3.new(upperV.x, upperV.y, vect.z) end
	
	return lowerV, upperV
end

function getPartBounds(object, currentSpace)
	
	-- traced usge of getPartBounds. This'll never be nil.
	-- on another note: extentSpace doesn't exist in this scope...
	--if not currentSpace then currentSpace = extentSpace end

	local halfSize = object.Size / 2
	
	local lowerBounds, upperBounds

	lowerBounds, upperBounds = unionVector3(object.CFrame:pointToWorldSpace(halfSize * Vector3.new(-1,-1,-1)), lowerBounds, upperBounds,currentSpace)
	lowerBounds, upperBounds = unionVector3(object.CFrame:pointToWorldSpace(halfSize * Vector3.new(-1,-1,1)), lowerBounds, upperBounds,currentSpace)
	lowerBounds, upperBounds = unionVector3(object.CFrame:pointToWorldSpace(halfSize * Vector3.new(-1,1,-1)), lowerBounds, upperBounds,currentSpace)
	lowerBounds, upperBounds = unionVector3(object.CFrame:pointToWorldSpace(halfSize * Vector3.new(-1,1,1)), lowerBounds, upperBounds,currentSpace)
	lowerBounds, upperBounds = unionVector3(object.CFrame:pointToWorldSpace(halfSize * Vector3.new(1,-1,-1)), lowerBounds, upperBounds,currentSpace)
	lowerBounds, upperBounds = unionVector3(object.CFrame:pointToWorldSpace(halfSize * Vector3.new(1,-1,1)), lowerBounds, upperBounds,currentSpace)
	lowerBounds, upperBounds = unionVector3(object.CFrame:pointToWorldSpace(halfSize * Vector3.new(1,1,-1)), lowerBounds, upperBounds,currentSpace)
	lowerBounds, upperBounds = unionVector3(object.CFrame:pointToWorldSpace(halfSize * Vector3.new(1,1,1)), lowerBounds, upperBounds,currentSpace)
	
	return lowerBounds, upperBounds
end


function getExtentsRecursive(object, extentSpace)
	level = level + 1
		
	local lowerBounds = nil
	local upperBounds = nil
	
	local children = object:GetChildren()
	
	for _,part in ipairs(children) do
		--local bounds = unionTuple(getExtentsRecursive(part, extentSpace), lowerBounds, upperBounds, extentSpace)
		local bounds = getExtentsRecursive(part, extentSpace)
		
		lowerBounds, upperBounds = unionVector3(bounds.Lower, lowerBounds, upperBounds, extentSpace)
		lowerBounds, upperBounds = unionVector3(bounds.Upper, lowerBounds, upperBounds, extentSpace)
	end
	
	if object:IsA("BasePart") then 
	
		local halfSize = object.Size / 2
		lowerBounds, upperBounds = unionVector3(object.CFrame:pointToWorldSpace(halfSize * Vector3.new(-1,-1,-1)), lowerBounds, upperBounds,extentSpace)
		lowerBounds, upperBounds = unionVector3(object.CFrame:pointToWorldSpace(halfSize * Vector3.new(-1,-1,1)), lowerBounds, upperBounds,extentSpace)
		lowerBounds, upperBounds = unionVector3(object.CFrame:pointToWorldSpace(halfSize * Vector3.new(-1,1,-1)), lowerBounds, upperBounds,extentSpace)
		lowerBounds, upperBounds = unionVector3(object.CFrame:pointToWorldSpace(halfSize * Vector3.new(-1,1,1)), lowerBounds, upperBounds,extentSpace)
		lowerBounds, upperBounds = unionVector3(object.CFrame:pointToWorldSpace(halfSize * Vector3.new(1,-1,-1)), lowerBounds, upperBounds,extentSpace)
		lowerBounds, upperBounds = unionVector3(object.CFrame:pointToWorldSpace(halfSize * Vector3.new(1,-1,1)), lowerBounds, upperBounds,extentSpace)
		lowerBounds, upperBounds = unionVector3(object.CFrame:pointToWorldSpace(halfSize * Vector3.new(1,1,-1)), lowerBounds, upperBounds,extentSpace)
		lowerBounds, upperBounds = unionVector3(object.CFrame:pointToWorldSpace(halfSize * Vector3.new(1,1,1)), lowerBounds, upperBounds,extentSpace)
	end
	
	level = level - 1
	return {Lower = lowerBounds, Upper = upperBounds}
end

local function getExtentsOfSelection(extentSpace)
	local selection = game:GetService("Selection"):Get()
	
	local lowerBounds = nil
	local upperBounds = nil
	
	for i,v in ipairs(selection) do
		if v.Parent and v.Parent.Parent and v:IsDescendantOf(workspace) then
			local bounds = getExtentsRecursive(v, extentSpace)
			lowerBounds, upperBounds = unionVector3(bounds.Lower, lowerBounds, upperBounds, extentSpace)
			lowerBounds, upperBounds = unionVector3(bounds.Upper, lowerBounds, upperBounds, extentSpace)
		end
		
	end
	
	if not lowerBounds or not upperBounds then
		lowerBounds = extentSpace.p
		upperBounds = extentSpace.p
	end
	
	return lowerBounds, upperBounds
end

local Fuzzy = require(script.Parent.FuzzyMath)

function getExtentsOfList(list, extentSpace)
	local selection = list
	
	local lowerBounds = nil
	local upperBounds = nil
	
	for i,v in ipairs(selection) do
		local bounds = getExtentsRecursive(v, extentSpace)
		lowerBounds, upperBounds = unionVector3(bounds.Lower, lowerBounds, upperBounds, extentSpace)
		lowerBounds, upperBounds = unionVector3(bounds.Upper, lowerBounds, upperBounds, extentSpace)
		
	end
	
	if not lowerBounds then
		lowerBounds = Vector3.new(0,0,0)
	end
	
	if not upperBounds then
		upperBounds = Vector3.new(0,0,0)
	end
	
	lowerBounds = extentSpace:pointToObjectSpace(lowerBounds)
	upperBounds = extentSpace:pointToObjectSpace(upperBounds)
	return {Lower=lowerBounds, Upper=upperBounds}
end

function getExtents(extentSpace)
	local lowerBounds, upperBounds = getExtentsOfSelection(extentSpace)
	
	lowerBounds = extentSpace:pointToObjectSpace(lowerBounds)
	upperBounds = extentSpace:pointToObjectSpace(upperBounds)
	return {Lower=lowerBounds, Upper=upperBounds}
end

function extentsToCFrameAndSize(extents, extentSpace)
	if not extents.Lower or not extents.Upper then return nil, nil end
		
	local size = Utility.absVector3(extents.Upper - extents.Lower)
	local position = extents.Lower + (size / 2)
	
	return extentSpace:toWorldSpace(CFrame.new(position)), size
end

function setPartCFrameToExtents(part, space)
		
	local extentSpace
	if space then
		extentSpace = space
	else
		extentSpace = CFrame.new(Vector3.new(0,0,0))
	end
		
	local cframe, size = extentsToCFrameAndSize(getExtents(extentSpace), extentSpace)
	
	if size then part.Size = size end
	
	if cframe then 
		part.CFrame = cframe 
	end	
end

local function getCFrameOfList(list, extentSpace)
	local extents = getExtentsOfList(list, extentSpace)
	local cframe = extentsToCFrameAndSize(extents, extentSpace)
	return cframe
end

local function getSizeOfList(list, extentSpace)
	local extents = getExtentsOfList(list, extentSpace)
	local cframe, size = extentsToCFrameAndSize(extents,extentSpace)
	return size
end

local function getCFrameAndSizeOfList(list, extentSpace)
	local extents = getExtentsOfList(list, extentSpace)
	return extentsToCFrameAndSize(extents,extentSpace)
end

local module = {}

module.setPartCFrameToExtents = setPartCFrameToExtents
module.unionVector3NoSpaceChange = unionVector3NoSpaceChange
module.getPartBounds = getPartBounds

module.getCFrameOfList = getCFrameOfList
module.getSizeOfList = getSizeOfList
module.getCFrameAndSizeOfList = getCFrameAndSizeOfList

return module
