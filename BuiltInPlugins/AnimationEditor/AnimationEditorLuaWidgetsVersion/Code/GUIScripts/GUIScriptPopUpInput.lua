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
end

function PopUpInput:show(titleText, placeholder, onSubmit)
	destroy(self)
	self.GUI = self.Paths.GUIPopUpInput:clone()
	self.GUI.Parent = self.Paths.GUIPopUps
	self.Paths.UtilityScriptTheme:setColorsToTheme(self.GUI)
	self.GUI.Title.Text = titleText

	self.GUI.Input.PlaceholderText = placeholder
	self.KillScreenUtil = self.Paths.WidgetKillScreen:new(self.Paths, self.GUI.KillScreen, true)

	self.Connections = self.Paths.UtilityScriptConnections:new(self.Paths)

	self.CancelButton = self.Paths.WidgetCustomImageButton:new(self.Paths, self.GUI.Cancel)
	self.OKButton = self.Paths.WidgetCustomImageButton:new(self.Paths, self.GUI.Submit)
	self.OKButton:setEnabled(false)

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

	self.Connections:add(self.KillScreenUtil.OnKillEvent:connect(function() destroy(self) end))

	self.Connections:add(self.GUI.Input.FocusLost:connect(function(enterPressed)
	    if enterPressed then
			onSubmit(self.GUI.Input.Text)
			destroy(self)
	    end
	   	self.GUI.Input.BorderColor3 = self.Paths.UtilityScriptTheme:GetInputBorderColor()
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