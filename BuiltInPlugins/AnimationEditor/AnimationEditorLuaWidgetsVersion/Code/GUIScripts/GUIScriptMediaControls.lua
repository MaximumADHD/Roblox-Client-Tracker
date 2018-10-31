-- singleton

local FastFlags = require(script.Parent.Parent.FastFlags)

local MediaControls = {}

MediaControls.TargetWidget = nil
MediaControls.CustomButtons = {}

local function initTotalTime(self)
	local setLength = function()
		self.TargetWidget.TotalTimeInput.Text = self.Paths.DataModelClip:getLength()
	end
	setLength()
	self.Connections:add(self.Paths.DataModelClip.LengthChangedEvent:connect(setLength))
		
	self.Connections:add(self.TargetWidget.TotalTimeInput.FocusLost:connect(function(enterPressed)
	    if enterPressed then
			local newTime = tonumber(self.TargetWidget.TotalTimeInput.Text)
			if newTime and newTime > 0 then
				if self.Paths.DataModelClip:isLengthOk(newTime) then
					self.Paths.ActionEditLength:execute(self.Paths, newTime)
				else
					setLength()
				end	
			end
		else
			setLength()
	    end
	end))
	
	self.Paths.GUIScriptToolTip:add(self.TargetWidget.TotalTimeInput, "Change Animation Length")
end

local function initScrubberTime(self)
	local setTime = function()
		self.TargetWidget.TimeInput.Text = self.Paths.DataModelSession:getFormattedScrubberTime()
	end
	setTime()
	self.Connections:add(self.Paths.DataModelSession.ScrubberTimeChangeEvent:connect(setTime))
	self.Connections:add(self.Paths.DataModelSession.DisplayPrecisionChangeEvent:connect(setTime))
	
	self.Connections:add( self.TargetWidget.TimeInput.FocusLost:connect(function(enterPressed)
	    if enterPressed then
			local newTime = tonumber(self.TargetWidget.TimeInput.Text)
			if nil ~= newTime then
				self.TimeChangeEvent:fire(math.clamp(newTime, 0, self.Paths.DataModelClip:getLength()))				
			else
				setTime()
			end
		else
			setTime()
	    end
	end))
	
	self.Paths.GUIScriptToolTip:add(self.TargetWidget.TimeInput, "Change Scrubber Time")
end

local function initPlayPause(self)
	local onPlayPauseEvent = function()
		self.TargetWidget.PlayPause.Play.Visible = not self.Paths.DataModelPlayState:getIsPlaying()
		self.TargetWidget.PlayPause.Pause.Visible = self.Paths.DataModelPlayState:getIsPlaying()
		
		if self.Paths.DataModelPlayState:getIsPlaying() then
			self.Paths.GUIScriptToolTip:remove(self.TargetWidget.PlayPause.Play)
			self.Paths.GUIScriptToolTip:add(self.TargetWidget.PlayPause.Pause, "Pause The Animation")
		else
			self.Paths.GUIScriptToolTip:add(self.TargetWidget.PlayPause.Play, "Play The Animation")
			self.Paths.GUIScriptToolTip:remove(self.TargetWidget.PlayPause.Pause)			
		end
	end
	onPlayPauseEvent()
	self.Connections:add(self.Paths.DataModelPlayState.PlayEvent:connect(onPlayPauseEvent))
	self.Connections:add(self.Paths.DataModelPlayState.PauseEvent:connect(onPlayPauseEvent))
	
	self.Connections:add(self.TargetWidget.PlayPause.Play.ImageButton.MouseButton1Click:connect(function()
		self.Paths.ActionPlay:execute(self.Paths)
	end))
	
	self.Connections:add(self.TargetWidget.PlayPause.Pause.ImageButton.MouseButton1Click:connect(function()
		self.Paths.ActionPause:execute(self.Paths)
	end))
	
	self.Connections:add(self.Paths.InputKeyboard.KeyPressedEvent:connect(function(theKey)
		if Enum.KeyCode.P == theKey then
			if self.Paths.DataModelPlayState:getIsPlaying() then
				self.Paths.ActionPause:execute(self.Paths)
			else
				self.Paths.ActionPlay:execute(self.Paths)
			end
		end
	end))		
end

