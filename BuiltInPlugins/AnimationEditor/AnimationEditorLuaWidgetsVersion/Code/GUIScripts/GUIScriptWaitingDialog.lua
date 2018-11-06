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

	if self.SubWindow then
		self.SubWindow:terminate()
		self.SubWindow = nil
	end
end

function WaitingDialog:show(title, message, cancelFunc)
	destroy(self)

	if cancelFunc then
		self.GUI = self.Paths.GUIPopUpWaitingDialog:clone()
		self.SubWindow = self.Paths.GUIScriptSubWindow:new(self.Paths, self.GUI, self.Paths.GUIPopUps, false)
		self.Paths.UtilityScriptTheme:setColorsToTheme(self.GUI)

		self.SubWindow:turnOn(true)
		self.SubWindow:changeTitle(title)
		self.Connections = self.Paths.UtilityScriptConnections:new(self.Paths)

		self.CancelButton = self.Paths.WidgetCustomImageButton:new(self.Paths, self.GUI.Cancel)

		self.GUI.TextLabel.Text = message

		self.Connections:add(self.SubWindow.OnCloseEvent:connect(cancelFunc))
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