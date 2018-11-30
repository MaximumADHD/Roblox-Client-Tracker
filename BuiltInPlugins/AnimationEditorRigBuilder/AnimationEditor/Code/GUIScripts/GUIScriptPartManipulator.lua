-- singleton

local PartManipulator = {}

PartManipulator.rotateMoveUI = nil

function PartManipulator:init(Paths)
	PartManipulator.Paths = Paths	

	PartManipulator.rotateMoveUI = Paths.GUIClonablePartManipulator:clone()
	
	self.Connections = Paths.UtilityScriptConnections:new(Paths)
	self.Connections:add(Paths.DataModelPartManipulator.ManipulatorChangeEvent:connect(function()
		self:updateRotateDragDisplay()
		self:updateStepDisplay()
		self:updateSpaceDisplay()
	end))
	
	self.Connections:add(Paths.DataModelSession.SelectedChangeEvent:connect(function()
		self:display()
	end))
	
	self.Connections:add(PartManipulator.rotateMoveUI.RootFrame.TitleBar.MouseButton1Click:connect(function()
		Paths.DataModelPartManipulator:toggleHandles()
	end))

	self.Connections:add(PartManipulator.rotateMoveUI.StepFrame.TitleBar.MouseButton1Click:connect(function()
		Paths.DataModelPartManipulator:toggleStep()
	end))
	
	self.Connections:add(PartManipulator.rotateMoveUI.StepFrame.StepOptions.MouseButton1Click:connect(function()		
		Paths.ActionEditStepInterval:execute(Paths)
	end))
	
	self.Connections:add(PartManipulator.rotateMoveUI.SpaceFrame.TitleBar.MouseButton1Click:connect(function()
		Paths.DataModelPartManipulator:toggleTransformSpace()
	end))
end

function PartManipulator:terminate()
	self.Connections:terminate()
	self.Connections = nil
	
	if nil ~= PartManipulator.rotateMoveUI then
		PartManipulator.rotateMoveUI:Destroy()
	end
	PartManipulator.rotateMoveUI = nil
	
	PartManipulator.Paths = nil
end

function PartManipulator:updateStepDisplay()
	if (self.Paths.DataModelPartManipulator.IsRotating) then
		if (self.Paths.DataModelPartManipulator.rotateStep == 0) then
			self.rotateMoveUI.StepFrame.TitleBar.Text = "Step: Free (T)"
		else
			self.rotateMoveUI.StepFrame.TitleBar.Text = "Step: "..tostring(self.Paths.DataModelPartManipulator.rotateStep).." (T)"
		end
	else
		if (self.Paths.DataModelPartManipulator.moveStep == 0) then
			self.rotateMoveUI.StepFrame.TitleBar.Text = "Step: Free (T)"
		else
			self.rotateMoveUI.StepFrame.TitleBar.Text = "Step: "..tostring(self.Paths.DataModelPartManipulator.moveStep).." (T)"
		end
	end
end

function PartManipulator:updateRotateDragDisplay()
	self.rotateMoveUI.RootFrame.TitleBar.Text = self.Paths.DataModelPartManipulator.IsRotating and "Rotate (R)" or "Move (R)"
end

function PartManipulator:updateSpaceDisplay()
	self.rotateMoveUI.SpaceFrame.TitleBar.Text = self.Paths.DataModelPartManipulator.InWorldSpace and "World Space (Y)" or "Local Space (Y)"
end

function PartManipulator:display()	
	if nil ~= self.rotateMoveUI then
		local isAPartSelected = nil ~= self.Paths.DataModelSession:getSelectedDataItem()
		self.rotateMoveUI.Parent = isAPartSelected and self.Paths.Globals.CoreGUI or nil
	end
end
	
return PartManipulator
