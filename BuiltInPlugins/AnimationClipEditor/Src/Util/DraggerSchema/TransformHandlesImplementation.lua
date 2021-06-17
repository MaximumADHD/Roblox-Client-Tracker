local Plugin = script.Parent.Parent.Parent.Parent
local DraggerFramework = Plugin.Packages.DraggerFramework
local Constants = require(Plugin.Src.Util.Constants)

local getBoundingBoxScale = require(DraggerFramework.Utility.getBoundingBoxScale)
local PartMover = require(DraggerFramework.Utility.PartMover)
local AttachmentMover = require(DraggerFramework.Utility.AttachmentMover)
local RigUtils = require(Plugin.Src.Util.RigUtils)
local Workspace = game:GetService("Workspace")
local TransformHandlesImplementation = {}
TransformHandlesImplementation.__index = TransformHandlesImplementation

function TransformHandlesImplementation.new(draggerContext, ikTransformFunction, tool)
	return setmetatable({
		_draggerContext = draggerContext,
		_ikTransformFunction = ikTransformFunction,
		_partMover = PartMover.new(),
		_attachmentMover = AttachmentMover.new(),
		_motordata = {},
		_tool = tool,
	}, TransformHandlesImplementation)
end	

local function getLastJoint(joints)
	if joints then
		return joints[#joints]
	end
end


--[[
	Start dragging the items in initialSelectionInfo.
]]
function TransformHandlesImplementation:beginDrag(selection, initialSelectionInfo)
	local partsToMove, attachmentsToMove =
		initialSelectionInfo:getObjectsToTransform()
	self._hasPartsToMove = #partsToMove > 0

	self._draggerContext.AddWaypoint()

	self._partsToMove = partsToMove
	self._jointsToOrigTransform = {}
	for _, part in ipairs(self._partsToMove) do
		self._joints = part:GetJoints()
		for _, joint in ipairs(part:GetJoints()) do
			self._jointsToOrigTransform[joint] = RigUtils.getJointTransform(joint)
		end
	end
	if self:_shouldSolveConstraints() then 
		self._effectorCFrame = getLastJoint(partsToMove[1]:GetJoints()).Part1.CFrame

		self._motorData = RigUtils.ikDragStart(
			self._draggerContext.RootInstance,
			partsToMove[1],
			self._draggerContext.IKMode == Constants.IK_MODE.BodyPart,
			self._draggerContext.StartingPose,
			self._draggerContext.PinnedParts)
	end

	self._lastGoodGeometricTransform = CFrame.new()
	local basisCFrame, offset
	basisCFrame, offset, self._boundingBoxSize =
		initialSelectionInfo:getBoundingBox()
	self._centerPoint = basisCFrame * CFrame.new(offset)
end

local function applyLocalTransform(cframe, transform)
	return cframe * transform
end

--[[
	Try to move the selection passed to beginDrag by a global transform relative
	to where it started, that is for each point p in the selection:
	  p' = globalTransform * p
	Then return that global transform that was actually applied.
]]
function TransformHandlesImplementation:updateDrag(globalTransform)
	self._globalTransform = globalTransform
	local localTransform = self:_toLocalTransform(globalTransform)

	if not self:_shouldSolveConstraints() then 
		local appliedTransform
		local values = {}
		for _, part in ipairs(self._partsToMove) do
			for _, joint in ipairs(part:GetJoints()) do
				appliedTransform = applyLocalTransform(self._jointsToOrigTransform[joint], localTransform)
				if(joint.Part1.Name == part.name) then 
					values[joint.Part1.Name] = appliedTransform
				end
			end
		end

		if values ~= nil then 
			self._draggerContext.OnManipulateJoints("Root", values)
		end
	else 
		if self._tool == Enum.RibbonTool.Move then 
			if self._effectorCFrame then
				local updatedCFrame = globalTransform * self._effectorCFrame

				local joint = getLastJoint(self._joints)
	
				local rootPart = RigUtils.findRootPart(self._draggerContext.RootInstance)
				local effectorInRange = (rootPart.CFrame.p - updatedCFrame.p).Magnitude <= Constants.MIN_EFFECTOR_DISTANCE
				local translationStiffness = effectorInRange and Constants.MIN_TRANSLATION_STIFFNESS or Constants.MIN_TRANSLATION_STIFFNESS
				local rotationStiffness = effectorInRange and Constants.MIN_ROTATION_STIFFNESS or Constants.MIN_ROTATION_STIFFNESS
				Workspace:IKMoveTo(joint.Part1, updatedCFrame, translationStiffness, rotationStiffness, Enum.IKCollisionsMode.NoCollisions)
				local actualCFrame = joint.Part1.CFrame
				local actualGlobalTransform = actualCFrame * self._effectorCFrame:Inverse()
				return actualGlobalTransform
			end
		end
		
		if self._tool == Enum.RibbonTool.Rotate then
			if self._effectorCFrame then
				local updatedCFrame = globalTransform * self._effectorCFrame
	
				local joint = getLastJoint(self._joints)
				Workspace:IKMoveTo(joint.Part1, updatedCFrame, Constants.TRANSLATION_STIFFNESS, Constants.ROTATION_STIFFNESS, Enum.IKCollisionsMode.NoCollisions)
				local actualCFrame = joint.Part1.CFrame
				local actualGlobalTransform = actualCFrame * self._effectorCFrame:Inverse()
				return actualGlobalTransform
			end
		end
	end

	return globalTransform
end

--[[
	Finish dragging the items.
]]
function TransformHandlesImplementation:endDrag()
	if self:_shouldSolveConstraints() then
		local values = RigUtils.ikDragEnd(self._draggerContext.RootInstance, self._motorData)
		self._draggerContext.OnManipulateJoints("Root", values)
	end
end

--[[
	Renders any snapping, joint, etc widgets that should show up while dragging.
	Returns: A Roact element.
]]
function TransformHandlesImplementation:render(globalTransform)
	return nil
end

function TransformHandlesImplementation:_toLocalTransform(globalTransform)
	return self._centerPoint:Inverse() * globalTransform * self._centerPoint
end

function TransformHandlesImplementation:_shouldSolveConstraints()
	return self._draggerContext.IKEnabled and self._hasPartsToMove
end

return TransformHandlesImplementation