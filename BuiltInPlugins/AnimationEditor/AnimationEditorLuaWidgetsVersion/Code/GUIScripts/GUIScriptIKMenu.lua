local IKMenu = {}

IKMenu.TargetWidget = nil
IKMenu.Menu  = nil

function IKMenu:init(Paths)
	self.Paths = Paths
	self.TargetWidget = Paths.GUIIKMenu
	self.Menu = Paths.WidgetMainMenu:new2(Paths, self.TargetWidget)

	self.BodyPartHandle = self.Menu:getOption("MenuOptionBodyPart")
	self.Menu:setClickCallback(self.BodyPartHandle, function()
		Paths.DataModelIKManipulator:setIKMode(Paths.DataModelIKManipulator.IKModes.BodyPart)
	end)
	Paths.GUIScriptToolTip:add(self.Menu:getOptionWidget(self.BodyPartHandle), "Only limbs and head will move along with other parts and pinning is unavailable")

	self.FullBodyHandle = self.Menu:getOption("MenuOptionFullBody")
	self.Menu:setClickCallback(self.FullBodyHandle, function()
		Paths.DataModelIKManipulator:setIKMode(Paths.DataModelIKManipulator.IKModes.FullBody)
	end)

	self.RemoveIKHandle = self.Menu:getOption("MenuOptionRemoveIK")
	self.Menu:setClickCallback(self.RemoveIKHandle, function()
		Paths.ActionToggleIsIKModeActive:execute(Paths)
	end)
	Paths.GUIScriptToolTip:add(self.Menu:getOptionWidget(self.RemoveIKHandle), "The IK constraint will be removed from the R15 humanoid avatar")

	self.Menu:setEnabled(self.BodyPartHandle, true)
	self.Menu:setEnabled(self.FullBodyHandle, true)
	self.Menu:setEnabled(self.RemoveIKHandle, true)

	self.Connections = Paths.UtilityScriptConnections:new(Paths)	
	local closeForChanges = function()
		if self.Menu:isOpen() then -- close if anything done while the menu is open, as things could be in a weird state (alternately could disable undo/redo while this menu is open)
			self.Menu:turnOn(false)
		end
	end
	self.Connections:add(self.Paths.UtilityScriptUndoRedo.ChangeEvent:connect(closeForChanges))
	self.Connections:add(self.Paths.DataModelSession.SelectedChangeEvent:connect(closeForChanges))		
end

function IKMenu:showAvailableOptions()
	self.Menu:setToggle(self.BodyPartHandle, self.Paths.DataModelIKManipulator:isBodyPartMode())
	self.Menu:setToggle(self.FullBodyHandle, self.Paths.DataModelIKManipulator:isFullBodyMode())
end

local function positionMenu(self)
	local startX = self.Paths.GUIAnimationTarget.IK.AbsolutePosition.X + self.Paths.GUIAnimationTarget.IK.AbsoluteSize.X
	local startY = self.Paths.GUIAnimationTarget.IK.AbsolutePosition.Y + self.Paths.GUIAnimationTarget.IK.AbsoluteSize.Y
	self.TargetWidget.Position = UDim2.new(0, startX, 0, startY)
end

function IKMenu:show()
	self:showAvailableOptions()
	positionMenu(self)
	self.Menu:turnOn(true)
end

function IKMenu:terminate()
	self.Connections:terminate()
	self.Connections = nil

	self.Menu:terminate()
	self.Menu = nil
	self.TargetWidget = nil
	self.Paths = nil
end

return IKMenu