-- singleton

local ToolTip = {}

ToolTip.FadeToOpaqueTime = 0.7
ToolTip.TipWidgets = nil
ToolTip.MoveOverTipWidget = nil
ToolTip.HorizontalPadding = 10
ToolTip.VerticalPadding = 6
ToolTip.TargetWidget = nil
ToolTip.Tweener = nil
ToolTip.StopTipCallback = nil
ToolTip.DisplayTimeSeconds = 7

local function isToolTipOff(self)
	local TransparentTolerance = 0.99
	return nil == self.Tweener and self.TargetWidget.BackgroundTransparency >= TransparentTolerance 
end

local function isToolTipFadingOn(self)
	return nil ~= self.Tweener
end

local function isToolTipOn(self)
	local OpaqueTolerance = 0.01
	return nil == self.Tweener and self.TargetWidget.BackgroundTransparency <= OpaqueTolerance 
end

local function endTween(self)
	if nil ~= self.Tweener then
		self.Tweener:terminate()
		self.Tweener = nil
	end
end

local function cancelStopTipCallback(self)
	if nil ~= self.StopTipCallback then
		self.StopTipCallback:terminate()
		self.StopTipCallback = nil
	end	
end

local function setTransparency(self, val)
	self.TargetWidget.BackgroundTransparency = val
	self.TargetWidget.TextTransparency = val
	
	self.TargetWidget.BottomShadow.BackgroundTransparency = val
	self.TargetWidget.BottomShadow.ImageTransparency = val
	
	self.TargetWidget.RightSideShadow.BackgroundTransparency = val
	self.TargetWidget.RightSideShadow.ImageTransparency = val
end

local function fadeOnTipText(self)
	if isToolTipOff(self) then
		self.Tweener = self.Paths.UtilityScriptTween:new(self.Paths, 1, 0, ToolTip.FadeToOpaqueTime, function(val) setTransparency(self, val) end)
	end
end

local function turnOffTipText(self)
	endTween(self)
	setTransparency(self, 1)	
	cancelStopTipCallback(self)	
end

local function resetStopTipCallback(self, tipWidget)
	cancelStopTipCallback(self)
	self.StopTipCallback = self.Paths.UtilityScriptCallback:new(self.Paths, function() turnOffTipText(self) end, ToolTip.DisplayTimeSeconds)
end

local function positionToolTip(self, currentTipWidget)
	-- find the bottom center position of the currentTipWidget
	local currentTipWidgetX = currentTipWidget.AbsolutePosition.X+(currentTipWidget.AbsoluteSize.X*0.5)
	local currentTipWidgetY = currentTipWidget.AbsolutePosition.Y+currentTipWidget.AbsoluteSize.Y		
		
	local newXOffset = currentTipWidgetX-self.TargetWidget.Parent.AbsolutePosition.X
	local newYOffset = currentTipWidgetY-self.TargetWidget.Parent.AbsolutePosition.Y
	
	-- position at the bottom center position of the currentTipWidget
	self.TargetWidget.Position = UDim2.new(0, newXOffset, 0, newYOffset)
end

local function setCurrentTip(self, currentTipWidget)	
	local tipText = currentTipWidget and self.TipWidgets[currentTipWidget].TipText or ""	
	if 0 == string.len(tipText) then
		turnOffTipText(self)
	elseif isToolTipOff(self) or self.TargetWidget.Text ~= tipText then	
		positionToolTip(self, currentTipWidget)	
		self.TargetWidget.Text = tipText
		self.TargetWidget.Size = UDim2.new(0, self.TargetWidget.TextBounds.X+ToolTip.HorizontalPadding, 0, self.TargetWidget.TextBounds.Y+ToolTip.VerticalPadding)
		fadeOnTipText(self)
		resetStopTipCallback(self, currentTipWidget)
	end
end

local function determineCurrentTip(self)
	local areToolTipsEnabled = self.Paths.DataModelPreferences:getValue(self.Paths.DataModelPreferences.Type.Tooltips) 
	if areToolTipsEnabled then	
		-- this is O(n), change MouseOverTipWidgets to a heap for O(1)
		local currentTipWidget = self.Paths.HelperFunctionsIteration:fold(self.Paths.HelperFunctionsTable:firstKey(self.MouseOverTipWidgets), self.MouseOverTipWidgets, function(highestWidget, widget, _)
			return highestWidget.ZIndex > widget.ZIndex and highestWidget or widget
		end)
		setCurrentTip(self, currentTipWidget)
	end
end

function ToolTip:init(Paths)
	self.Paths = Paths
	self.TargetWidget = Paths.GUIToolTip
	self.TargetWidget.Text = ""
	ToolTip.Tweener = nil
	self.TipWidgets = {}
	self.MouseOverTipWidgets = {} -- MouseOverTipWidgets would be faster implemented as a heap
	
	self.onPreferenceChange = function(prefType, newVal)
		if self.Paths.DataModelPreferences.Type.Tooltips == prefType then
			if newVal then
				determineCurrentTip(self)
			else
				turnOffTipText(self)
			end
		end
	end
	self.Paths.DataModelPreferences.EditPreferenceEvent:connect(self.onPreferenceChange)
end

local function disconnectWidget(widgetData)
	widgetData.moveConnect:disconnect() 
	widgetData.enteredConnect:disconnect()
	widgetData.leaveConnect:disconnect()
end

function ToolTip:terminate(Paths)	
	turnOffTipText(self)

	for widget, data in pairs(self.TipWidgets) do
		disconnectWidget(data)
	end
	self.TipWidgets = nil
	self.MouseOverTipWidgets = nil
	self.Paths = nil
end

function ToolTip:isInitialized()
	return nil ~= self.Paths
end

local function addMouseOverWidget(self, widget)
	self.MouseOverTipWidgets[widget] = true -- this is O(1), change MouseOverTipWidgets to a heap for O(log n) here, but faster in determineCurrentTip()
	determineCurrentTip(self) 
end

local function removeMouseOverWidget(self, widget)
	self.MouseOverTipWidgets[widget] = nil
	determineCurrentTip(self)
end

function ToolTip:add(widget, tipText)
	if nil ~= self.TipWidgets[widget] then
		self.TipWidgets[widget].TipText = tipText
	else	
		local onMouseEntered = widget.InputBegan:connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseMovement then				
				addMouseOverWidget(self, widget)
			end
		end)
		
		local onMouseLeave = widget.InputEnded:connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseMovement then
				removeMouseOverWidget(self, widget)
			end
		end)
		
		-- this shouldn't be required, but MoveEnter and MouseLeave can be unreliable
		local onMouseMoved = widget.MouseMoved:connect(function()
			if nil == self.MouseOverTipWidgets[widget] then
				addMouseOverWidget(self, widget)
			end
		end)							
		self.TipWidgets[widget] = {TipText=tipText, moveConnect=onMouseMoved, enteredConnect=onMouseEntered, leaveConnect=onMouseLeave}
	end	
	
	if self.Paths.InputMouse:isOver(widget) then
		addMouseOverWidget(self, widget)
	end
end

-- this is a widget which is just meant to block other wisgets from showing tool tips (like when a pop-up is on screen
function ToolTip:addBlocker(widget)
	self:add(widget, "")
end

function ToolTip:remove(widget)
	if nil ~= self.TipWidgets[widget] then
		removeMouseOverWidget(self, widget)
		disconnectWidget(self.TipWidgets[widget])
		self.TipWidgets[widget] = nil
	end	
end

return ToolTip