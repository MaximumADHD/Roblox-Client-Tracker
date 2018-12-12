local FastFlags = require(script.Parent.Parent.FastFlags)

local GUIScriptSubWindow = {}
GUIScriptSubWindow.__index = GUIScriptSubWindow

function GUIScriptSubWindow:new(Paths, contentsFrame, parentWidget, canKill)
	if FastFlags:isIKModeFlagOn() then
		canKill = canKill == nil and true or canKill
	end
	local self = setmetatable({}, GUIScriptSubWindow)
	self.Paths = Paths
	
	self.GUI = self.Paths.GUIPopUpSubWindow:clone()
	self.GUI.Parent = parentWidget
	self.Paths.UtilityScriptTheme:setColorsToTheme(self.GUI)

	if FastFlags:isAnimationEventsOn() then
		self.ContentsChild = contentsFrame
		self:resize()
		contentsFrame.Parent = self.GUI.ClickEater.Contents
	else
		self.GUI.ClickEater.Contents.Size = contentsFrame.Size
		local yOffset = contentsFrame.Size.Y.Offset + self.GUI.ClickEater.Title.Size.Y.Offset
		self.GUI.Size = UDim2.new(0, contentsFrame.Size.X.Offset, 0, yOffset) 
		contentsFrame.Parent = self.GUI.ClickEater.Contents
		self.ContentsChild = contentsFrame
	end
		
	self.Connections = Paths.UtilityScriptConnections:new(Paths)
	
	if Paths.UtilityScriptDrag:canCreate(Paths) then
		self.Dragable = Paths.UtilityScriptDrag:new(Paths, self.GUI, true)
	end
	
	self.OnCloseEvent = self.Paths.UtilityScriptEvent:new(Paths)

	if FastFlags:isIKModeFlagOn() then
		local onClose = function()
			if canKill then
				self:close()
			end
		end

		self.KillScreenUtil = self.Paths.WidgetKillScreen:new(self.Paths, self.GUI.KillScreen, true)
		self.Connections:add(self.KillScreenUtil.OnKillEvent:connect(onClose))
		self.Connections:add(self.GUI.ClickEater.Title.CloseButton.MouseButton1Click:connect(onClose))
	else
		self.KillScreenUtil = self.Paths.WidgetKillScreen:new(self.Paths, self.GUI.KillScreen, true)
		self.Connections:add(self.KillScreenUtil.OnKillEvent:connect(function() self:turnOn(false); self.OnCloseEvent:fire() end))
		self.Connections:add(self.GUI.ClickEater.Title.CloseButton.MouseButton1Click:connect(function() self:turnOn(false) self.OnCloseEvent:fire() end))
	end

	return self
end

function GUIScriptSubWindow:resize()
	self.GUI.ClickEater.Contents.Size = self.ContentsChild.Size
	local yOffset = self.ContentsChild.Size.Y.Offset + self.GUI.ClickEater.Title.Size.Y.Offset
	self.GUI.Size = UDim2.new(0, self.ContentsChild.Size.X.Offset, 0, yOffset)
end

if FastFlags:isScaleKeysOn() then
	function GUIScriptSubWindow:changeTitle(text)
		self.GUI.ClickEater.Title.TextLabel.Text = text
	end
end

if FastFlags:isIKModeFlagOn() then
	function GUIScriptSubWindow:close()
		self:turnOn(false)
		self.OnCloseEvent:fire()
	end
end

function GUIScriptSubWindow:getTitleBarHeight()
	return self.GUI.ClickEater.Title.Size.Y.Offset
end

function GUIScriptSubWindow:isOn()
	return self.GUI.Visible
end

function GUIScriptSubWindow:turnOn(on)
	self.GUI.Visible = on
	self.KillScreenUtil:turnOn(on)
end

function GUIScriptSubWindow:terminate()			
	self.Connections:terminate()
	self.Connections = nil
	
	self.KillScreenUtil:terminate()
	self.KillScreenUtil = nil
	
	self.OnCloseEvent = nil

	if nil ~= self.Dragable then
		self.Dragable:terminate()
		self.Dragable = nil
	end	
	
	self.ContentsChild.Parent = nil
	self.ContentsChild = nil
	
	self.GUI.Parent = nil
	self.GUI:Destroy()
	self.GUI = nil

	self.Paths = nil
end

return GUIScriptSubWindow
