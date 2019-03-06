local FastFlags = require(script.Parent.Parent.FastFlags)

local AnimationEvents = {}
AnimationEvents.Selected = {Events= {}, TempEvents= {}}
AnimationEvents.AnimationEventNames = {}
AnimationEvents.EditEventsEnabled = true

function AnimationEvents:init(Paths)
	self.Paths = Paths
	self.EditEventsEnabledChangedEvent = self.Paths.UtilityScriptEvent:new()
	self.SelectionChangedEvent = self.Paths.UtilityScriptEvent:new()
end

function AnimationEvents:initPostGUICreate()
	self.Connections = self.Paths.UtilityScriptConnections:new(self.Paths)
	self.Connections:add(self.Paths.InputKeyboard.KeyPressedEvent:connect(function(theKey)					
		if self.Paths.InputKeyboard:isKeyBackSpaceOrDelete(theKey) then
			self:deleteSelectedEvents()
		end
	end))
end

function AnimationEvents:toggleEditEventsEnabled()
	self.EditEventsEnabled = not self.EditEventsEnabled
	self.EditEventsEnabledChangedEvent:fire(self.EditEventsEnabled)
	if not self.EditEventsEnabled then
		self:selectNone()
	end
end

function AnimationEvents:isEditEventsEnabled()
	return self.EditEventsEnabled
end

function AnimationEvents:selectAnimationEvent(time)
	self.Paths.DataModelSession:deselectItemsInStudioHierarchy()
	if not FastFlags:isOptimizationsEnabledOn() or not self.Paths.HelperFunctionsTable:isNilOrEmpty(self.Paths.DataModelSession:getSelectedKeyframes()) then
		self.Paths.DataModelSession:selectNone()
	end
	if not self:isAnimationEventSelected(time) then
		self.Selected.Events = {}
		self.Selected.TempEvents = {}
		self.Selected.Events[time] = time
		self.SelectionChangedEvent:fire()
	end
end

function AnimationEvents:selectNone()
	self.Selected.Events = {}
	self.Selected.TempEvents = {}
	self.SelectionChangedEvent:fire()
end

local function eventSelectionAction(self, doFire, func)
	doFire = doFire == nil and true or doFire

	func()

	if doFire then
		self.SelectionChangedEvent:fire()
	end
end

local function addAnimationEvent(self, tab, time, doFire)
	self.Paths.DataModelSession:deselectItemsInStudioHierarchy()
	if not FastFlags:isOptimizationsEnabledOn() or not self.Paths.HelperFunctionsTable:isNilOrEmpty(self.Paths.DataModelSession:getSelectedKeyframes()) then
		self.Paths.DataModelSession:selectNone()
	end
	eventSelectionAction(self, doFire, function()
		tab[time] = time
	end)
end

local function removeAnimationEvent(self, tab, time, doFire)
	eventSelectionAction(self, doFire, function()
		tab[time] = nil
	end)
end

function AnimationEvents:addMultiSelectedAnimationEvent(time)
	addAnimationEvent(self, self.Selected.TempEvents, time, false)
	self:addSelectedAnimationEvent(time, false)
end

function AnimationEvents:removeMultiSelectedAnimationEvent(time)
	if self.Selected.TempEvents[time] ~= nil then
		removeAnimationEvent(self, self.Selected.TempEvents, time, false)
		self:removeSelectedAnimationEvent(time, false)
	end
end

function AnimationEvents:addSelectedAnimationEvent(time, doFire)
	addAnimationEvent(self, self.Selected.Events, time, doFire)
end

function AnimationEvents:removeSelectedAnimationEvent(time, doFire)
	removeAnimationEvent(self, self.Selected.Events, time, doFire)
end

function AnimationEvents:resetMultiSelection()
	self.Selected.TempEvents = {}
	self.SelectionChangedEvent:fire()
end

function AnimationEvents:isAnimationEventSelected(time)
	return self.Selected.Events[time] ~= nil
end

function AnimationEvents:getSelectedEvents()
	return self.Selected.Events
end

function AnimationEvents:deleteSelectedEvents(registerUndo)
	registerUndo = registerUndo == nil and true or registerUndo
	if registerUndo then
		self.Paths.ActionEditClip:execute(self.Paths, self.Paths.ActionEditClip.ActionType.removeAnimationEvents)
	end

	for time in pairs(self.Selected.Events) do
		self:resetEvents(time, false, false)
	end

	self.SelectionChangedEvent:fire()
	if FastFlags:isOptimizationsEnabledOn() then
		self.Paths.DataModelKeyframes:fireChangedEvent()
	else
		self.Paths.DataModelKeyframes.ChangedEvent:fire(self.Paths.DataModelKeyframes.keyframeList)
	end
end

function AnimationEvents:hasMultipleEvents(time)
	return self.Paths.HelperFunctionsTable:containsMultipleKeys(self.Paths.DataModelClip:getKeyframe(time).Markers)
end

function AnimationEvents:getAllAnimationEventNamesSorted()
	local names = {}
	for name, _ in pairs(self.AnimationEventNames) do
		table.insert(names, name)
	end
	table.sort(names)
	return names
end

local function addEventName(self, name)
	if not self.AnimationEventNames[name] then
		self.AnimationEventNames[name] = 0
	end
	self.AnimationEventNames[name] = self.AnimationEventNames[name] + 1
