--[[
	A set of tools for manipulating a joint's pose.

	Props:
		Part CurrentPart = The current part being manipulated.
		Enum.RibbonTool Tool = The current manipulator tool to use.
		bool WorldSpace = Whether to use world space for manipulating.
		Motor6D Joint = The current joint to manipulate.
		Instance Container = A container to place the handles in. Defaults to
			CoreGui, so overrides in this prop are likely for testing only.
		Instance RootInstance = instance of the model being manipulated in the editor
		bool IKEnabled = whether or not to use ik manipulation logic when dragging handles
		table MotorData = saved motor data for ik manipulations before the motors were deleted
			Expect format is as follows:
			{
				[part] = {
					Name = motor name
					Parent = parent instance of motor
					Part0 = motor Part0
					Part1 = motor Part1
					C0 = motor C0
					C1 = motor C1
				}
			}

		callback OnManipulateJoints(table newValues) = A callback for when
			a single joint or set of joints have been manipulated.
		callback OnDragStart() = A function for when the user starts interacting
			with a tool. Used to dispatch History waypoints.
]]

local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local PhysicsService = game:GetService("PhysicsService")
local StudioService = game:GetService("StudioService")
local CoreGui = game:GetService("CoreGui")
local Workspace = game:GetService("Workspace")

local Plugin = script.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Roact)
local Cryo = require(Plugin.Cryo)
local Constants = require(Plugin.Src.Util.Constants)

local ActionContext = require(Plugin.Src.Context.ActionContext)
local getActions = ActionContext.getActions

local RigUtils = require(Plugin.Src.Util.RigUtils)
local FixManipulators = require(Plugin.LuaFlags.GetFFlagFixAnimEditorManipulators)
local FixRigUtils = require(Plugin.LuaFlags.GetFFlagFixRigUtils)
local IsMicroboneSupportEnabled = require(Plugin.LuaFlags.GetFFlagAnimationEditorMicroboneSupport)
local GetFFlagMigrateIkSolve = require(Plugin.LuaFlags.GetFFlagMigrateIkSolve)

local JointManipulator = Roact.PureComponent:extend("JointManipulator")

local function applyLocalTransform(cframe, transform)
	return cframe * transform
end

local function getTransformedParent(self)
    local parent = self.Parent
    if parent then
        if parent:IsA("Bone") then
            return parent.TransformedWorldCFrame
        elseif parent:IsA("BasePart") then
            return parent.CFrame
        end
    end
    return CFrame.new()
end

local function getWorldPivot(joint)
	return getTransformedParent(joint.Bone) * joint.Bone.CFrame
end

local function applyWorldTransform(transform, joint)
	if IsMicroboneSupportEnabled() and joint.Type == Constants.BONE_CLASS_NAME then
		local pivot =  getWorldPivot(joint)
		local partFrame = joint.Bone.TransformedWorldCFrame
		partFrame = transform * (partFrame - partFrame.Position) + partFrame.Position
		return pivot:toObjectSpace(partFrame)
	else
		local pivot = joint.Part0.CFrame * joint.C0
		local partFrame = joint.Part1.CFrame * joint.C1
		partFrame = transform * (partFrame - partFrame.Position) + partFrame.Position
		return pivot:toObjectSpace(partFrame)
	end
end

