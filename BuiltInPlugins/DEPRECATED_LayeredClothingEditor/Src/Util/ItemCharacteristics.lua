local Plugin = script.Parent.Parent.Parent
local Constants = require(Plugin.Src.Util.Constants)
local DebugFlags = require(Plugin.Src.Util.DebugFlags)
local Cryo = require(Plugin.Packages.Cryo)
local ItemCharacteristics = {}

local GetFFlagFixNoCageMeshIdCrash = require(Plugin.Src.Flags.GetFFlagFixNoCageMeshIdCrash)

function ItemCharacteristics.isItemEmpty(item)
	return not item or item == Cryo.None
end

function ItemCharacteristics.getOuterCage(item)
	return not ItemCharacteristics.isItemEmpty(item) and (item:FindFirstChildWhichIsA("WrapTarget", true) or item:FindFirstChildWhichIsA("WrapLayer", true)) or nil
end

function ItemCharacteristics.getInnerCage(item)
	return not ItemCharacteristics.isItemEmpty(item) and item:FindFirstChildWhichIsA("WrapLayer", true) or nil
end

function ItemCharacteristics.hasOuterCage(item)
	if DebugFlags.MockItemHasFullCage() then
		return true
	end
	return ItemCharacteristics.getOuterCage(item) and true or false
end

function ItemCharacteristics.hasInnerCage(item)
	if DebugFlags.MockItemHasFullCage() then
		return true
	end
	return ItemCharacteristics.getInnerCage(item) and true or false
end

-- returns true if wraps have no mesh id's or wraps were not found
function ItemCharacteristics.hasInvalidCage(item)
	local outerCage = ItemCharacteristics.getOuterCage(item)
	local innerCage = ItemCharacteristics.getInnerCage(item)

	-- item shouldn't ever have an inner cage but no outer cage
	assert(not innerCage or outerCage)

	if not outerCage and not innerCage then
		return false
	end

	if outerCage and not innerCage then
		return outerCage.CageMeshId == ""
	end

	if outerCage and innerCage then
		return outerCage.CageMeshId == "" or innerCage.ReferenceMeshId == ""
	end
end

local function isInWorkspace(item)
	return not ItemCharacteristics.isItemEmpty(item) and item:FindFirstAncestorOfClass("Workspace") ~= nil
end

function ItemCharacteristics.hasCages(item)
	local hasInnerCage = ItemCharacteristics.hasInnerCage(item)
	local hasOuterCage = ItemCharacteristics.hasOuterCage(item)
	return hasInnerCage, hasOuterCage
end

function ItemCharacteristics.missingOuterCage(item)
	return not ItemCharacteristics.hasOuterCage(item)
end

function ItemCharacteristics.missingInnerCage(item)
	return not ItemCharacteristics.isAvatar(item) and not ItemCharacteristics.hasOuterCage(item)
end

function ItemCharacteristics.hasFullCages(item)
	return not ItemCharacteristics.missingInnerCage(item) and not ItemCharacteristics.missingOuterCage(item)
end

function ItemCharacteristics.hasAnyCage(item)
	local hasInnerCage, hasOuterCage = ItemCharacteristics.hasCages(item)
	if GetFFlagFixNoCageMeshIdCrash() then
		return not ItemCharacteristics.hasInvalidCage(item) and (hasInnerCage or hasOuterCage)
	else
		return hasInnerCage or hasOuterCage
	end
end

function ItemCharacteristics.getAvatarFromMeshPart(meshPart)
	if ItemCharacteristics.isAvatar(meshPart.Parent) and meshPart:FindFirstChildWhichIsA("WrapTarget") then
		return meshPart.Parent
	end
	return meshPart
end

function ItemCharacteristics.isAvatar(item)
	if ItemCharacteristics.isItemEmpty(item) then
		return false
	end
	local isModel = item:IsA("Model")
	local hasHumanoid = item:FindFirstChild("Humanoid") and true or false
	local hasMeshPart = item:FindFirstChildWhichIsA("MeshPart") and true or false
	return isModel and hasHumanoid and hasMeshPart
end

function ItemCharacteristics.isClothes(item)
	if ItemCharacteristics.isItemEmpty(item) then
		return false
	end
	return item:IsA("MeshPart")
end

function ItemCharacteristics.isLayeredClothingItem(item)
	local isParentAvatar = item.Parent and ItemCharacteristics.isAvatar(item.Parent)
	local isLayeredClothingAvatar = item:IsA("Model") and ItemCharacteristics.isAvatar(item)
	local isLayeredClothes = item:IsA("MeshPart") and ItemCharacteristics.hasAnyCage(item)
	return not isParentAvatar and (isLayeredClothingAvatar or isLayeredClothes)
end

-- item that might not be qualified to be fetch by lc item list automatically
-- But still have potential to be lc item, so developer can add into the list manually
function ItemCharacteristics.isPotentialLayeredClothingItem(item)
	local isLayeredClothingAvatar = item:IsA("Model") and ItemCharacteristics.isAvatar(item)
	local isLayeredClothes = item:IsA("MeshPart")
	local isInWorkspace = isInWorkspace(item)
	return isInWorkspace and (isLayeredClothingAvatar or isLayeredClothes)
end

-- TODO - this function is not final
function ItemCharacteristics.isFullyCagedCharacter(item)
	return ItemCharacteristics.isAvatar(item)
end

-- TODO - this function is not final
function ItemCharacteristics.isFullyCagedClothing(item)
	return ItemCharacteristics.isClothes(item) and ItemCharacteristics.hasInnerCage(item) and ItemCharacteristics.hasOuterCage(item)
end

return ItemCharacteristics