-- singleton

local FastFlags = require(script.Parent.Parent.FastFlags)

local AnimationTarget = {}

AnimationTarget.TargetWidget = nil
AnimationTarget.Connections = nil

local onIKButtonClicked = nil
local onIKActiveChanged = nil
local resizeTargetName = nil
if FastFlags:isIKModeFlagOn() then
	onIKButtonClicked = function(self, Paths)
		if not Paths.DataModelIKManipulator.IsIKModeActive then
			Paths.ActionToggleIsIKModeActive:execute(Paths)
		else
			self.IKButton:setPressed(true)
			Paths.GUIScriptIKMenu:show()
		end
	end

	onIKActiveChanged = function(self, Paths)
		Paths.GUIScriptToolTip:remove(self.TargetWidget.IK)
		if Paths.DataModelIKManipulator.IsIKModeActive then
			self.TargetWidget.IK.IKOn.TextLabel.Text = Paths.DataModelIKManipulator:isFullBodyMode() and "IK: Full Body" or "IK: Body Part"
			self.TargetWidget.IK.IKOn.Visible = true
			self.TargetWidget.IK.TextLabel.Visible = false
			Paths.GUIScriptViewportNotification:show(Paths, "IK constraint has been applied to Dummy joints")
		else
			self.IKButton:setPressed(false)
			self.TargetWidget.IK.TextLabel.Text = "Apply IK"
			self.TargetWidget.IK.IKOn.Visible = false
			self.TargetWidget.IK.TextLabel.Visible = true
			Paths.GUIScriptToolTip:add(self.TargetWidget.IK, "An IK constraint will be applied to the R15 humanoid avatar to help automatically achieve desired poses")
			Paths.GUIScriptViewportNotification:show(Paths, "IK constraint has been removed from Dummy joints")
		end
	end

	resizeTargetName = function(self)
		local offsetX = self.TargetWidget.Size.X.Offset - self.TargetWidget.IK.Size.X.Offset - self.TargetWidget.TargetName.Position.X.Offset
		self.TargetWidget.TargetName.Size = UDim2.new(0, offsetX, self.TargetWidget.TargetName.Size.Y.Scale, self.TargetWidget.TargetName.Size.Y.Offset)
	end
end

function AnimationTarget:init(Paths)
	self.TargetWidget = Paths.GUIAnimationTarget

	self.TargetWidget.TargetName.Text = Paths.DataModelRig:getName() ..": Joints"

	self.Connections = Paths.UtilityScriptConnections:new()
	self.Connections:add(Paths.DataModelRig.NameChangedEvent:connect(function(name)
		self.TargetWidget.TargetName.Text = name ..": Joints"
	end))

	if FastFlags:isIKModeFlagOn() then
		self.IKButton = Paths.WidgetCustomImageButton:new(Paths, self.TargetWidget.IK)
		self.Connections:add(self.TargetWidget.IK.MouseButton1Click:connect(function()
			onIKButtonClicked(self, Paths)
		end))

		self.Connections:add(Paths.DataModelIKManipulator.IsIKModeActiveEvent:connect(function()
			onIKActiveChanged(self, Paths)
		end))

		self.Connections:add(Paths.DataModelIKManipulator.IKModeChangedEvent:connect(function()
			self.TargetWidget.IK.IKOn.TextLabel.Text = Paths.DataModelIKManipulator:isFullBodyMode() and "IK: Full Body" or "IK: Body Part"
		end))

		self.Connections:add(Paths.DataModelRig.RigVerifiedEvent:connect(function(success)
			self.TargetWidget.IK.Visible = success
			resizeTargetName(self)
		end))

		Paths.GUIScriptToolTip:add(self.TargetWidget.IK, "An IK constraint will be applied to the R15 humanoid avatar to help automatically achieve desired poses")
	end
end

if FastFlags:isIKModeFlagOn() then
	function AnimationTarget:initPostGUICreate(Paths)
		self.Connections:add(Paths.GUIScriptIKMenu.Menu.onCloseEvent:connect(function()
			self.IKButton:setPressed(false)
		end))
	end
end

function AnimationTarget:terminate()
	if FastFlags:isIKModeFlagOn() then
		self.IKButton:terminate()
	end

	self.TargetWidget = nil

	self.Connections:disconnectAll()
end

return AnimationTarget