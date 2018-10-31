-- singleton

local FastFlags = require(script.Parent.Parent.FastFlags)

local NotchesDisplayArea = {}

NotchesDisplayArea.TargetWidget = nil
NotchesDisplayArea.ClonedChildren = {}

local function labelNotch(self, clonedNotch)
	local notchTime = clonedNotch.Position.X.Scale*self.Paths.DataModelClip:getLength()
	clonedNotch.NotchLabel.Text = string.format(self.Paths.DataModelSession:getNumberPrecisionFormatString(), notchTime)
end

local function adjustNotchPosition(self, notch, notchTime, doRelabel)
	notch.Position = UDim2.new(notchTime/self.Paths.DataModelClip:getLength(), 0, 0, 0)
	if doRelabel then
		-- label after setting position
		labelNotch(self, notch)
	end
end

local function addNotch(self, notchTime, doLabel)
	local clonedNotch = self.Paths.GUIClonableNotch:clone()
	self.Paths.UtilityScriptTheme:setColorsToTheme(clonedNotch)
	clonedNotch.VerticalLine.BackgroundColor3 = self.Paths.UtilityScriptTheme:GetVerticalLineColor()
	clonedNotch.Parent = self.TargetWidget
	adjustNotchPosition(self, clonedNotch, notchTime, doLabel)
	table.insert(self.ClonedChildren, clonedNotch)
	return clonedNotch
end

local function calculateDisplayArea(self, notchWidth)
	local minFirstNotchPosition = self.TargetWidget.AbsolutePosition.X + notchWidth
	local minFirstNotchTime = self.Paths.UtilityScriptDisplayArea:absoluteXPositionToTime(minFirstNotchPosition, self.TargetWidget)
	local maxLastNotchPosition = self.TargetWidget.AbsolutePosition.X + self.TargetWidget.AbsoluteSize.X - notchWidth
	local maxLastNotchTime = self.Paths.UtilityScriptDisplayArea:absoluteXPositionToTime(maxLastNotchPosition, self.TargetWidget)
	
	local BestTimeSpacingOption = 0.25
	local MaxDecimalPlaces = 2 -- this indicates that 'BestTimeSpacingOption' above is to 2 decimal places

	local timeSpacingOption = BestTimeSpacingOption		
	while timeSpacingOption < self.Paths.DataModelClip:getLength() do
		local doesSpaceExistToDisplayNotches = timeSpacingOption >= minFirstNotchTime
		if doesSpaceExistToDisplayNotches then
			local numNotchesToDisplay = math.floor(maxLastNotchTime/timeSpacingOption)
			local numDecimalPlacesToDisplay = timeSpacingOption >= 1 and 1 or MaxDecimalPlaces -- we'll display 1 decimal place even for whole numbers >= 1 
			return numNotchesToDisplay, timeSpacingOption, numDecimalPlacesToDisplay
		end
		timeSpacingOption = timeSpacingOption*2
		-- this stops inacuracy creeping in, once the starting value of 0.25 (BestTimeSpacingOption) gets over 1 it will always be to 0 decimal places, under 1, and 2 places is the max	
		timeSpacingOption = self.Paths.HelperFunctionsMath:roundToDecimalPlace(timeSpacingOption, (timeSpacingOption >= 1 and 0 or MaxDecimalPlaces))
	end
	return 0
end

local function clearNotches(self)
	self.PreviousNumExtraNotches = nil
	self.PreviousTimeSpacing = nil
	self.PreviouslyFullyZoomed = nil
	
	local numClonedChildren = #self.ClonedChildren
	for child = 1, numClonedChildren do
		self.ClonedChildren[child].Parent = nil		
		self.ClonedChildren[child]:Destroy()
		self.ClonedChildren[child] = nil
	end
end

local function setNotchLabelVisibility(notch, set)
	notch.NotchLabel.Visible = set
	notch.NotchLine.Visible = set
	notch.NotchLineShort.Visible = not set	
end

local function showExtraFullyZoomedAnimLengthNotch(self)
	return self.Paths.DataModelClip:getLength() < 1
end

