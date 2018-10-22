-- singleton
local FastFlags = require(script.Parent.Parent.FastFlags)
local NotificationTip = {}

NotificationTip.Padding = 40

function NotificationTip:init(Paths)
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

function NotificationTip:show(tip, showLeft)
	if FastFlags:isIKModeFlagOn() then
		if self.shouldDisplay[tip] == nil then
			self.shouldDisplay[tip] = true
		end

		if not self.shouldDisplay[tip] then
			return
		end
	else
		if not self.shouldDisplay then
			return
		end
	end

	destroyGUI(self)

	local gui = self.Paths.GUINotificationTip:clone()
	self.GUI = gui
	self.Paths.UtilityScriptTheme:setColorsToTheme(self.GUI)
	self.GUI.TopText.Tip.Text = tip

	if FastFlags:isIKModeFlagOn() then
		local messageX = self.Paths.HelperFunctionsWidget:getTextWidth(self.Paths, tip, self.GUI.TopText.Tip)
		local oldSizeX = self.GUI.Size.X.Offset
		local newSizeX = self.GUI.TopText.Tip.Position.X.Offset + messageX + self.Padding
		self.GUI.TopText.Tip.Size = UDim2.new(0, messageX, self.GUI.TopText.Tip.Size.Y.Scale, 0)
		self.GUI.Size = UDim2.new(0,  newSizeX, 0, self.GUI.Size.Y.Offset)
		if not showLeft then
			self.GUI.Position = UDim2.new(self.GUI.Position.X.Scale, self.GUI.Position.X.Offset - (newSizeX - oldSizeX), self.GUI.Position.Y.Scale, self.GUI.Position.Y.Offset)
		else
			self.GUI.Position = UDim2.new(0, self.Paths.GUIIndicatorArea.AbsolutePosition.X, self.GUI.Position.Y.Scale, self.GUI.Position.Y.Offset)
		end
	end

	self.Connections = self.Paths.UtilityScriptConnections:new(self.Paths)

	self.Connections:add(gui.Close.MouseButton1Click:connect(function() destroyGUI(self) end))

	self.Connections:add(gui.Checkbox.MouseButton1Click:connect(function()
		if FastFlags:isIKModeFlagOn() then
			self.shouldDisplay[tip] = gui.Checkbox.Check.Visible
			gui.Checkbox.Check.Visible = not self.shouldDisplay[tip]
		else
			self.shouldDisplay = gui.Checkbox.Check.Visible
			gui.Checkbox.Check.Visible = not self.shouldDisplay
		end
	end))

	self.Connections:add(self.Paths.UtilityScriptUndoRedo.ChangeEvent:connect(function()
		destroyGUI(self)
	end))

	gui.Parent = self.Paths.GUIPopUps
end

function NotificationTip:terminate()
	destroyGUI(self)
	self.Paths = nil
end

return NotificationTip