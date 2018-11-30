-- singleton
local FastFlags = require(script.Parent.Parent.FastFlags)

local ScrollingJointsTimeline = {}

ScrollingJointsTimeline.TargetWidget = nil
ScrollingJointsTimeline.Paths = nil

function ScrollingJointsTimeline:init(Paths)
	self.Paths = Paths
	
	Paths.GUIScriptJointTimeline:init(Paths)
	self.TargetWidget = Paths.GUIScrollingJointTimeline	
	self.TargetWidget.CanvasSize = UDim2.new(1, 0, 0, Paths.GUIScriptJointTimeline:getHeight() + self.Paths.GUIIndicatorArea.AbsoluteSize.Y)
	
	self.onHeightChange = function()
		self.TargetWidget.CanvasSize = UDim2.new(1, 0, 0, Paths.GUIScriptJointTimeline:getHeight() + self.Paths.GUIIndicatorArea.AbsoluteSize.Y)
	end
	Paths.GUIScriptJointTimeline.heightChangeEvent:connect(self.onHeightChange)
	
	-- when the scroll frame is resized, there is a bug that means child widgets are not always re-rendered, which leaves them invisible, 
	-- this hack is used to slightly reposition the canvas when the scroll frame is repositioned, which makes the children get re-rendered
	self.forceRenderHack = true
	self.onChanged = self.TargetWidget.Changed:connect(function (property)
		if property == "AbsoluteSize" then
			local smallYChange = self.forceRenderHack and 1 or -1
			self.TargetWidget.CanvasPosition = Vector2.new(self.TargetWidget.CanvasPosition.X, self.TargetWidget.CanvasPosition.Y+smallYChange)		
			self.forceRenderHack = not self.forceRenderHack
		end
	end)
end

function ScrollingJointsTimeline:terminate()
	self.onChanged:disconnect()
	self.Paths.GUIScriptJointTimeline.heightChangeEvent:disconnect(self.onHeightChange)
	self.onHeightChange = nil
	self.TargetWidget = nil
	self.Paths.GUIScriptJointTimeline:terminate()
	self.Paths = nil
end

return ScrollingJointsTimeline
