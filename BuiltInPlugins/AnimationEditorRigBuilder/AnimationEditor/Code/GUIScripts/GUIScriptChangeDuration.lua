local FastFlags = require(script.Parent.Parent.FastFlags)
local ChangeDuration = {}

function ChangeDuration:init(Paths)
	self.Paths = Paths
end

local function destroy(self)
	if nil ~= self.GUI then
		self.Connections:terminate()
		self.Connections = nil
		
		self.GUI.Parent = nil
		self.GUI:Destroy()
		self.GUI = nil

		self.OKButton:terminate()	
		self.CancelButton:terminate()
	end

	if self.SubWindow then
		self.SubWindow:terminate()
		self.SubWindow = nil
	end
end

function ChangeDuration:show(startTime, duration, okFunc)
	destroy(self)

	self.GUI = self.Paths.GUIChangeDuration:clone()
	self.SubWindow = self.Paths.GUIScriptSubWindow:new(self.Paths, self.GUI, self.Paths.GUIPopUps)
	self.Paths.UtilityScriptTheme:setColorsToTheme(self.GUI)

	self.SubWindow:turnOn(true)
	self.SubWindow:changeTitle("Change Duration")
	self.Connections = self.Paths.UtilityScriptConnections:new(self.Paths)

	self.CancelButton = self.Paths.WidgetCustomImageButton:new(self.Paths, self.GUI.OkCancel.Cancel)
	self.OKButton = self.Paths.WidgetCustomImageButton:new(self.Paths, self.GUI.OkCancel.OK)

	self.GUI.DurationLabel.Text = string.format("Current Duration is %.2f seconds", duration)
	self.GUI.DurationInput.Input.Text = tostring(duration)

	self.Connections:add(self.GUI.DurationInput.Input.Focused:connect(function()
		self.GUI.DurationInput.Input.BorderColor3 = self.Paths.UtilityScriptTheme:GetHighlightColor()
	end))

	self.Connections:add(self.GUI.DurationInput.Input.Changed:connect(function(property)
		if property == "Text" then
			if tonumber(self.GUI.DurationInput.Input.Text) ~= nil then
				self.OKButton:setEnabled(true)
			else
				self.OKButton:setEnabled(false)
			end
		end
	end))

	local onInputEnded = function()
		if self.OKButton:getEnabled() and okFunc then
			local newDuration = tonumber(self.GUI.DurationInput.Input.Text)
			if newDuration then
				if startTime + newDuration > self.Paths.DataModelClip:getLength() then
					self.GUI.WarningLabel.Visible = true
					self.GUI.DurationInput.Input.Text = tostring(self.Paths.DataModelClip:getLength() - startTime)
				else
					self.GUI.WarningLabel.Visible = false
					okFunc(newDuration / duration)
					destroy(self)
				end
			end
		end
	end

	self.Connections:add(self.GUI.OkCancel.OK.MouseButton1Click:connect(onInputEnded))
	self.Connections:add(self.GUI.DurationInput.Input.FocusLost:connect(function(enterPressed)
	    if enterPressed then
	    	onInputEnded()
	    end
	   	self.GUI.DurationInput.Input.BorderColor3 = self.Paths.UtilityScriptTheme:GetInputBorderColor()
	end))

	self.Connections:add(self.SubWindow.OnCloseEvent:connect(function() destroy(self) end))
	self.Connections:add(self.GUI.OkCancel.Cancel.MouseButton1Click:connect(function()
		destroy(self)
	end))
end

function ChangeDuration:terminate()
	destroy(self)
	self.Paths = nil
end

return ChangeDuration