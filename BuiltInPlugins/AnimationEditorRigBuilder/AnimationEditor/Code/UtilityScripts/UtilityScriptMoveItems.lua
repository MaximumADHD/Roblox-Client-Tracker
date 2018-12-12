local FastFlags = require(script.Parent.Parent.FastFlags)

local MoveItems = {}

MoveItems.AnchorItem = nil
MoveItems.MinTimeItem = nil
MoveItems.MaxTimeItem = nil
MoveItems.TargetTime = nil
MoveItems.GUIItemList = {}

function MoveItems:getGUIKeyframesFromSelectedKeyframes(Paths)
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

function MoveItems:getGUIEventKeysFromSelectedEvents(Paths)
	local GUIEvents = {}
	local events = Paths.DataModelAnimationEvents:getSelectedEvents()
	for time in pairs(events) do
		for _, item in ipairs(Paths.GUIScriptAnimationEventBar.KeyframeMarkers) do
			if item.Time == time then
				table.insert(GUIEvents, item)
			end
		end
	end
	return GUIEvents
end

function MoveItems:getMinAndMaxTimeItems(Paths, itemList)
	if not Paths.HelperFunctionsTable:isNilOrEmpty(itemList) then
		local minTimeItem = itemList[1]
		local maxTimeItem = itemList[1]
		for index, item in ipairs(itemList) do
			if item.Time < minTimeItem.Time then
				minTimeItem = item
			end
			if item.Time > maxTimeItem.Time then
				maxTimeItem = item
			end
		end
		return minTimeItem, maxTimeItem
	end
end

function MoveItems:init(Paths)
	self.OnMovedEvent = Paths.UtilityScriptEvent:new()
	self.Connections = Paths.UtilityScriptConnections:new()

	local onMouseMoved = function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement then
			if Paths.UtilityScriptMoveItems:isMoving() then
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
	self.Connections:add(Paths.GUIScriptAnimationEventBar.EventArea.InputEnded:connect(onMouseEnded))
	self.Connections:add(Paths.GUIScriptAnimationEventBar.EventArea.InputChanged:connect(onMouseMoved))
end

function MoveItems:terminate()
	self.OnMovedEvent = nil

	self.Connections:disconnectAll()
	self.Connections = nil
end

function MoveItems:BeginMove(Paths, anchor, itemList, moveFunc)
	self.MoveFunc = moveFunc
	self.AnchorItem = anchor
	self.GUIItemList = itemList
	self.MinTimeItem, self.MaxTimeItem = self:getMinAndMaxTimeItems(Paths, self.GUIItemList)
end

function MoveItems:Move(Paths)
	if self.AnchorItem ~= nil and self.MinTimeItem ~= nil and self.MaxTimeItem ~= nil then
		local previousTargetTime = self.TargetTime ~= nil and self.TargetTime or 0
		self.TargetTime = Paths.UtilityScriptDisplayArea:getFormattedMouseTime(true)
		local anchorTime = self.AnchorItem.Time
		for index, item in ipairs(self.GUIItemList) do
			local deltaTime = anchorTime - item.Time
			local newTime =  self.TargetTime - deltaTime

			local timeFromMin = item.Time - self.MinTimeItem.Time
			local timeFromMax = Paths.DataModelClip:getLength() - self.MaxTimeItem.Time + item.Time

			if newTime < timeFromMin or newTime > timeFromMax then
				self.TargetTime = previousTargetTime
				break
			end
			newTime = Paths.DataModelSession:formatTimeValue(newTime)
			self:updatePositionOnTimeline(Paths, item, newTime)
		end
		self.OnMovedEvent:fire()
		if self.MoveFunc then
			self.MoveFunc(self.TargetTime, anchorTime)
		end
	end
end

function MoveItems:EndMove(Paths)
	if self.AnchorItem ~= nil and self.MinTimeItem ~= nil and self.TargetTime ~= nil then
		local anchorTime = self.AnchorItem.Time
		local minTime = self.MinTimeItem.Time
		local pasteTime = Paths.DataModelSession:formatTimeValue(self.TargetTime - (anchorTime - minTime))
		Paths.ActionMove:execute(Paths, pasteTime)
	end
	self.AnchorItem = nil
	self.MinTimeItem = nil
	self.MaxTimeItem = nil
	self.TargetTime = nil
	self.GUIItemList = {}
end

function MoveItems:updatePositionOnTimeline(Paths, item, time)
	local currentPosition = item.TargetWidget.Position
	item.TargetWidget.Position = UDim2.new(math.clamp(time/Paths.DataModelClip:getLength(), 0, 1), currentPosition.X.Offset, currentPosition.Y.Scale, currentPosition.Y.Offset)
end

function MoveItems:isMoving()
	return self.AnchorItem ~= nil
end

return MoveItems