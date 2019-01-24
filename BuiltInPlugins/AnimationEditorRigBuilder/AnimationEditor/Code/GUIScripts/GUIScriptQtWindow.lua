local GUIScriptQtWindow = {}
GUIScriptQtWindow.__index = GUIScriptQtWindow

function GUIScriptQtWindow:new(Paths, name, widget, closeCallback, size, resizable)
	local self = setmetatable({}, GUIScriptQtWindow)
	self.Paths = Paths
	self.CloseCallback = closeCallback
	self.TargetGUI = widget

	resizable = resizable == nil and false or resizable
	size = size == nil and widget.AbsoluteSize or size

	self.QWidget = self.Paths.Globals.Plugin:CreateQWidgetPluginGui(name, {
		Size = size,
		MinSize = size,
		Modal = true,
		Resizable = resizable,
	})

	widget.Parent = self.QWidget

	self.QWidget:BindToClose(function()
		self:close()
	end)

	self.QWidget.Title = name
	return self
end

function GUIScriptQtWindow:turnOn(on)
	if on then
		self.Paths.UtilityScriptTheme:setColorsToTheme(self.TargetGUI)
	end

	if self.Paths.GUIDarkCover then
		self.Paths.GUIDarkCover.Visible = on
	end

	self.QWidget.Enabled = on
end

function GUIScriptQtWindow:close()
	self:turnOn(false)
	self.CloseCallback()
end

function GUIScriptQtWindow:isOn()
	return self.QWidget.Enabled
end

function GUIScriptQtWindow:terminate()
	if self.QWidget then
		self:turnOn(false)
		self.QWidget:Destroy()
		self.QWidget = nil
	end

	self.CloseCallback = nil
	self.Paths = nil
end

return GUIScriptQtWindow
