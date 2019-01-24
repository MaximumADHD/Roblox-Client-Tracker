-- singleton
local FastFlags = require(script.Parent.Parent.FastFlags)

local PromptOKCancel = {}

function PromptOKCancel:init(Paths)
	self.Paths = Paths
end

local function destroyGUI(self)
	if nil ~= self.Connections then
		self.Connections:terminate()
		self.Connections = nil		
	end
	
	if nil ~= self.KillScreenUtil then
		self.KillScreenUtil:terminate()
		self.KillScreenUtil = nil
	end

	if nil ~= self.GUI then
		self.OKButton:terminate()	
		self.CancelButton:terminate()

		self.GUI.Parent = nil
		self.GUI:Destroy()
		self.GUI = nil
	end

	if FastFlags:useQWidgetsForPopupsOn() then
		if self.QtWindow then
			self.QtWindow:terminate()
			self.QtWindow = nil
		end
	end
end

function PromptOKCancel:show(text, onOkFunc)
	destroyGUI(self)
	self.GUI = self.Paths.GUIPopUpOKCancelTemplate:clone()
	if not FastFlags:useQWidgetsForPopupsOn() then
		self.Paths.UtilityScriptTheme:setColorsToTheme(self.GUI)
		self.KillScreenUtil = self.Paths.WidgetKillScreen:new(self.Paths, self.GUI.KillScreen, true)
	end
	self.Connections = self.Paths.UtilityScriptConnections:new(self.Paths)

	self.GUI.Parent = self.Paths.GUIPopUps
	self.GUI.Title.Text = text
	self.CancelButton = self.Paths.WidgetCustomImageButton:new(self.Paths, self.GUI.Cancel)
	self.OKButton = self.Paths.WidgetCustomImageButton:new(self.Paths, self.GUI.Submit)

	if FastFlags:useQWidgetsForPopupsOn() then
		self.QtWindow = self.Paths.GUIScriptQtWindow:new(self.Paths, "", self.GUI, function() destroyGUI(self); end)
		self.QtWindow:turnOn(true)
	end

	self.Connections:add(self.GUI.Submit.MouseButton1Click:connect(function()
		destroyGUI(self)
		if onOkFunc then
			onOkFunc()
		end
	end))

	self.Connections:add(self.GUI.Cancel.MouseButton1Click:connect(function() destroyGUI(self); end))
	if not FastFlags:useQWidgetsForPopupsOn() then
		self.Connections:add(self.KillScreenUtil.OnKillEvent:connect(function() destroyGUI(self); end))
	end
end

function PromptOKCancel:isActive()
	return self.GUI ~= nil
end

function PromptOKCancel:terminate()
	destroyGUI(self)
end

return PromptOKCancel
