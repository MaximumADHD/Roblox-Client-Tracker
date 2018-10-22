-- singleton
local FastFlags = require(script.Parent.Parent.FastFlags)

local CopyPaste = {}
CopyPaste.Connections = nil

CopyPaste.CopyPoseList = {}

CopyPaste.CopiedSingleKeyframe = false

CopyPaste.CopyVariables = {
	CFrame = "CFrame",
	EasingDirection = "EasingDirection",
	EasingStyle = "EasingStyle",
	Time = "Time",
}

function CopyPaste:init(Paths)
	self.Paths = Paths
	CopyPaste.Connections = Paths.UtilityScriptConnections:new()
	
	CopyPaste.Connections:add(Paths.InputKeyboard.KeyPressedEvent:connect(function(theKey)
		if Paths.InputKeyboard:isKeyCtrlOrCmdDown() then
			if Paths.InputKeyboard:isKeyShiftDown() and self.Paths.DataModelSession:isOnlyOneKeyframeSelected() then
				if Enum.KeyCode.C == theKey then
					self:copyAllKeyframePoses(self.Paths.DataModelClip:getKeyframe(self.Paths.DataModelSession:getSelectedKeyframeTime()))
				elseif Enum.KeyCode.X == theKey then
					self:cutAllKeyframePoses(self.Paths.DataModelClip:getKeyframe(self.Paths.DataModelSession:getSelectedKeyframeTime()))
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
	end))
end

function CopyPaste:terminate(Paths)
	CopyPaste.Connections:terminate()
	CopyPaste.Connections = nil

	self:resetCopyPoses()
	self.Paths = nil
end

function CopyPaste:resetCopyPoses()
	self.CopyPoseList = {}
end

function CopyPaste:cut(keyframes, registerUndo)
	self.Paths.ActionCut:execute(self.Paths, keyframes, registerUndo)
end

function CopyPaste:copy(keyframes)
	self.CopiedSingleKeyframe = false
	if keyframes then
		self:resetCopyPoses()
		for time, dataItems in pairs(keyframes) do
			for _, dataItem in pairs(dataItems) do
				self:copyPose(self.Paths.DataModelKeyframes:getPoseFromPartName(dataItem.Name, time))
			end
		end
	end
end

function CopyPaste:copyPose(pose)
	if pose then
		if self.CopyPoseList[pose:getPartName()] == nil then
			self.CopyPoseList[pose:getPartName()] = {}
		end
		local newCopy = {}
		for _,name in pairs(self.CopyVariables) do
			newCopy[name] = pose[name]
		end
		table.insert(self.CopyPoseList[pose:getPartName()], newCopy)
	end
end

function CopyPaste:cutAllKeyframePoses(keyframe)
	self.Paths.ActionCut:executeCutKeyframe(self.Paths, keyframe)
end

function CopyPaste:copyAllKeyframePoses(keyframe)
	self.CopiedSingleKeyframe = true
	if keyframe and keyframe.Poses then
		self:resetCopyPoses()
		for _, pose in pairs(keyframe.Poses) do
			self:copyPose(pose)
		end
	end
end

function CopyPaste:hasCopiedMultiplePoses()
	return self.Paths.HelperFunctionsTable:containsMultipleKeys(self.CopyPoseList)
end

function CopyPaste:canPasteKeyframePoses()
	return self:hasCopiedMultiplePoses()
end

-- is there anything available to paste
function CopyPaste:canPasteAny()
	return not self.Paths.HelperFunctionsTable:isNilOrEmpty(self.CopyPoseList)
end

-- is the specified part name available to paste
function CopyPaste:canPaste(partName)
	return self:canPasteAny() and (nil ~= self.CopyPoseList[partName] or self.CopiedSingleKeyframe)
end

-- get the part name of the available pastable pose (if any)
function CopyPaste:getPasteDescription()
	if self:canPasteAny() then
		local description = self:hasCopiedMultiplePoses() and "Selection" or next(self.CopyPoseList)
		return self.CopiedSingleKeyframe and "Keyframe" or description
	end

	return ""
end

function CopyPaste:paste(atTime, registerUndo)
	if self:canPasteAny() then
		self.Paths.ActionPaste:execute(self.Paths, atTime, self.CopyPoseList, self.CopyVariables, registerUndo)
	end
end

return CopyPaste