end

local function removeEventName(self, name)
	if self.AnimationEventNames[name] then
		self.AnimationEventNames[name] = self.AnimationEventNames[name] - 1
		if self.AnimationEventNames[name] <= 0 then
			self.AnimationEventNames[name] = nil
		end
	end
end

local function changeEventName(self, previousName, newName)
	removeEventName(self, previousName)
	addEventName(self, newName)
end

local function doesEventExist(self, name)
	return self.AnimationEventNames ~= nil
end

local function animationEventAction(self, doFire, registerUndo, actionType, func)
	doFire = doFire == nil and true or doFire
	registerUndo = registerUndo == nil and true or registerUndo
	if registerUndo then
		self.Paths.ActionEditClip:execute(self.Paths, actionType)
	end

	func()

	if doFire then
		if FastFlags:isOptimizationsEnabledOn() then
			self.Paths.DataModelKeyframes:fireChangedEvent()
		else
			self.Paths.DataModelKeyframes.ChangedEvent:fire(self.Paths.DataModelKeyframes.keyframeList)
		end
	end
end

function AnimationEvents:removeAllEventsByName(name, doFire, registerUndo)
	animationEventAction(self, doFire, registerUndo, self.Paths.ActionEditClip.ActionType.removeAnimationEvents, function()
		for time, keyframe in pairs(self.Paths.DataModelKeyframes.keyframeList) do
			if not self.Paths.HelperFunctionsTable:isNilOrEmpty(keyframe.Markers) then
				self:removeEvent(time, name, false, false)
			end
		end
		removeEventName(self, name)
	end)
end

function AnimationEvents:changeAllEventsOfName(previousName, newName, doFire, registerUndo)
	animationEventAction(self, doFire, registerUndo, self.Paths.ActionEditClip.ActionType.editAnimationEvents, function()
		for time, keyframe in pairs(self.Paths.DataModelKeyframes.keyframeList) do
			self:changeEvent(time, previousName, newName)	
		end
		changeEventName(self, previousName, newName)
	end)
end

function AnimationEvents:changeEvent(time, previousName, newName, doFire, registerUndo)
	animationEventAction(self, doFire, registerUndo, self.Paths.ActionEditClip.ActionType.editAnimationEvent, function()
		local keyframe = self.Paths.DataModelKeyframes.keyframeList[time]
		if keyframe then
			if not self.Paths.HelperFunctionsTable:isNilOrEmpty(keyframe.Markers) then
				local marker = keyframe.Markers[previousName]
				if marker then
					keyframe.Markers[previousName] = nil
					keyframe.Markers[newName] = marker
					if FastFlags:isOptimizationsEnabledOn() then
						self.Paths.DataModelKeyframes:buildKeyframeListDiff(time, keyframe)
					end
					marker:setName(newName)
					changeEventName(self, previousName, newName)
				end
			end			
		end
	end)
end

function AnimationEvents:createEvent(time, name, value, doFire, registerUndo)
	animationEventAction(self, doFire, registerUndo, self.Paths.ActionEditClip.ActionType.editAnimationEvents, function()
		local marker = self.Paths.UtilityScriptKeyframeMarker:new(self.Paths, time)
		if name ~= nil then
			marker:setName(name)
		end
		if value ~= nil then
			marker:setValue(value)
		end
		local keyframe = self.Paths.DataModelKeyframes.keyframeList[time]
		keyframe.Markers[marker:getName()] = marker
		if FastFlags:isOptimizationsEnabledOn() then
			self.Paths.DataModelKeyframes:buildKeyframeListDiff(time, keyframe)
		end
		addEventName(self, marker:getName())
	end)
end

function AnimationEvents:resetEvents(time, doFire, registerUndo)
	animationEventAction(self, doFire, registerUndo, self.Paths.ActionEditClip.ActionType.removeAnimationEvents, function()
		for _, marker in pairs(self.Paths.DataModelKeyframes.keyframeList[time].Markers) do
			removeEventName(self, name)
		end
		local keyframe = self.Paths.DataModelKeyframes.keyframeList[time]
		keyframe.Markers = {}
		if FastFlags:isOptimizationsEnabledOn() then
			self.Paths.DataModelKeyframes:buildKeyframeListDiff(time, keyframe)
		end
	end)
end

function AnimationEvents:removeEvent(time, name, doFire, registerUndo)
	animationEventAction(self, doFire, registerUndo, self.Paths.ActionEditClip.ActionType.removeAnimationEvent, function()
		local keyframe = self.Paths.DataModelKeyframes.keyframeList[time]
		if keyframe.Markers[name] then
			keyframe.Markers[name] = nil
			if FastFlags:isOptimizationsEnabledOn() then
				self.Paths.DataModelKeyframes:buildKeyframeListDiff(time, keyframe)
			end
			removeEventName(self, name)
		end
	end)
end

function AnimationEvents:terminate()
	self.Connections:terminate()
	self.Connections = nil

	AnimationEvents.Selected = {Events= {}, TempEvents= {}}
	AnimationEvents.AnimationEventNames = {}

	self.SelectionChangedEvent = nil
	self.EditEventsEnabledChangedEvent = nil

	self.Paths = nil
end

return AnimationEvents