-- singleton
local FastFlags = require(script.Parent.Parent.FastFlags)

local CopyPaste = {}
CopyPaste.Connections = nil

CopyPaste.CopyItemsList = {}

CopyPaste.CopyItemsStash = {}

CopyPaste.CopiedSingleKeyframe = false

CopyPaste.CopiedInIKMode = false

CopyPaste.CopyPasteEnabled = true

CopyPaste.CopiedPoses = false

CopyPaste.CopyVariables = {
	CFrame = "CFrame",
	EasingDirection = "EasingDirection",
	EasingStyle = "EasingStyle",
	Time = "Time",
}

if FastFlags:isFixRenameKeyOptionOn() then
	CopyPaste.CopyVariables["Item"] = "Item"
end

function CopyPaste:init(Paths)
	self.Paths = Paths
	CopyPaste.Connections = Paths.UtilityScriptConnections:new()

	CopyPaste.Connections:add(Paths.InputKeyboard.KeyPressedEvent:connect(function(theKey)
		if Paths.InputKeyboard:isKeyCtrlOrCmdDown() and (not FastFlags:isAnimationEventsOn() or self.CopyPasteEnabled) then
			if Paths.InputKeyboard:isKeyShiftDown() and self.Paths.DataModelSession:isOnlyOneKeyframeSelected() then
				if Enum.KeyCode.C == theKey then
					self:copyAllKeyframePoses(self.Paths.DataModelClip:getKeyframe(self.Paths.DataModelSession:getSelectedKeyframeTime()))
				elseif Enum.KeyCode.X == theKey then
					self:cutAllKeyframePoses(self.Paths.DataModelClip:getKeyframe(self.Paths.DataModelSession:getSelectedKeyframeTime()))
				end
			else
				if FastFlags:isAnimationEventsOn() then
					if Enum.KeyCode.V == theKey then
						self:paste(Paths.DataModelSession:getScrubberTime())
					elseif Enum.KeyCode.C == theKey then
						self:copy()
					elseif Enum.KeyCode.X == theKey then
						self:cut()
					end
				else
					if Enum.KeyCode.V == theKey then
						self:paste(Paths.DataModelSession:getScrubberTime())
					elseif Enum.KeyCode.C == theKey then
						self:copy(Paths.DataModelSession:getSelectedKeyframes())
					elseif Enum.KeyCode.X == theKey then
						self:cut(Paths.DataModelSession:getSelectedKeyframes())
					end
				end
			end
		end
	end))
end

function CopyPaste:terminate(Paths)
	CopyPaste.Connections:terminate()
	CopyPaste.Connections = nil

	if FastFlags:isAnimationEventsOn() then
		self:resetCopyItems()
	else
		self:resetCopyPoses()
	end
	self.Paths = nil
end

function CopyPaste:setCopyPasteEnabled(enabled)
	self.CopyPasteEnabled = enabled
end

if FastFlags:isAnimationEventsOn() then
	if FastFlags:isKeepClipboardAfterMoveOn() then
		function CopyPaste:resetCopyItems(takeFromStash)
			if self.Paths.HelperFunctionsTable:isNilOrEmpty(self.CopyItemsStash) or not takeFromStash then
				self.CopyItemsList = {}
			else
				self.CopyItemsList = self.CopyItemsStash
				self.CopyItemsStash = {}
			end
		end
	else
		function CopyPaste:resetCopyItems()
			self.CopyItemsList = {}
		end
	end
else
	function CopyPaste:resetCopyPoses()
		self.CopyItemsList = {}
	end
end

function CopyPaste:stashCopyItems()
	self.CopyItemsStash = self.CopyItemsList
end

if FastFlags:isAnimationEventsOn() then
	function CopyPaste:cut(registerUndo)
		local keyframes = self.Paths.DataModelSession:getSelectedKeyframes()
		local events = self.Paths.DataModelAnimationEvents:getSelectedEvents()
		if not self.Paths.HelperFunctionsTable:isNilOrEmpty(events) then
			self.Paths.ActionCut:executeCutEvents(self.Paths, events, registerUndo)
		else
			self.Paths.ActionCut:execute(self.Paths, keyframes, registerUndo)
		end
	end

	function CopyPaste:copy()
		local keyframes = self.Paths.DataModelSession:getSelectedKeyframes()
		local events = self.Paths.DataModelAnimationEvents:getSelectedEvents()
		if not self.Paths.HelperFunctionsTable:isNilOrEmpty(events) then
			self.CopiedPoses = false
			self:copyEvents(events)
		else
			self.CopiedPoses = true
			self.CopiedSingleKeyframe = false
			self.CopiedInIKMode = self.Paths.DataModelIKManipulator.IsIKModeActive
			if keyframes then
				if FastFlags:isAnimationEventsOn() then
					self:resetCopyItems()
				else
					self:resetCopyPoses()
				end
				for time, dataItems in pairs(keyframes) do
					for _, dataItem in pairs(dataItems) do
						self:copyPose(self.Paths.DataModelKeyframes:getPoseFromPartName(dataItem.Name, time))
					end
				end
			end
		end
	end
