local FastFlags = require(script.Parent.Parent.FastFlags)
-- singleton
local IndicatorArea = {}

IndicatorArea.TargetWidget = nil
IndicatorArea.Connections = nil
IndicatorArea.KeyframeIndicators = {}

local function initKeyframeIndicators(self, keyframes)
	self.Paths.GUIScriptIndicatorArea:clearKeyframeIndicators()
	for time, key in pairs(keyframes) do
		if not self.Paths.HelperFunctionsTable:isNilOrEmpty(key.Poses) then
			self.Paths.GUIScriptIndicatorArea:addKeyframeIndicator(time)
		end
	end
end

local function updateKeyframeIndicators(self, keyframes)
	for time, key in pairs(keyframes) do
		if not self.Paths.HelperFunctionsTable:isNilOrEmpty(key) and not self.Paths.HelperFunctionsTable:isNilOrEmpty(key.Poses) then
			self:addKeyframeIndicator(time)
		else
			self:removeKeyframeIndicator(time)
		end
	end
end

function IndicatorArea:init(Paths)
	self.Paths = Paths
	self.TargetWidget = Paths.GUIIndicatorArea
	self.Paths.UtilityScriptDisplayArea:addDisplay(self.TargetWidget)
	self.Connections = Paths.UtilityScriptConnections:new()

	initKeyframeIndicators(self, self.Paths.DataModelKeyframes.keyframeList)
	self.Connections:add(self.Paths.DataModelKeyframes.ChangedEvent:connect(function(keyframes)
		if FastFlags:isOptimizationsEnabledOn() then
			updateKeyframeIndicators(self, keyframes)
		else
			initKeyframeIndicators(self, keyframes)
		end
	end))

	if FastFlags:isOptimizationsEnabledOn() then
		self.Connections:add(self.TargetWidget.InputBegan:connect(function(input)
			if Enum.UserInputType.MouseButton1 == input.UserInputType then
				if not self.Paths.InputKeyboard:isKeyCtrlOrCmdDown() then
					self.Paths.DataModelSession:selectNone()
				end
			end
		end))
	end
end

function IndicatorArea:removeKeyframeIndicator(time)
	if self.KeyframeIndicators[time] then
		self.KeyframeIndicators[time]:terminate()
		self.KeyframeIndicators[time] = nil
	end
end

function IndicatorArea:addKeyframeIndicator(time)
	if FastFlags:isOptimizationsEnabledOn() then
		if self.KeyframeIndicators[time] then
			self.KeyframeIndicators[time].Time = time
		else
			self.KeyframeIndicators[time] = self.Paths.GUIScriptKeyframeIndicator:new(self.Paths, self.TargetWidget, time)
		end
	else
		self.KeyframeIndicators[#self.KeyframeIndicators + 1] = self.Paths.GUIScriptKeyframeIndicator:new(self.Paths, self.TargetWidget, time)
	end
end

function IndicatorArea:clearKeyframeIndicators()
	for _, indicator in pairs(self.KeyframeIndicators) do
		indicator:terminate()
	end
	self.KeyframeIndicators = {}
end

function IndicatorArea:terminate()
	self.Paths.UtilityScriptDisplayArea:removeDisplay(self.TargetWidget)
	if FastFlags:isEnableRigSwitchingOn() then
		self:clearKeyframeIndicators()
	end
	self.TargetWidget = nil
	self.Connections:disconnectAll()
end

return IndicatorArea