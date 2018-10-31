local FastFlags = require(script.Parent.Parent.FastFlags)

local ConstrainKeyData = {}
ConstrainKeyData.__index = ConstrainKeyData

local function waitForTransformUpdate()
	wait()
end

local function updatePlayback(Paths, time)
	waitForTransformUpdate()
	Paths.DataModelPlayState:setTime(time)
	waitForTransformUpdate()
	local allMotorC1s = Paths.DataModelRig:calculateAllMotorC1s()
	Paths.DataModelPlayState:pauseAndStop()
	Paths.DataModelRig:setAllMotorC1s(allMotorC1s)
	waitForTransformUpdate()
end

local function ikSolve(Paths, dataItem)
	waitForTransformUpdate()
	Paths.Globals.PhysicsService:ikSolve(dataItem.Item, dataItem.Item.CFrame, Paths.DataModelIKManipulator.TranslationStiffness, Paths.DataModelIKManipulator.RotationStiffness)
	waitForTransformUpdate()
end

local function setConstraint(Paths, dataItem, enabled)
	local constraint = Paths.UtilityScriptHumanIK:getConstraintForPart(dataItem.Item)
	if constraint then
		constraint.Enabled = enabled
	end
end

local function removeMotor6D(dataItem)
	dataItem.Motor6D.Part0 = nil
	dataItem.Motor6D.Part1 = nil
	dataItem.Motor6D.Parent = game.Workspace
end

local function reconfigureMotor6D(dataItem, part0CFrame, c0)
	local c1 = dataItem.Item.CFrame:inverse() * part0CFrame * c0
	dataItem.Motor6D.Part0 = dataItem.Parent.Item
	dataItem.Motor6D.Part1 = dataItem.Item
	dataItem.Motor6D.Parent = dataItem.Item
	dataItem.Motor6D.C0 = c0
	dataItem.Motor6D.C1 = c1
end

local function verifyKeyframeChanged(Paths, changedKeys, dataItem, time, keyframeData, newCFrame)
	local prevKfdCFrameComps = {keyframeData.CFrame:components()}
	keyframeData.CFrame = newCFrame * dataItem.OriginC1:inverse()
	local newKfdCFrameComps = {keyframeData.CFrame:components()}
	for index, comp in ipairs(prevKfdCFrameComps) do
		if not Paths.HelperFunctionsMath:isCloseToZero(math.abs(prevKfdCFrameComps[index] - newKfdCFrameComps[index])) then
			if not changedKeys[time] then
				changedKeys[time] = {}
			end
			changedKeys[time][dataItem.Item] = dataItem
		end
	end
end

local function updateAnimationData(Paths)
	Paths.DataModelPartManipulator:updateManipulationSelection()
	Paths.DataModelPlayState:recreateAnimationTrack()
	waitForTransformUpdate()
end

-- static function
function ConstrainKeyData:execute(Paths)
	Paths.UtilityScriptUndoRedo:registerUndo(Paths.ActionConstrainKeyData:new(Paths))
	Paths.DataModelSession:selectNone()
	Paths.DataModelSession:lockInput(true)
	spawn(function()
		local cancelled = false
		local keyframes = Paths.DataModelKeyframes.keyframeList
		local changedKeys = {}
		for time, keyframe in pairs(keyframes) do
			if Paths.DataModelIKManipulator:wasConstrainJointsCancellationRequested() then
				cancelled = true
				break
			end

			updatePlayback(Paths, time)

			for _, pose in pairs(keyframe.Poses) do
				local dataItem = pose.Item
				local c0 = dataItem.Motor6D.C0
				local part0CFrame = dataItem.Motor6D.Part0.CFrame
				removeMotor6D(dataItem)
				setConstraint(Paths, dataItem, true)
				ikSolve(Paths, dataItem)
				setConstraint(Paths, dataItem, false)
				local keyframeData = Paths.DataModelKeyframes:getOrCreateKeyframeData(dataItem.Item, time, false, false)
				reconfigureMotor6D(dataItem, part0CFrame, c0)
				verifyKeyframeChanged(Paths, changedKeys, dataItem, time, keyframeData, dataItem.Motor6D.C1)
				waitForTransformUpdate()
			end

			updateAnimationData(Paths)
		end
		if cancelled then
			Paths.UtilityScriptUndoRedo:undo()
		else
			for time, dataItems in pairs(changedKeys) do
				Paths.DataModelSession:addPosesToSelectedKeyframes(time, dataItems, false)
			end
			Paths.DataModelPartManipulator:updateManipulationSelection()
			Paths.GUIScriptPoseOverwriteWarning:show("The highlighted keys have been changed to fit IK constraint")
		end
		Paths.DataModelSession:lockInput(false)
		Paths.GUIScriptWaitingDialog:hide()
	end)
end

function ConstrainKeyData:new(Paths)
	local self = setmetatable({}, ConstrainKeyData)
	self.SubAction = Paths.ActionEditClip:new(Paths, {action = Paths.ActionEditClip.ActionType.editTransform})
	return self
end

function ConstrainKeyData:undo()	
	self.SubAction:undo()
end

function ConstrainKeyData:redo()
	self.SubAction:redo()
end

function ConstrainKeyData:getDescription()
	return "Constrain Key Data"
end

return ConstrainKeyData
