-- singleton
local ViewportNotification = {}

ViewportNotification.Padding = 15
ViewportNotification.FadeTime = 0.7
ViewportNotification.ImageTransparencyStart = 1
ViewportNotification.ImageTransparencyEnd = 0.4
ViewportNotification.TextTransparencyStart = 1
ViewportNotification.TextTransparencyEnd = 0
ViewportNotification.WaitTime = 3
ViewportNotification.RootFrameHeight = 40

local function destroy(self)
	if nil ~= self.GUI then
		self.Connections:terminate()
		self.Connections = nil

		self.GUI.Parent = nil
		self.GUI:Destroy()
		self.GUI = nil

		self.ImageTweener:terminate()
		self.ImageTweener = nil

		self.TextTweener:terminate()
		self.TextTweener = nil
	end
end

local function setImageTransparency(self, val)
	self.GUI.RootFrame.ImageLabel.ImageTransparency = val
end

local function setTextTransparency(self, val)
	self.GUI.RootFrame.TitleBar.TextTransparency = val
end

local function fadeOutTipText(self)
	self.ImageTweener = self.Paths.UtilityScriptTween:new(
		self.Paths, 
		ViewportNotification.ImageTransparencyEnd,
		ViewportNotification.ImageTransparencyStart,
		ViewportNotification.FadeTime,
		function(val) setImageTransparency(self, val) end)

	self.TextTweener = self.Paths.UtilityScriptTween:new(
		self.Paths, 
		ViewportNotification.TextTransparencyEnd,
		ViewportNotification.TextTransparencyStart,
		ViewportNotification.FadeTime,
		function(val) setTextTransparency(self, val) end,
		function() destroy(self) end)
end

local function fadeOnTipText(self)
	self.ImageTweener = self.Paths.UtilityScriptTween:new(
		self.Paths, 
		ViewportNotification.ImageTransparencyStart,
		ViewportNotification.ImageTransparencyEnd,
		ViewportNotification.FadeTime,
		function(val) setImageTransparency(self, val) end)

	self.TextTweener = self.Paths.UtilityScriptTween:new(
		self.Paths,
		ViewportNotification.TextTransparencyStart,
		ViewportNotification.TextTransparencyEnd,
		ViewportNotification.FadeTime,
		function(val) setTextTransparency(self, val) end,
		function() spawn(function() wait(ViewportNotification.WaitTime); fadeOutTipText(self) end) end)
end

function ViewportNotification:show(Paths, text)
	local self = setmetatable({}, ViewportNotification)

	self.Paths = Paths
	self.GUI = self.Paths.GUIClonableViewportNotification:clone()
	self.GUI.RootFrame.TitleBar.Text = text
	self.Connections = self.Paths.UtilityScriptConnections:new(self.Paths)

	-- we need to resize window to fit to largest text element
	local messageX = self.Paths.HelperFunctionsWidget:getTextWidth(self.Paths, text, self.GUI.RootFrame.TitleBar)
	self.GUI.RootFrame.Size = UDim2.new(0, messageX + (2 * ViewportNotification.Padding), 0, ViewportNotification.RootFrameHeight)

	self.GUI.Parent = game:GetService("CoreGui")
	fadeOnTipText(self)
	return self
end

return ViewportNotification