-- singleton

local AnimationEventMenu = {}

AnimationEventMenu.TargetWidget = nil
AnimationEventMenu.Menu  = nil

function AnimationEventMenu:init(Paths)
	self.Paths = Paths
	self.TargetWidget = Paths.GUIAnimationEventMenu
	self.fullSize = self.TargetWidget.Size
	self.Menu = Paths.WidgetMainMenu:new2(Paths, self.TargetWidget)
	
	self.AddEventHandle = self.Menu:getOption("MenuOptionAddEvents")
	self.Menu:setClickCallback(self.AddEventHandle, function()
		local keyframe = self.Paths.DataModelKeyframes:getOrCreateKeyframe(self.Time)
		if keyframe then
			self.Paths.GUIScriptEditAnimationEvents:show(self.Time)
		end
	end)
	self.Menu:setEnabled(self.AddEventHandle, true)
	
	self.RemoveEventsHandle = self.Menu:getOption("MenuOptionRemoveEvents")
	self.Menu:setClickCallback(self.RemoveEventsHandle, function() self.Paths.DataModelAnimationEvents:resetEvents(self.Time) end)
	self.Menu:setEnabled(self.RemoveEventsHandle, true)
	
	self.Connections = Paths.UtilityScriptConnections:new(Paths)	
	local closeForChanges = function()
		if self.Menu:isOpen() then -- close if anything done while the menu is open, as things could be in a weird state (alternately could disable undo/redo while this menu is open)
			self.Menu:turnOn(false)
		end
	end

	self.Connections:add(self.Paths.UtilityScriptUndoRedo.ChangeEvent:connect(closeForChanges))
	self.Connections:add(self.Paths.DataModelSession.SelectedChangeEvent:connect(closeForChanges))		
end

function AnimationEventMenu:showAvailableOptions(marker)
	local markerClicked = marker ~= nil

	local text = markerClicked and "Edit Animation Events" or "Add Animation Events"
	self.Menu:setMainText(self.AddEventHandle, text)
	self.Menu:getOptionWidget(self.RemoveEventsHandle).Visible = markerClicked

	local oldSize = self.TargetWidget.Size
	local itemSize = self.Menu:getOptionWidget(self.AddEventHandle).Size.Y.Offset
	local newSizeY = markerClicked and (itemSize * 2) or itemSize
	self.TargetWidget.Size = UDim2.new(oldSize.X.Scale, oldSize.X.Offset, oldSize.Y.Scale, newSizeY)
end

local function positionMenu(self)
	local potentialXOffset = self.Paths.InputMouse:getX()-self.TargetWidget.Parent.AbsolutePosition.X
	local potentialYOffset = self.Paths.InputMouse:getY()-self.TargetWidget.Parent.AbsolutePosition.Y

	-- checking horizontal		
	local rightSideEdge = self.TargetWidget.Parent.AbsolutePosition.X+self.TargetWidget.Parent.AbsoluteSize.X	
	local willMenuGetCutOffToTheRight = potentialXOffset+self.TargetWidget.AbsoluteSize.X > rightSideEdge
	if willMenuGetCutOffToTheRight then
		potentialXOffset = rightSideEdge-self.TargetWidget.AbsoluteSize.X --move menu to the left
	end

	self.TargetWidget.Position = UDim2.new(0, potentialXOffset, 0, math.max(self.Paths.GUIScrollingJointTimeline.AbsolutePosition.Y, potentialYOffset))
end

function AnimationEventMenu:show(time, marker)
	self.Time = time
	self:showAvailableOptions(marker)
	positionMenu(self)
	self.Menu:turnOn(true)
end

function AnimationEventMenu:terminate()
	self.Connections:terminate()
	self.Connections = nil
	
	self.Menu:terminate()
	self.Menu = nil
	self.TargetWidget = nil
	self.Paths = nil
end

return AnimationEventMenu