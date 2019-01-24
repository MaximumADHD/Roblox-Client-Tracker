-- singleton
local FastFlags = require(script.Parent.Parent.FastFlags)

local PopUpInput = {}

function PopUpInput:init(Paths)
	self.Paths = Paths
end

local function destroy(self)
	if nil ~= self.KillScreenUtil then
		self.KillScreenUtil:terminate()
		self.KillScreenUtil = nil
	end

	if nil ~= self.GUI then
		self.Connections:terminate()
		self.Connections = nil
		
		self.GUI.Parent = nil
		self.GUI:Destroy()
		self.GUI = nil

		self.OKButton:terminate()	
		self.CancelButton:terminate()
	end

	if FastFlags:useQWidgetsForPopupsOn() then
		if self.QtWindow then
			self.QtWindow:terminate()
			self.QtWindow = nil
		end
	end
end

function PopUpInput:show(titleText, placeholder, onSubmit)
	destroy(self)
	self.GUI = self.Paths.GUIPopUpInput:clone()
	self.GUI.Parent = self.Paths.GUIPopUps
	if not FastFlags:useQWidgetsForPopupsOn() then
		self.Paths.UtilityScriptTheme:setColorsToTheme(self.GUI)
	end
	self.GUI.Title.Text = titleText

	self.GUI.Input.PlaceholderText = placeholder
	if not FastFlags:useQWidgetsForPopupsOn() then
		self.KillScreenUtil = self.Paths.WidgetKillScreen:new(self.Paths, self.GUI.KillScreen, true)
	end

	self.Connections = self.Paths.UtilityScriptConnections:new(self.Paths)

	self.CancelButton = self.Paths.WidgetCustomImageButton:new(self.Paths, self.GUI.Cancel)
	self.OKButton = self.Paths.WidgetCustomImageButton:new(self.Paths, self.GUI.Submit)
	self.OKButton:setEnabled(false)

	if FastFlags:useQWidgetsForPopupsOn() then
		self.QtWindow = self.Paths.GUIScriptQtWindow:new(self.Paths, "", self.GUI, function() destroy(self) end)
		self.QtWindow:turnOn(true)
	end

	self.Connections:add(self.GUI.Input.Focused:connect(function()
		self.GUI.Input.BorderColor3 = self.Paths.UtilityScriptTheme:GetHighlightColor()
	end))

	self.Connections:add(self.GUI.Input.Changed:connect(function(property)
		if property == "Text" then
			if self.GUI.Input.Text ~= "" then
				self.OKButton:setEnabled(true)
			else
				self.OKButton:setEnabled(false)
			end
		end
	end))

	self.Connections:add(self.GUI.Submit.MouseButton1Click:connect(function()
		if self.OKButton:getEnabled() then
			onSubmit(self.GUI.Input.Text)
			destroy(self)
		end
	end))

	if not FastFlags:useQWidgetsForPopupsOn() then
		self.Connections:add(self.KillScreenUtil.OnKillEvent:connect(function() destroy(self) end))
	end

	self.Connections:add(self.GUI.Input.FocusLost:connect(function(enterPressed)
	   	self.GUI.Input.BorderColor3 = self.Paths.UtilityScriptTheme:GetInputBorderColor()
	    if enterPressed then
			onSubmit(self.GUI.Input.Text)
			destroy(self)
	    end
	end))
	self.Connections:add(self.GUI.Cancel.MouseButton1Click:connect(function()
		destroy(self)
	end))
end

function PopUpInput:terminate()
	destroy(self)
	self.Paths = nil
end

return PopUpInput