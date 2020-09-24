--[[
	class HoverEscapeDetector

	Constructed with a given selectable object and a given callback. Calls the
	callback whenever selectable object changes in some way that could make it
	no longer hovered thanks to factors external to the dragger (such as when
	it is deleted through a hotkey).
]]

local HoverEscapeDetector = {}
HoverEscapeDetector.__index = HoverEscapeDetector

function HoverEscapeDetector.new(draggerContext, hoveredItem, onEscaped)
	local self = setmetatable({
		_destroyed = false,
	}, HoverEscapeDetector)
	self._hoverInstanceEscapedConnection =
		hoveredItem.AncestryChanged:Connect(function(child, newParent)
			-- Waiting on the parent changing here is done to give
			-- the engine a chance to update the physics state.
			-- Engine physics state updates happen on hierarchy
			-- changed events too, so they may not have happened
			-- yet when this event is fired, which would cause raycasts
			-- to return wrong results and other oddities like that.
			-- If we wait for the associated parent property changed
			-- signal to fire, then we can be sure the physics state
			-- updates have already ocurred.
			child:GetPropertyChangedSignal("Parent"):Wait()
			onEscaped()
		end)
	self._hoverInstanceContentsChangedConnection =
		hoveredItem.DescendantRemoving:Connect(function(descendant)
			-- Ignore other junk like temporary movement welds being
			-- removed from the hover selectable.
			-- For example if we end the drag over one of the
			-- dragged parts this would otherwise pick up the temp
			-- movement weld being removed from under it.
			if descendant:IsA("BasePart") or descendant:IsA("Attachment") then
				descendant:GetPropertyChangedSignal("Parent"):Wait()
				onEscaped()
			end
		end)
	return self
end

function HoverEscapeDetector:destroy()
	assert(not self._destroyed)
	self._hoverInstanceEscapedConnection:Disconnect()
	self._hoverInstanceContentsChangedConnection:Disconnect()
	self._destroyed = true
end

return HoverEscapeDetector