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

function IndicatorArea:init(Paths)
	self.Paths = Paths
	self.TargetWidget = Paths.GUIIndicatorArea
	self.Paths.UtilityScriptDisplayArea:addDisplay(self.TargetWidget)
	self.Connections = Paths.UtilityScriptConnections:new()

	initKeyframeIndicators(self, self.Paths.DataModelKeyframes.keyframeList)
	self.Connections:add(self.Paths.DataModelKeyframes.ChangedEvent:connect(function(keyframes)
		initKeyframeIndicators(self, keyframes)
	end))
end

function IndicatorArea:addKeyframeIndicator(time)
	self.KeyframeIndicators[#self.KeyframeIndicators + 1] = self.Paths.GUIScriptKeyframeIndicator:new(self.Paths, self.TargetWidget, time)
end

function IndicatorArea:clearKeyframeIndicators()
	for _, indicator in ipairs(self.KeyframeIndicators) do
		indicator:terminate()
	end
	self.KeyframeIndicators = {}
end

function IndicatorArea:terminate()
	self.Paths.UtilityScriptDisplayArea:removeDisplay(self.TargetWidget)
	self.TargetWidget = nil
	self.Connections:disconnectAll()
end

return IndicatorArea