else
	function CopyPaste:cut(keyframes, registerUndo)
		self.Paths.ActionCut:execute(self.Paths, keyframes, registerUndo)
	end

	function CopyPaste:copy(keyframes)
		self.CopiedSingleKeyframe = false
		self.CopiedInIKMode = self.Paths.DataModelIKManipulator.IsIKModeActive
		if keyframes then
			if FastFlags:isAnimationEventsOn() then
				self:resetCopyItems()
			else
				self:resetCopyPoses()
			end
			for time, dataItems in pairs(keyframes) do
				for _, dataItem in pairs(dataItems) do
					self:copyPose(self.Paths.DataModelKeyframes:getPoseFromPartName(dataItem.Name, time))
				end
			end
		end
	end
end

function CopyPaste:copyEvents(events)
	self:resetCopyItems()
	for time, _ in pairs(events) do
		self.CopyItemsList[time] = self.Paths.DataModelClip:getKeyframe(time).Markers
	end
end

function CopyPaste:copyPose(pose)
	if pose then
		if self.CopyItemsList[pose:getPartName()] == nil then
			self.CopyItemsList[pose:getPartName()] = {}
		end
		local newCopy = {}
		for _,name in pairs(self.CopyVariables) do
			newCopy[name] = pose[name]
		end
		if FastFlags:isFixRenameKeyOptionOn() then
			newCopy.KeyframeName = self.Paths.DataModelClip:getKeyframe(newCopy.Time).Name
		end
		table.insert(self.CopyItemsList[pose:getPartName()], newCopy)
	end
end

function CopyPaste:cutAllKeyframePoses(keyframe)
	self.Paths.ActionCut:executeCutKeyframe(self.Paths, keyframe)
end

function CopyPaste:copyAllKeyframePoses(keyframe)
	self.CopiedSingleKeyframe = true
	self.CopiedInIKMode = self.Paths.DataModelIKManipulator.IsIKModeActive
	if keyframe and keyframe.Poses then
		if FastFlags:isAnimationEventsOn() then
			self:resetCopyItems()
		else
			self:resetCopyPoses()
		end
		for _, pose in pairs(keyframe.Poses) do
			self:copyPose(pose)
		end
	end
end

function CopyPaste:hasCopiedMultiplePoses()
	return self.Paths.HelperFunctionsTable:containsMultipleKeys(self.CopyItemsList)
end

function CopyPaste:canPasteKeyframePoses()
	return self:hasCopiedMultiplePoses()
end

-- is there anything available to paste
function CopyPaste:canPasteAny()
	return not self.Paths.HelperFunctionsTable:isNilOrEmpty(self.CopyItemsList)
end

-- is the specified part name available to paste
function CopyPaste:canPaste(partName)
	return self:canPasteAny() and (nil ~= self.CopyItemsList[partName] or self.CopiedSingleKeyframe)
end

-- get the part name of the available pastable pose (if any)
function CopyPaste:getPasteDescription()
	if self:canPasteAny() then
		local description = self:hasCopiedMultiplePoses() and "Selection" or next(self.CopyItemsList)
		return self.CopiedSingleKeyframe and "Keyframe" or description
	end

	return ""
end

local function canPasteEvents(self)
	return self:canPasteAny() and not self.CopiedPoses and self.Paths.DataModelAnimationEvents:isEditEventsEnabled()
end

if FastFlags:isFixRenameKeyOptionOn() then
	function CopyPaste:paste(atTime, scaleFactor, registerUndo)
		if FastFlags:isAnimationEventsOn() then
			if canPasteEvents(self) then
				self.Paths.ActionPaste:executePasteEvents(self.Paths, atTime, self.CopyItemsList, registerUndo)
			elseif not FastFlags:isSelectEventsOnEdgeOn() or self:canPasteAny() then
				self.Paths.ActionPaste:execute(self.Paths, atTime, scaleFactor, self.CopyItemsList, self.CopyVariables, self.CopiedInIKMode, registerUndo)
			end
		elseif self:canPasteAny() then
			self.Paths.ActionPaste:execute(self.Paths, atTime, scaleFactor, self.CopyItemsList, self.CopyVariables, self.CopiedInIKMode, registerUndo)
		end
	end
else
	function CopyPaste:paste(atTime, registerUndo)
		if FastFlags:isAnimationEventsOn() then
			if canPasteEvents(self) then
				self.Paths.ActionPaste:executePasteEvents(self.Paths, atTime, self.CopyItemsList, registerUndo)
			elseif not FastFlags:isSelectEventsOnEdgeOn() or self:canPasteAny() then
				self.Paths.ActionPaste:execute(self.Paths, atTime, self.CopyItemsList, self.CopyVariables, self.CopiedInIKMode, registerUndo)
			end
		elseif self:canPasteAny() then
			self.Paths.ActionPaste:execute(self.Paths, atTime, self.CopyItemsList, self.CopyVariables, self.CopiedInIKMode, registerUndo)
		end
	end
end

return CopyPaste
