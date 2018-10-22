local FastFlags = require(script.Parent.Parent.FastFlags)
local PromptYesNo = {}

PromptYesNo.Padding = 30

function PromptYesNo:init(Paths)
	self.Paths = Paths
	self.shouldDisplay = {}
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

function PromptYesNo:show(title, message, tip, dontShowMsg, okFunc)
	destroy(self)

	if self.shouldDisplay[title] == nil then
		self.shouldDisplay[title] = true
	end

	if not self.shouldDisplay[title] then
		return
	end

	self.GUI = self.Paths.GUIPopUpYesNo:clone()
	self.Paths.UtilityScriptTheme:setColorsToTheme(self.GUI)

	self.Connections = self.Paths.UtilityScriptConnections:new(self.Paths)

	self.CancelButton = self.Paths.WidgetCustomImageButton:new(self.Paths, self.GUI.OkCancel.Cancel)
	self.OKButton = self.Paths.WidgetCustomImageButton:new(self.Paths, self.GUI.OkCancel.OK)

	self.GUI.MessageContainer.Message.Text = message
	self.GUI.TipContainer.Tip.Text = tip

	--resize frame to fit longest string
	local tipX = self.Paths.HelperFunctionsWidget:getTextWidth(self.Paths, tip, self.GUI.TipContainer.Tip)
	local messageX = self.Paths.HelperFunctionsWidget:getTextWidth(self.Paths, message, self.GUI.MessageContainer.Message)
	local dontShowX = 0
	if dontShowMsg then
		dontShowX = self.Paths.HelperFunctionsWidget:getTextWidth(self.Paths, dontShowMsg, self.GUI.ShowAgain.ShowAgain)
		self.GUI.ShowAgain.Visible = true
		self.GUI.ShowAgain.ShowAgain.Text = dontShowMsg
	end
	local maxX = math.max(tipX, math.max(messageX, dontShowX))
	local originalSize = self.GUI.Size
	self.GUI.Size = UDim2.new(0, maxX + (2 * self.Padding), 0, originalSize.Y.Offset)

	local onInputEnded = function()
		destroy(self)
		if self.OKButton:getEnabled() and okFunc then
			okFunc()
		end
	end

	self.Connections:add(self.GUI.OkCancel.OK.MouseButton1Click:connect(onInputEnded))

	self.Connections:add(self.GUI.ShowAgain.Checkbox.MouseButton1Click:connect(function()
		self.shouldDisplay[title] = self.GUI.ShowAgain.Checkbox.Check.Visible
		self.GUI.ShowAgain.Checkbox.Check.Visible = not self.shouldDisplay[title]
	end))

	self.SubWindow = self.Paths.GUIScriptSubWindow:new(self.Paths, self.GUI, self.Paths.GUIPopUps)
	self.SubWindow:turnOn(true)
	self.SubWindow:changeTitle(title)

	self.Connections:add(self.SubWindow.OnCloseEvent:connect(function() destroy(self) end))
	self.Connections:add(self.GUI.OkCancel.Cancel.MouseButton1Click:connect(function()
		destroy(self)
	end))

	return true
end

function PromptYesNo:terminate()
	destroy(self)
	self.Paths = nil
end

return PromptYesNo