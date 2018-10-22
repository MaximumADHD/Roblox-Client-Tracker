-- singleton
local FastFlags = require(script.Parent.Parent.FastFlags)
local PoseOverwriteWarning = {}

function PoseOverwriteWarning:init(Paths)
	self.Paths = Paths
	if FastFlags:isIKModeFlagOn() then
		self.shouldDisplay = {}
	else
		self.shouldDisplay = true
	end
end

local function destroyGUI(self)
	if nil ~= self.Connections then
		self.Connections:terminate()
		self.Connections = nil		
	end
	
	if nil ~= self.GUI then
		self.GUI.Parent = nil
		self.GUI:Destroy()
		self.GUI = nil

	end
end

function PoseOverwriteWarning:show(message)
	if FastFlags:isIKModeFlagOn() then
		if self.shouldDisplay[message] == nil then
			self.shouldDisplay[message] = true
		end

		if not self.shouldDisplay[message] then
			return
		end
	else
		if not self.shouldDisplay then
			return
		end
	end

	local gui = self.Paths.GUIPopUpPoseOverwriteWarning:clone()
	self.GUI = gui

	-- we need to resize window to fit to largest text element
	if FastFlags:isIKModeFlagOn() then
		self.GUI.TopText.Warning.Text = message
		local messageX = self.Paths.HelperFunctionsWidget:getTextWidth(self.Paths, message, self.GUI.TopText.Warning)
		local oldSizeX = self.GUI.Size.X.Offset
		local newSizeX = self.GUI.TopText.Position.X.Offset + self.GUI.TopText.UIListLayout.Padding.Offset + messageX + (2 * self.GUI.TopText.Undo.Size.X.Offset)
		self.GUI.TopText.Warning.Size = UDim2.new(0, messageX, self.GUI.TopText.Warning.Size.Y.Scale, 0)
		self.GUI.Size = UDim2.new(0,  newSizeX, 0, self.GUI.Size.Y.Offset)
		self.GUI.Position = UDim2.new(self.GUI.Position.X.Scale, self.GUI.Position.X.Offset - (newSizeX - oldSizeX), self.GUI.Position.Y.Scale, self.GUI.Position.Y.Offset)
	end

	self.Paths.UtilityScriptTheme:setColorsToTheme(self.GUI)
	self.Connections = self.Paths.UtilityScriptConnections:new(self.Paths)
	
	self.Connections:add(gui.Close.MouseButton1Click:connect(function() destroyGUI(self) end))

	self.Connections:add(gui.Checkbox.MouseButton1Click:connect(function()
		if FastFlags:isIKModeFlagOn() then
			self.shouldDisplay[message] = gui.Checkbox.Check.Visible
			gui.Checkbox.Check.Visible = not self.shouldDisplay[message]
		else
			self.shouldDisplay = gui.Checkbox.Check.Visible
			gui.Checkbox.Check.Visible = not self.shouldDisplay
		end
	end))

	self.Connections:add(gui.TopText.Undo.MouseButton1Click:connect(function()
		self.Paths.UtilityScriptUndoRedo:undo()
	end))

	self.Connections:add(self.Paths.UtilityScriptUndoRedo.ChangeEvent:connect(function()
		destroyGUI(self)
	end))

	gui.Parent = self.Paths.GUIPopUps
end

function PoseOverwriteWarning:terminate()
	destroyGUI(self)
	self.Paths = nil
end

return PoseOverwriteWarning