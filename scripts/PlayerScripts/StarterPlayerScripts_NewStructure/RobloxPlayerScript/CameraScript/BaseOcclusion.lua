--[[
	BaseOcclusion - Abstract base class for character occlusion control modules
	2018 Camera Update - AllYourBlox		
--]]

--[[ The Module ]]--
local BaseOcclusion = {}
BaseOcclusion.__index = BaseOcclusion
setmetatable(BaseOcclusion, { __call = function(_, ...) return BaseOcclusion.new(...) end})

function BaseOcclusion.new()
	local self = setmetatable({}, BaseOcclusion)
	return self
end

-- Called when character is added
function BaseOcclusion:CharacterAdded(player, character)
	
end

-- Called when character is about to be removed
function BaseOcclusion:CharacterRemoving(player, character)
	
end

function BaseOcclusion:OnCameraSubjectChanged(newSubject)
	
end

--[[ Derived classes are required to override and implement all of the following functions ]]--
function GetOcclusionMode()
	-- Must be overriden in derived classes to return an Enum.DevCameraOcclusionMode value
	warn("BaseOcclusion GetOcclusionMode must be overriden by derived classes")
	return nil
end

function BaseOcclusion:Enable(enabled)
	warn("BaseOcclusion Enable must be overriden by derived classes")
end

function BaseOcclusion:Update(dt, desiredCameraCFrame, desiredCameraFocus)
	warn("BaseOcclusion Update must be overriden by derived classes")
	return desiredCameraCFrame, desiredCameraFocus
end

return BaseOcclusion
