local FastFlags = require(script.Parent.Parent.FastFlags)

local MovePoses = {}

MovePoses.AnchorKey = nil
MovePoses.MinTimeKey = nil
MovePoses.MaxTimeKey = nil
MovePoses.TargetTime = nil
MovePoses.GUIKeyList = {}

local function getGUIKeyframesFromSelectedKeyframes(Paths)
	local GUIKeyframes = {}
	local keyframes = Paths.DataModelSession:getSelectedKeyframes()
	for time, dataItems in pairs(keyframes) do
		for _, dataItem in pairs(dataItems) do
			local jointScript = Paths.GUIScriptJointTimeline.JointScripts[dataItem.Item]
			for _, key in ipairs(jointScript.Keyframes) do
				if time == key.Time then
					table.insert(GUIKeyframes, key)
				end
			end
		end
	end
	return GUIKeyframes
end

if FastFlags:isScaleKeysOn() then
	function MovePoses:getGUIKeys(Paths)
		GUIKeys = getGUIKeyframesFromSelectedKeyframes(Paths)
		if not Paths.HelperFunctionsTable:isNilOrEmpty(GUIKeys) then
			MinTimeKey = GUIKeys[1]
			MaxTimeKey = GUIKeys[1]
			for index, key in ipairs(GUIKeys) do
				if key.Time < MinTimeKey.Time then
					MinTimeKey = key
				end
				if key.Time > MaxTimeKey.Time then
					MaxTimeKey = key
				end
			end
		end
		return GUIKeys, MinTimeKey, MaxTimeKey
	end
end

function MovePoses:init(Paths)
	self.PosesMovedEvent = Paths.UtilityScriptEvent:new()
	self.Connections = Paths.UtilityScriptConnections:new()

	local onMouseMoved = function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement then
			if Paths.UtilityScriptMovePoses:isMovingKeys() then
				self:Move(Paths)
			end
		end
	end

	local onMouseEnded = function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 then
			self:EndMove(Paths)
		end
	end

	self.Connections:add(Paths.GUIScriptIndicatorArea.TargetWidget.InputChanged:connect(onMouseMoved))
	self.Connections:add(Paths.GUIScriptIndicatorArea.TargetWidget.InputEnded:connect(onMouseEnded))
	self.Connections:add(Paths.GUIScriptJointTimeline.TargetWidget.InputChanged:connect(onMouseMoved))
	self.Connections:add(Paths.GUIScriptJointTimeline.TargetWidget.InputEnded:connect(onMouseEnded))
end

function MovePoses:terminate()
	self.PosesMovedEvent = nil

	self.Connections:disconnectAll()
	self.Connections = nil
end

function MovePoses:BeginMove(Paths, anchor)
	self.AnchorKey = anchor
	if FastFlags:isScaleKeysOn() then
		self.GUIKeyList, self.MinTimeKey, self.MaxTimeKey = self:getGUIKeys(Paths)
	else
		self.GUIKeyList = getGUIKeyframesFromSelectedKeyframes(Paths)
		if not Paths.HelperFunctionsTable:isNilOrEmpty(self.GUIKeyList) then
			self.MinTimeKey = self.GUIKeyList[1]
			self.MaxTimeKey = self.GUIKeyList[1]
			for index, key in ipairs(self.GUIKeyList) do
				if key.Time < self.MinTimeKey.Time then
					self.MinTimeKey = key
				end
				if key.Time > self.MaxTimeKey.Time then
					self.MaxTimeKey = key
				end
			end
		end
	end
end

function MovePoses:Move(Paths)
	if self.AnchorKey ~= nil and self.MinTimeKey ~= nil and self.MaxTimeKey ~= nil then
		local previousTargetTime = self.TargetTime ~= nil and self.TargetTime or 0
		self.TargetTime = Paths.UtilityScriptDisplayArea:getFormattedMouseTime(true)
		local anchorTime = self.AnchorKey.Time
		for index, key in ipairs(self.GUIKeyList) do
			local deltaTime = anchorTime - key.Time
			local newTime =  self.TargetTime - deltaTime

			local timeFromMin = key.Time - self.MinTimeKey.Time
			local timeFromMax = Paths.DataModelClip:getLength() - self.MaxTimeKey.Time + key.Time

			if newTime < timeFromMin or newTime > timeFromMax then
				self.TargetTime = previousTargetTime
				break
			end
			newTime = Paths.DataModelSession:formatTimeValue(newTime)
			Paths.GUIScriptKeyframe:updateKeyframeOnTimeline(Paths, key, newTime)
		end
		self.PosesMovedEvent:fire(self.TargetTime, anchorTime)
	end
end

function MovePoses:EndMove(Paths)
	if self.AnchorKey ~= nil and self.MinTimeKey ~= nil and self.TargetTime ~= nil then
		local anchorTime = self.AnchorKey.Time
		local minTime = self.MinTimeKey.Time
		local pasteTime = Paths.DataModelSession:formatTimeValue(self.TargetTime - (anchorTime - minTime))
		Paths.ActionMove:execute(Paths, pasteTime)
	end
	self.AnchorKey = nil
	self.MinTimeKey = nil
	self.MaxTimeKey = nil
	self.TargetTime = nil
	self.GUIKeyList = {}
end

function MovePoses:isMovingKeys()
	return self.AnchorKey ~= nil
end

return MovePoses