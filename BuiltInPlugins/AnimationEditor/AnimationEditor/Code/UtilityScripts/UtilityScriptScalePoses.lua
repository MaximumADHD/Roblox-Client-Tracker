local FastFlags = require(script.Parent.Parent.FastFlags)

local ScalePoses = {}

ScalePoses.AnchorKey = nil
ScalePoses.MinTimeKey = nil
ScalePoses.MaxTimeKey = nil
ScalePoses.TargetTime = nil
ScalePoses.Duration = 0
ScalePoses.GUIKeyList = {}

local function getScaleFactor(anchorKey, minTimeKey, targetTime, duration)
	local newDuration = anchorKey == minTimeKey and (targetTime - anchorKey.Time) or (anchorKey.Time - targetTime)
	return newDuration / duration
end

function ScalePoses:init(Paths)
	self.PosesScaledEvent = Paths.UtilityScriptEvent:new()
end

function ScalePoses:terminate()
	self.PosesScaledEvent = nil
end

function ScalePoses:BeginScale(Paths, fromLeft)
	if FastFlags:isAnimationEventsOn() then
		self.GUIKeyList = Paths.UtilityScriptMoveItems:getGUIKeyframesFromSelectedKeyframes(Paths)
		self.MinTimeKey, self.MaxTimeKey = Paths.UtilityScriptMoveItems:getMinAndMaxTimeItems(Paths, self.GUIKeyList)
	else
		self.GUIKeyList, self.MinTimeKey, self.MaxTimeKey = Paths.UtilityScriptMoveItems:getGUIKeys(Paths)
	end
	self.AnchorKey = fromLeft and self.MaxTimeKey or self.MinTimeKey
	self.Duration = self.MaxTimeKey.Time - self.MinTimeKey.Time
end

function ScalePoses:Scale(Paths, atTime)
	if self.AnchorKey ~= nil and self.MinTimeKey ~= nil and self.MaxTimeKey ~= nil then
		self.TargetTime = atTime
		local anchorTime = self.AnchorKey.Time
		local scaleFactor = nil
		if FastFlags:isOptimizationsEnabledOn() then
			scaleFactor = getScaleFactor(self.AnchorKey, self.MinTimeKey, self.TargetTime, self.Duration)
		end
		for index, key in ipairs(self.GUIKeyList) do
			if not FastFlags:isOptimizationsEnabledOn() then
				scaleFactor = getScaleFactor(self.AnchorKey, self.MinTimeKey, self.TargetTime, self.Duration)
			end
			local deltaTime = (anchorTime - key.Time) * scaleFactor
			local newTime =  anchorTime - deltaTime
			newTime = Paths.DataModelSession:formatTimeValue(newTime)
			Paths.GUIScriptKeyframe:updateKeyframeOnTimeline(Paths, key, newTime)
			if not FastFlags:isOptimizationsEnabledOn() then
				self.PosesScaledEvent:fire(anchorTime, scaleFactor)
			end
		end
		if FastFlags:isOptimizationsEnabledOn() then
			self.PosesScaledEvent:fire(anchorTime, scaleFactor)
		end
	end
end

function ScalePoses:EndScale(Paths, atTime)
	if self.AnchorKey ~= nil and self.MinTimeKey ~= nil and self.TargetTime ~= nil then
		local anchorTime = self.AnchorKey.Time
		local scaleFactor = getScaleFactor(self.AnchorKey, self.MinTimeKey, self.TargetTime, self.Duration)
		if FastFlags:isFixRenameKeyOptionOn() then
			Paths.ActionMove:execute(Paths, anchorTime, scaleFactor)
		else
			Paths.ActionScale:execute(Paths, anchorTime, scaleFactor)
		end
	end

	self.AnchorKey = nil
	self.MinTimeKey = nil
	self.MaxTimeKey = nil
	self.TargetTime = nil
	self.Duration = 0
	self.GUIKeyList = {}
end

function ScalePoses:isScalingKeys()
	return self.AnchorKey ~= nil
end

return ScalePoses