function JointManipulator:init()
	self.adornee = Roact.createRef()
	self.arcHandles = Roact.createRef()
	self.leftHandle = Roact.createRef()
	self.rightHandle = Roact.createRef()
	self.topHandle = Roact.createRef()
	self.bottomHandle = Roact.createRef()
	self.frontHandle = Roact.createRef()
	self.backHandle = Roact.createRef()

	self.baseAngle = nil
	self.baseDistance = nil
	self.dragging = false
	self.draggingAngle = 0

	self.state = {
		rotationAxis = nil,
		currentFace = nil,
	}
	self.manipulateJoint = function(transform)
		local values = {}

		for _, joint in ipairs(self.props.Joints) do
			local newValue
			if self.props.WorldSpace then
				newValue = applyWorldTransform(transform, joint)
			else
				if FixManipulators() then
					if IsMicroboneSupportEnabled() and joint.Type == Constants.BONE_CLASS_NAME then
						newValue = applyLocalTransform(joint.Bone.Transform, transform)
					else
						local jointTransform = RigUtils.getJointTransform(joint)
						newValue = applyLocalTransform(jointTransform, transform)
					end
				else
					newValue = applyLocalTransform(joint.Transform, transform)
				end
			end
			if IsMicroboneSupportEnabled() and joint.Type == Constants.BONE_CLASS_NAME then
				values[joint.Bone.Name] = newValue
			else
				values[joint.Part1.Name] = newValue
			end
		end

		self.props.OnManipulateJoints(values)
	end

	self.setMotorData = function()
		local joint = self.getLastJoint()
		if self.props.SetMotorData and joint and (not IsMicroboneSupportEnabled() or joint.Type ~= Constants.BONE_CLASS_NAME) then
			if FixRigUtils() then
				self.RootPart = RigUtils.findRootPart(self.props.RootInstance)
			end
			local motorData = RigUtils.ikDragStart(
				self.props.RootInstance,
				joint.Part1,
				self.props.IKMode == Constants.IK_MODE.BodyPart,
				self.props.StartingPose,
				self.props.PinnedParts)
			self.props.SetMotorData(motorData)

			self.effectorCFrame = joint.Part1.CFrame
		end
	end

	self.onDragStart = function()
		if self.props.OnDragStart then
			self.props.OnDragStart()
		end
	end

	self.onArcMouseDown = function()
		-- Don't set baseAngle here because otherwise the joint will
		-- snap to the mouse when the user starts dragging.
		self.dragging = true
		self.onDragStart()
		if self.props.IKEnabled then
			self.setMotorData()
		end
	end

	self.onLineMouseDown = function()
		self.baseDistance = 0
		self.dragging = true
		self.onDragStart()
		if self.props.IKEnabled then
			self.setMotorData()
		end
	end

	self.getLastJoint = function()
		if self.props.Joints then
			return self.props.Joints[#self.props.Joints]
		end
	end

	self.ikRotate = function(axis, angle)
		if self.effectorCFrame then
			local rotation = CFrame.fromAxisAngle(axis, angle)
			if not self.props.WorldSpace then
				rotation = self.effectorCFrame - self.effectorCFrame.p
				local rotatedAxis = rotation * axis
				rotation = CFrame.fromAxisAngle(rotatedAxis, angle)
			end
			local translation = CFrame.new(self.effectorCFrame.p)
			self.effectorCFrame = translation * rotation * translation:inverse() * self.effectorCFrame

			local joint = self.getLastJoint()
			if GetFFlagMigrateIkSolve() then
				Workspace:IKMoveTo(joint.Part1, self.effectorCFrame, Constants.TRANSLATION_STIFFNESS, Constants.ROTATION_STIFFNESS, Enum.IKCollisionsMode.NoCollisions)
			else
				PhysicsService:ikSolve(joint.Part1, self.effectorCFrame, Constants.TRANSLATION_STIFFNESS, Constants.ROTATION_STIFFNESS)
			end
		end
	end

	self.onArcMouseDrag = function(_, axis, relativeAngle)
		local joint = self.getLastJoint()
		if self.props.OnManipulateJoints and joint then
			local gridSize = math.rad(StudioService.RotateIncrement)
			local interval
			if gridSize > 0 then
				interval = math.floor(relativeAngle / gridSize) * gridSize
			else
				interval = relativeAngle
			end
			if not self.baseAngle then
				self.baseAngle = interval
				self:setState({
					rotationAxis = axis,
				})
			end
			local newAngle = interval - self.baseAngle
			self.baseAngle = interval
			self.draggingAngle = interval

			if self.props.IKEnabled and (not IsMicroboneSupportEnabled() or joint.Type ~= Constants.BONE_CLASS_NAME) then
				self.ikRotate(Vector3.FromAxis(axis), newAngle)
			else
				self.manipulateJoint(CFrame.fromAxisAngle(Vector3.FromAxis(axis), newAngle))
			end

			if IsMicroboneSupportEnabled() then
				RigUtils.updateMicrobones(self.props.RootInstance)
			end
		end
	end

	self.ikTranslate = function(transform)
		if self.effectorCFrame then
			if self.props.WorldSpace then
				self.effectorCFrame = transform * self.effectorCFrame
			else
				local rotation = self.effectorCFrame - self.effectorCFrame.p
				self.effectorCFrame = self.effectorCFrame + (rotation * transform.p)
			end
			local joint = self.getLastJoint()

			local rootPart
			if FixRigUtils() then
				rootPart = self.RootPart
			else
				rootPart = RigUtils.findRootPart(self.props.RootInstance)
			end
			local effectorInRange = (rootPart.CFrame.p - self.effectorCFrame.p).Magnitude <= Constants.MIN_EFFECTOR_DISTANCE
			local translationStiffness = effectorInRange and Constants.TRANSLATION_STIFFNESS or Constants.MIN_TRANSLATION_STIFFNESS
			local rotationStiffness = effectorInRange and Constants.ROTATION_STIFFNESS or Constants.MIN_ROTATION_STIFFNESS
			if GetFFlagMigrateIkSolve() then
				Workspace:IKMoveTo(joint.Part1, self.effectorCFrame, translationStiffness, rotationStiffness, Enum.IKCollisionsMode.NoCollisions)
			else
				PhysicsService:ikSolve(joint.Part1, self.effectorCFrame, translationStiffness, rotationStiffness)
			end
		end
	end

	self.onLineMouseDrag = function(_, face, distance)
		local joint = self.getLastJoint()
		if self.props.OnManipulateJoints and joint then
			local gridSize = StudioService.GridSize
			local interval
			if gridSize > 0 then
				interval = math.floor(distance / gridSize) * gridSize
			else
				interval = distance
			end
			if self.baseDistance == 0 then
				self:setState({
					currentFace = face,
				})
			end
			local newDistance = interval - self.baseDistance
			self.baseDistance = interval

			local transform = CFrame.new(Vector3.FromNormalId(face) * newDistance)
			if self.props.IKEnabled and (not IsMicroboneSupportEnabled() or joint.Type ~= Constants.BONE_CLASS_NAME) then
				self.ikTranslate(transform)
			else
				self.manipulateJoint(transform)
			end

			if IsMicroboneSupportEnabled() then
				RigUtils.updateMicrobones(self.props.RootInstance)
			end
		end
	end

	self.onDragStop = function()
		self.baseAngle = nil
		self.dragging = false
		self.draggingAngle = 0
		self:setState({
			rotationAxis = Roact.None,
			currentFace = Roact.None,
		})

		if self.props.IKEnabled and self.props.MotorData then
			local values = RigUtils.ikDragEnd(self.props.RootInstance, self.props.MotorData)
			self.props.OnManipulateJoints(values)
			self.props.SetMotorData(Cryo.None)

			local joint = self.getLastJoint()
			if joint then
				self.effectorCFrame = not FixManipulators() and joint.Part1.CFrame or nil
			end

			if FixRigUtils() then
				self.RootPart = nil
			end
		end
	end

	self.inputEnded = UserInputService.InputEnded:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 then
			if self.dragging then
				self.onDragStop()
			end
		end
	end)

	self.updateAdornee = RunService.RenderStepped:Connect(function()
		local props = self.props
		local part = props.CurrentPart
		local tool = props.Tool
		local worldSpace = props.WorldSpace
		local ikEnabled = props.IKEnabled
		local rotationAxis = self.state.rotationAxis
		local joint = self.getLastJoint()

		local adornee = self.adornee.current
		if adornee and joint then
			local pivot

			if (not IsMicroboneSupportEnabled() or joint.Type ~= Constants.BONE_CLASS_NAME) and not self.dragging then
				self.P0 = joint.Part0.CFrame
				self.C0 = joint.C0
			end

			if FixManipulators() then
				if IsMicroboneSupportEnabled() and joint.Type == Constants.BONE_CLASS_NAME then
					pivot = RigUtils.getBoneCFrame(joint.Bone)
				else
					local jointTransform = RigUtils.getJointTransform(joint)
					pivot = self.dragging and (self.P0 * self.C0 * jointTransform) or (joint.Part0.CFrame * joint.C0 * jointTransform)
				end
			else
				if tool == Enum.RibbonTool.Rotate then
					pivot = self.dragging and (self.P0 * self.C0 * joint.Transform) or (joint.Part0.CFrame * joint.C0 * joint.Transform)
				else
					pivot = part.CFrame
				end
			end

			if not self.dragging then
				self.startingPosition = pivot.Position
			end

			if FixManipulators() then
				if ikEnabled then
					if self.effectorCFrame then
						pivot = self.effectorCFrame
					else
						pivot = part.CFrame
					end
				end
			else
				if ikEnabled and self.effectorCFrame then
					pivot = self.effectorCFrame
				end
			end

			if tool == Enum.RibbonTool.Rotate and self.dragging and not ikEnabled then
				-- retain current position, only change rotation
				if not self.props.WorldSpace then
					adornee.CFrame = (pivot - pivot.p) + self.startingPosition
				elseif FixManipulators() then
					if rotationAxis then
						local rotation = CFrame.fromAxisAngle(Vector3.FromAxis(rotationAxis), self.draggingAngle)
						adornee.CFrame = CFrame.new(self.startingPosition) * rotation
					else
						adornee.CFrame = CFrame.new(self.startingPosition)
					end
				end
			else
				if worldSpace then
					if rotationAxis then
						local rotation = CFrame.fromAxisAngle(Vector3.FromAxis(rotationAxis), self.draggingAngle)
						adornee.CFrame = CFrame.new(pivot.Position) * rotation
					else
						adornee.CFrame = CFrame.new(pivot.Position)
					end
				else
					adornee.CFrame = pivot
				end
			end
		end
	end)