local function initLooping(self)	
	local onLoopingToggle = function()
		self.CustomButtons[self.TargetWidget.Loop]:turnOn(self.Paths.DataModelClip:getLooping())
	end
	onLoopingToggle()
	self.Connections:add(self.Paths.DataModelClip.LoopingToggleEvent:connect(onLoopingToggle))
	self.Connections:add(self.TargetWidget.Loop.ImageButton.MouseButton1Click:connect(function() self.Paths.ActionToggleLooping:execute(self.Paths) end))
	self.Paths.GUIScriptToolTip:add(self.TargetWidget.Loop, "Toggle Looping Animation")
end

function MediaControls:init(Paths)
	self.Paths = Paths
	self.TargetWidget = Paths.GUIMediaControls
	self.CustomButtons[self.TargetWidget.GoToStart] = Paths.WidgetCustomImageButton:new(Paths, self.TargetWidget.GoToStart)
	self.CustomButtons[self.TargetWidget.GoToPrevKey] = Paths.WidgetCustomImageButton:new(Paths, self.TargetWidget.GoToPrevKey)
	self.CustomButtons[self.TargetWidget.PlayPause.Play] = Paths.WidgetCustomImageButton:new(Paths, self.TargetWidget.PlayPause.Play)
	self.CustomButtons[self.TargetWidget.PlayPause.Pause] = Paths.WidgetCustomImageButton:new(Paths, self.TargetWidget.PlayPause.Pause)
	self.CustomButtons[self.TargetWidget.GoToNextKey] = Paths.WidgetCustomImageButton:new(Paths, self.TargetWidget.GoToNextKey)
	self.CustomButtons[self.TargetWidget.GoToEnd] = Paths.WidgetCustomImageButton:new(Paths, self.TargetWidget.GoToEnd)
	self.CustomButtons[self.TargetWidget.Loop] = Paths.WidgetCustomImageButton:new(Paths, self.TargetWidget.Loop)
	
	self.Connections = Paths.UtilityScriptConnections:new(Paths)
	self.TimeChangeEvent = Paths.UtilityScriptEvent:new()
	
	initTotalTime(self)
	initScrubberTime(self)
	initPlayPause(self)
	initLooping(self)
	
	self.Connections:add(self.TargetWidget.GoToStart.ImageButton.MouseButton1Click:connect(function()
		self.TimeChangeEvent:fire(0)
	end))
	
	local floatTol = 0.001
	self.Connections:add(self.TargetWidget.GoToPrevKey.ImageButton.MouseButton1Click:connect(function()
		local prevKeyframeTime = nil		
		for time, _ in pairs(Paths.DataModelKeyframes.keyframeList) do		
			if time < self.Paths.DataModelSession:getScrubberTime()-floatTol and (nil == prevKeyframeTime or time > prevKeyframeTime) then
				prevKeyframeTime = time
			end
		end
		
		if nil ~= prevKeyframeTime then
			self.TimeChangeEvent:fire(prevKeyframeTime)
		end
	end))	
		
	self.Connections:add(self.TargetWidget.GoToNextKey.ImageButton.MouseButton1Click:connect(function()
		local nextKeyframeTime = nil		
		for time, _ in pairs(Paths.DataModelKeyframes.keyframeList) do		
			if time > self.Paths.DataModelSession:getScrubberTime()+floatTol and (nil == nextKeyframeTime or time < nextKeyframeTime) then
				nextKeyframeTime = time
			end
		end
		
		if nil ~= nextKeyframeTime then
			self.TimeChangeEvent:fire(nextKeyframeTime)
		end
	end))
	
	self.Connections:add(self.TargetWidget.GoToEnd.ImageButton.MouseButton1Click:connect(function()
		self.TimeChangeEvent:fire(self.Paths.DataModelClip:getLength())
	end))
	
	self.Paths.GUIScriptToolTip:add(self.TargetWidget.GoToStart, "Move Scrubber To Start")
	self.Paths.GUIScriptToolTip:add(self.TargetWidget.GoToPrevKey, "Move Scrubber To Previous Key")
	self.Paths.GUIScriptToolTip:add(self.TargetWidget.GoToNextKey, "Move Scrubber To Next Key")
	self.Paths.GUIScriptToolTip:add(self.TargetWidget.GoToEnd, "Move Scrubber To End")
end

function MediaControls:terminate()
	self.Connections:terminate()
	self.Connections = nil
	
	self.TargetWidget = nil	
	self.TimeChangeEvent = nil
	
	for widget, button in pairs(self.CustomButtons) do
		button:terminate()
	end
	self.CustomButtons = {}
	self.Paths = nil
end

return MediaControls