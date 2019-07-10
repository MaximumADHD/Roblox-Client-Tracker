local FastFlags = require(script.Parent.Parent.FastFlags)
local WaitingDialog = {}

WaitingDialog.Padding = 30

function WaitingDialog:init(Paths)
	self.Paths = Paths
end

local function destroy(self)
	if nil ~= self.GUI then
		self.Connections:terminate()
		self.Connections = nil

		self.GUI.Parent = nil
		self.GUI:Destroy()
		self.GUI = nil

		self.CancelButton:terminate()
	end

	if FastFlags:useQWidgetsForPopupsOn() then
		if self.QtWindow then
			self.QtWindow:terminate()
			self.QtWindow = nil
		end
	else
		if self.SubWindow then
			self.SubWindow:terminate()
			self.SubWindow = nil
		end
	end
end

function WaitingDialog:show(title, message, cancelFunc)
	destroy(self)

	if cancelFunc then
		self.GUI = self.Paths.GUIPopUpWaitingDialog:clone()
		if FastFlags:useQWidgetsForPopupsOn() then
			self.QtWindow = self.Paths.GUIScriptQtWindow:new(self.Paths, title, self.GUI, cancelFunc)
			self.QtWindow:turnOn(true)
		else
			self.SubWindow = self.Paths.GUIScriptSubWindow:new(self.Paths, self.GUI, self.Paths.GUIPopUps, false)
			self.Paths.UtilityScriptTheme:setColorsToTheme(self.GUI)

			self.SubWindow:turnOn(true)
			self.SubWindow:changeTitle(title)
		end
		self.Connections = self.Paths.UtilityScriptConnections:new(self.Paths)

		self.CancelButton = self.Paths.WidgetCustomImageButton:new(self.Paths, self.GUI.Cancel)

		self.GUI.TextLabel.Text = message

		if not FastFlags:useQWidgetsForPopupsOn() then
			self.Connections:add(self.SubWindow.OnCloseEvent:connect(cancelFunc))
		end
		self.Connections:add(self.GUI.Cancel.MouseButton1Click:connect(cancelFunc))
	end
end

function WaitingDialog:hide()
	destroy(self)
end

function WaitingDialog:terminate()
	destroy(self)
	self.Paths = nil
end

return WaitingDialog