end

function JointManipulator:adornHandles()
	-- If handles exist, adorn them to our fake Adornee part.
	if self.arcHandles.current then
		self.arcHandles.current.Adornee = self.adornee.current
	end
	if self.leftHandle.current then
		self.leftHandle.current.Adornee = self.adornee.current
	end
	if self.rightHandle.current then
		self.rightHandle.current.Adornee = self.adornee.current
	end
	if self.topHandle.current then
		self.topHandle.current.Adornee = self.adornee.current
	end
	if self.bottomHandle.current then
		self.bottomHandle.current.Adornee = self.adornee.current
	end
	if self.frontHandle.current then
		self.frontHandle.current.Adornee = self.adornee.current
	end
	if self.backHandle.current then
		self.backHandle.current.Adornee = self.adornee.current
	end
end

function JointManipulator:didMount()
	self:adornHandles()
	local actions = getActions(self)
	if actions.ToggleWorldSpace then
		actions.ToggleWorldSpace.Enabled = true
	end
end

function JointManipulator:didUpdate(prevProps, prevState)
	self:adornHandles()
	if not FixManipulators() and prevProps.Joints then
		local joint = self.getLastJoint()
		if prevProps.Joints[#prevProps.Joints] ~= joint then
			self.effectorCFrame = nil
		end
	end

end

function JointManipulator:createHandle(face, brickColor, ref)
	local currentFace = self.state.currentFace
	return (not currentFace or currentFace == face) and Roact.createElement("Handles", {
		Faces = Faces.new(face),
		Color = brickColor,
		Style = 'Movement',
		Archivable = false,
		[Roact.Event.MouseButton1Down] = self.onLineMouseDown,
		[Roact.Event.MouseDrag] = self.onLineMouseDrag,
		[Roact.Ref] = ref,
	})
end

function JointManipulator:render()
	local props = self.props
	local currentPart = props.CurrentPart
	local container = props.Container or CoreGui
	local tool = props.Tool

	local state = self.state
	local rotationAxis = state.rotationAxis

	local size = nil
	if IsMicroboneSupportEnabled() then
		size = currentPart:IsA("BasePart") and currentPart.Size or Vector3.new()
	else
		size = currentPart.Size
	end

	return Roact.createElement(Roact.Portal, {
		target = container,
	}, {
		Adornee = Roact.createElement("Part", {
			Archivable = false,
			Size = size,
			Transparency = 1,
			Anchored = true,
			CanCollide = false,
			[Roact.Ref] = self.adornee,
		}),

		ArcHandles = tool == Enum.RibbonTool.Rotate and Roact.createElement("ArcHandles", {
			Archivable = false,
			Axes = rotationAxis and Axes.new(rotationAxis),
			[Roact.Event.MouseButton1Down] = self.onArcMouseDown,
			[Roact.Event.MouseButton1Up] = self.onArcMouseUp,
			[Roact.Event.MouseDrag] = self.onArcMouseDrag,
			[Roact.Ref] = self.arcHandles,
		}),

		LineHandles = tool == Enum.RibbonTool.Move and Roact.createElement("Folder", {}, {
			LeftHandle = self:createHandle(Enum.NormalId.Left, BrickColor.new(1004), self.leftHandle),
			RightHandle = self:createHandle(Enum.NormalId.Right, BrickColor.new(1004), self.rightHandle),
			TopHandle = self:createHandle(Enum.NormalId.Top, BrickColor.new(1020), self.topHandle),
			BottomHandle = self:createHandle(Enum.NormalId.Bottom, BrickColor.new(1020), self.bottomHandle),
			FrontHandle = self:createHandle(Enum.NormalId.Front, BrickColor.new(1010), self.frontHandle),
			BackHandle = self:createHandle(Enum.NormalId.Back, BrickColor.new(1010), self.backHandle),
		}),
	})
end

function JointManipulator:willUnmount()
	if self.inputEnded then
		self.inputEnded:Disconnect()
	end

	if self.inputBegan then
		self.inputBegan:Disconnect()
	end

	if self.updateAdornee then
		self.updateAdornee:Disconnect()
	end

	if self.worldSpaceConnection then
		self.worldSpaceConnection:Disconnect()
	end

	local actions = getActions(self)
	if actions.ToggleWorldSpace then
		actions.ToggleWorldSpace.Enabled = false
	end
end

return JointManipulator