local function adjustFullyZoomedNotches(self)
	local numDecimalPlacesToDisplay = math.max(2, self.Paths.HelperFunctionsMath:numDecimalPlaces(self.Paths.DataModelClip:getLength()))
	self.Paths.ActionEditDisplayPrecision:execute(self.Paths, numDecimalPlacesToDisplay)
	
	local viewableAreaBeginTime = self.Paths.UtilityScriptDisplayArea:calculateViewableAreaBeginTime()
	local viewableAreaEndTime = self.Paths.UtilityScriptDisplayArea:calculateViewableAreaEndTime()
	for notch=1, self.Paths.DataModelSession:getFPS() do		
		local scale = (notch-1)/(self.Paths.DataModelSession:getFPS()-1)
		local notchTime = self.Paths.HelperFunctionsMath:lerp(viewableAreaBeginTime, viewableAreaEndTime, scale)
				
		local showFirstAndLastOnly = 1 == notch or self.Paths.DataModelSession:getFPS() == notch
		setNotchLabelVisibility(self.ClonedChildren[notch], showFirstAndLastOnly)		
		adjustNotchPosition(self, self.ClonedChildren[notch], notchTime, showFirstAndLastOnly)
	end
	-- if the animation length is less than 1 second, we add an extra notch to show the animation length
	if showExtraFullyZoomedAnimLengthNotch(self) then
		adjustNotchPosition(self, self.ClonedChildren[#self.ClonedChildren], self.Paths.DataModelClip:getLength(), true)
	end
end

local function createFullyZoomedNotches(self)
	clearNotches(self)
	for notch=1, self.Paths.DataModelSession:getFPS() do		
		addNotch(self, 0, false)
	end
	-- if the animation length is less than 1 second, we add an extra notch to show the animation length
	if showExtraFullyZoomedAnimLengthNotch(self) then
		addNotch(self, 0, false)
	end
	adjustFullyZoomedNotches(self)
end

local function createNotches(self)
	clearNotches(self)
	
	-- add notch at animation begining	
	addNotch(self, 0, true)
	-- add notch at animation length
	addNotch(self, self.Paths.DataModelClip:getLength(), true)
	-- get the width of one of the above added notches
	local notchWidth = self.ClonedChildren[1].AbsoluteSize.X
	local numExtraNotches, notchTimeSpacing, definedBoundaryDecimalPlaces = calculateDisplayArea(self, notchWidth)
	
	if numExtraNotches > 0 then	
		for extraNotch=1, numExtraNotches do
			local notchTime = notchTimeSpacing*extraNotch
			local xPosLeftSide = self.Paths.UtilityScriptDisplayArea:timeToAbsoluteXPosition(notchTime, self.TargetWidget)
			self.Paths.ActionEditDisplayPrecision:execute(self.Paths, definedBoundaryDecimalPlaces)
			
			addNotch(self, notchTime, true)	
		end
	end
	-- ensure the first label has the correct precision (as it was added before the rest) 	
	labelNotch(self, self.ClonedChildren[1])
	-- the last label (which shows the length of the clip) should not be truncated at all
	self.ClonedChildren[2].NotchLabel.Text = self.Paths.DataModelClip:getLength()
end

local function initNotches(self)			
	local notchAtTimeZero = self.ClonedChildren[1]		
	local haveNotchesEverBeenInitialized = nil ~= notchAtTimeZero
	if haveNotchesEverBeenInitialized then
		if self.Paths.DataModelSession:isFullyZoomed() then
			if self.PreviouslyFullyZoomed then
				adjustFullyZoomedNotches(self)
			else
				createFullyZoomedNotches(self)
			end
		else
			local numExtraNotches, timeSpacing = calculateDisplayArea(self, notchAtTimeZero.AbsoluteSize.X)
			if self.PreviouslyFullyZoomed or self.PreviousNumExtraNotches ~= numExtraNotches or self.PreviousTimeSpacing ~= timeSpacing then
				createNotches(self)
			end
		end
	elseif self.Paths.DataModelSession:isFullyZoomed() then
		createFullyZoomedNotches(self)
	else
		createNotches(self)		
	end
	
	self.PreviousNumExtraNotches, self.PreviousTimeSpacing = calculateDisplayArea(self, self.ClonedChildren[1].AbsoluteSize.X)
	self.PreviouslyFullyZoomed = self.Paths.DataModelSession:isFullyZoomed()
end

function NotchesDisplayArea:init(Paths)
	self.Paths = Paths
	self.TargetWidget = Paths.GUINotchesDisplayArea	
	
	initNotches(self)
	Paths.UtilityScriptDisplayArea:addDisplay(self.TargetWidget)
	
	self.Connections = self.Paths.UtilityScriptConnections:new(Paths)
	self.Connections:add(Paths.UtilityScriptDisplayArea.ChangeEvent:connect(function(cause) 
		if Paths.UtilityScriptDisplayArea.ChangeEventType.ClipLength == cause then
			clearNotches(self)
		end
		initNotches(self) 
	end))
	self.Connections:add(self.TargetWidget.Changed:connect(function (property)
		-- we don't want to respond to a size change if it is the DisplayArea setting it, we'll respond to that through the DisplayArea.ChangeEvent
		-- we only respond in this function to size events from the user grabbing the edges of the window and dragging
		if not Paths.UtilityScriptDisplayArea:isUpdating() then
			if property == "AbsoluteSize" then
				initNotches(self)
			end
		end
	end))
end

function NotchesDisplayArea:terminate()
	self.Connections:terminate()
	self.Connections = nil

	self.Paths.UtilityScriptDisplayArea:removeDisplay(self.TargetWidget)	
	
	clearNotches(self)
	self.Paths = nil
end

return NotchesDisplayArea
