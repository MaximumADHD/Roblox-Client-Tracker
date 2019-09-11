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

local Plugin = script.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Roact)
local Cryo = require(Plugin.Cryo)
local Constants = require(Plugin.Src.Util.Constants)

local ActionContext = require(Plugin.Src.Context.ActionContext)
local getActions = ActionContext.getActions

local RigUtils = require(Plugin.Src.Util.RigUtils)

local JointManipulator = Roact.PureComponent:extend("JointManipulator")

local function applyLocalTransform(cframe, transform)
	return cframe * transform
end

local function applyWorldTransform(transform, joint)
	local pivot = joint.Part0.CFrame * joint.C0
	local partFrame = joint.Part1.CFrame * joint.C1
	partFrame = transform * (partFrame - partFrame.Position) + partFrame.Position
	return pivot:toObjectSpace(partFrame)
end

function JointManipulator:init()
	self.adornee = Roact.createRef()
	self.arcHandles = Roact.createRef()
	self.xHandles = Roact.createRef()
	self.yHandles = Roact.createRef()
	self.zHandles = Roact.createRef()

	self.baseAngle = nil
	self.baseDistance = nil
	self.dragging = false
	self.draggingAngle = 0

	self.state = {
		rotationAxis = nil,
	}
	self.manipulateJoint = function(transform)
		local values = {}

		for _, joint in ipairs(self.props.Joints) do
			local newValue
			if self.props.WorldSpace then
				newValue = applyWorldTransform(transform, joint)
			else
				newValue = applyLocalTransform(joint.Transform, transform)
			end
			values[joint.Part1.Name] = newValue
		end

		self.props.OnManipulateJoints(values)
	end

	self.setMotorData = function()
		local joint = self.getLastJoint()
		if self.props.SetMotorData and joint then
			local motorData = RigUtils.ikDragStart(
				self.props.RootInstance,
				joint.Part1,
				self.props.IKMode == Constants.IK_MODE.BodyPart,
				self.props.PinnedParts)
			self.props.SetMotorData(motorData)
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

	self.ikRotate = function(partCFrame, axis, angle)
		local rotation = CFrame.fromAxisAngle(axis, angle)
		if not self.props.WorldSpace then
			rotation = partCFrame - partCFrame.p
			local rotatedAxis = rotation * axis
			rotation = CFrame.fromAxisAngle(rotatedAxis, angle)
		end
		local translation = CFrame.new(partCFrame.p)
		local result = translation * rotation * translation:inverse() * partCFrame

		local joint = self.getLastJoint()
		PhysicsService:ikSolve(joint.Part1, result, Constants.TRANSLATION_STIFFNESS, Constants.ROTATION_STIFFNESS)
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

			if self.props.IKEnabled then
				self.ikRotate(joint.Part1.CFrame, Vector3.FromAxis(axis), newAngle)
			else
				self.manipulateJoint(CFrame.fromAxisAngle(Vector3.FromAxis(axis), newAngle))
			end
		end
	end

	self.ikTranslate = function(partCFrame, transform)
		local result
		if self.props.WorldSpace then
			result = transform * partCFrame
		else
			local rotation = partCFrame - partCFrame.p
			result = partCFrame + (rotation * transform.p)
		end
		local joint = self.getLastJoint()
		PhysicsService:ikSolve(joint.Part1, result, Constants.TRANSLATION_STIFFNESS, Constants.ROTATION_STIFFNESS)
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
			local newDistance = interval - self.baseDistance
			self.baseDistance = interval

			local transform = CFrame.new(Vector3.FromNormalId(face) * newDistance)
			if self.props.IKEnabled then
				self.ikTranslate(joint.Part1.CFrame, transform)
			else
				self.manipulateJoint(transform)
			end
		end
	end

	self.onDragStop = function()
		self.baseAngle = nil
		self.dragging = false
		self.draggingAngle = 0
		self:setState({
			rotationAxis = Roact.None,
		})

		if self.props.IKEnabled then
			local values = RigUtils.ikDragEnd(self.props.RootInstance, self.props.MotorData)
			self.props.OnManipulateJoints(values)
			self.props.SetMotorData(Cryo.None)
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
		local ikEnabled = props.ikEnabled
		local rotationAxis = self.state.rotationAxis
		local joint = self.getLastJoint()

		local adornee = self.adornee.current
		if adornee and joint then
			local pivot

			if not self.dragging then
				self.P0 = joint.Part0.CFrame
				self.C0 = joint.C0
			end

			if tool == Enum.RibbonTool.Rotate then
				pivot = self.dragging and (self.P0 * self.C0 * joint.Transform) or (joint.Part0.CFrame * joint.C0 * joint.Transform)
			else
				pivot = part.CFrame
			end

			if not self.dragging then
				self.startingPosition = pivot.Position
			end

			if tool == Enum.RibbonTool.Move and self.dragging and ikEnabled then
				-- retain current rotation, only change position
				local currentRotation = adornee.CFrame - adornee.CFrame.p
				adornee.CFrame = currentRotation + pivot.Position
			elseif tool == Enum.RibbonTool.Rotate and self.dragging and not ikEnabled then
				-- retain current position, only change rotation
				if not self.props.WorldSpace then
					adornee.CFrame = (pivot - pivot.p) + self.startingPosition
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
	if self.xHandles.current then
		self.xHandles.current.Adornee = self.adornee.current
	end
	if self.yHandles.current then
		self.yHandles.current.Adornee = self.adornee.current
	end
	if self.zHandles.current then
		self.zHandles.current.Adornee = self.adornee.current
	end
end

function JointManipulator:didMount()
	self:adornHandles()
	local actions = getActions(self)
	if actions.ToggleWorldSpace then
		actions.ToggleWorldSpace.Enabled = true
	end
end

function JointManipulator:didUpdate()
	self:adornHandles()
end

function JointManipulator:render()
	local props = self.props
	local currentPart = props.CurrentPart
	local container = props.Container or CoreGui
	local tool = props.Tool

	local state = self.state
	local rotationAxis = state.rotationAxis

	return Roact.createElement(Roact.Portal, {
		target = container,
	}, {
		Adornee = Roact.createElement("Part", {
			Archivable = false,
			Size = currentPart.Size,
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
			HandleX = Roact.createElement("Handles", {
				Faces = Faces.new(Enum.NormalId.Left, Enum.NormalId.Right),
				Color = BrickColor.new(1004),
				Style = 'Movement',
				Archivable = false,
				[Roact.Event.MouseButton1Down] = self.onLineMouseDown,
				[Roact.Event.MouseDrag] = self.onLineMouseDrag,
				[Roact.Ref] = self.xHandles,
			}),

			HandleY = Roact.createElement("Handles", {
				Faces = Faces.new(Enum.NormalId.Top, Enum.NormalId.Bottom),
				Color = BrickColor.new(1020),
				Style = 'Movement',
				Archivable = false,
				[Roact.Event.MouseButton1Down] = self.onLineMouseDown,
				[Roact.Event.MouseDrag] = self.onLineMouseDrag,
				[Roact.Ref] = self.yHandles,
			}),

			HandleZ = Roact.createElement("Handles", {
				Faces = Faces.new(Enum.NormalId.Front, Enum.NormalId.Back),
				Color = BrickColor.new(1010),
				Style = 'Movement',
				Archivable = false,
				[Roact.Event.MouseButton1Down] = self.onLineMouseDown,
				[Roact.Event.MouseDrag] = self.onLineMouseDrag,
				[Roact.Ref] = self.zHandles,
			}),
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