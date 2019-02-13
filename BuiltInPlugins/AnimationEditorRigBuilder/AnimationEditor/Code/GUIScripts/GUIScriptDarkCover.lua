local GUIScriptDarkCover = {}

function GUIScriptDarkCover:init(Paths)
	self.Paths = Paths
	self.TargetWidget = self.Paths.GUIDarkCover
	self.Button = self.Paths.WidgetCustomImageButton:new(self.Paths, self.TargetWidget.Button)
	self.Connections = self.Paths.UtilityScriptConnections:new(self.Paths)
	self.Connections:add(self.TargetWidget.Button.MouseButton1Click:connect(function()
		if self.ButtonCallback then
			self.ButtonCallback()
		end
	end))
	self.OwnerObjTable = {}
end

function GUIScriptDarkCover:setButtonCallback(func)
	self.ButtonCallback = func
end

function GUIScriptDarkCover:turnOn(on, ownerObj)
	if on then
		self.OwnerObjTable[ownerObj] = {}
		self.TargetWidget.Visible = true
		self.Paths.DataModelSession:lockInput(true)
	else
		self.OwnerObjTable[ownerObj] = nil
		if self.Paths.HelperFunctionsTable:isNilOrEmpty(self.OwnerObjTable) and not on then
			self.TargetWidget.Visible = false
			self.Paths.DataModelSession:lockInput(false)
		end
	end
end

function GUIScriptDarkCover:showText(text)
	if text == nil or text == "" then
		self.TargetWidget.Message.Text = ""
		self.TargetWidget.Message.Visible = false
	else
		self.TargetWidget.Message.Text = text
		self.TargetWidget.Message.Visible = true
	end
end

function GUIScriptDarkCover:showButton(on)
	self.TargetWidget.Button.Visible = on
end

function GUIScriptDarkCover:isOn()
	return self.TargetWidget.Visible
end

function GUIScriptDarkCover:terminate()
	self.Button:terminate()
	self.Button = nil

	self.TargetWidget = nil
	self.Paths = nil
end

return GUIScriptDarkCover
