local FastFlags = require(script.Parent.Parent.FastFlags)

local Pose = {}
Pose.__index = Pose

-- static
function Pose:initializePose(Paths, keyframe, part, poseObject, override)
	local active = Paths.DataModelRig.partInclude[part.Name]
	if ((not active and (override == false or override == nil)) or keyframe == nil) then
		return nil
	end
	
	local pose = keyframe.Poses[part]
	if (pose == nil and Paths.DataModelRig.partToItemMap[part] ~= nil and Paths.DataModelRig.partToItemMap[part].Motor6D ~= nil) then
		local previousPose = Paths.DataModelClip:getPreviousPose(keyframe.Time, part)
		pose = Paths.UtilityScriptPose:new(Paths)
		
		if (previousPose == nil) then
			pose.CFrame = CFrame.new()
		else
			pose.CFrame = previousPose.CFrame
		end
		
		local data = Paths.DataModelRig.partToItemMap[part]
		if FastFlags:isFixInterpolationSettingOn() and not Paths.DataModelPreferences:getValue(Paths.DataModelPreferences.Type.Interpolation) and previousPose then
			pose.CFrame = Paths.DataModelRig:getMotorC1(data, previousPose.Time) * data.OriginC1:inverse()
		else
			pose.CFrame = Paths.DataModelRig:getMotorC1(data, keyframe.Time) * data.OriginC1:inverse()
		end
		
		pose.Item = Paths.DataModelRig.partToItemMap[part]
		pose.Time = keyframe.Time
				
		if poseObject then
			pose.EasingStyle = poseObject.EasingStyle
			pose.EasingDirection = poseObject.EasingDirection
		else
			pose.EasingStyle = Paths.UtilityScriptPose:getDefaultEasingStyle()
			pose.EasingDirection = Paths.UtilityScriptPose:getDefaultEasingDirection()
		end
				
		keyframe.Poses[part] = pose
	end
	return pose
end

function Pose:getDefaultEasingStyle()
	return Enum.PoseEasingStyle.Linear
end

function Pose:getDefaultEasingDirection()
	return Enum.PoseEasingDirection.Out
end

function Pose:new(Paths)
	local self = setmetatable({}, Pose)	
	return self
end

function Pose:getPartName()
	return self:getPart().Name
end

function Pose:getPart()
	return self:getDataItem().Item
end

function Pose:getDataItem()
	return self.Item
end

return Pose
