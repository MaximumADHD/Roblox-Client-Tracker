--[[
	class HoverEscapeDetector

	Constructed with a given selectable object and a given callback. Calls the
	callback whenever selectable object changes in some way that could make it
	no longer hovered thanks to factors external to the dragger (such as when
	it is deleted through a hotkey).
]]

local DraggerSchemaCore = script.Parent
local Packages = DraggerSchemaCore.Parent
local DraggerFramework = Packages.DraggerFramework

local getFFlagDraggerFrameworkFixes = require(DraggerFramework.Flags.getFFlagDraggerFrameworkFixes)
local getFFlagTemporaryDisableUpdownAsserts = require(DraggerFramework.Flags.getFFlagTemporaryDisableUpdownAsserts)

local HoverEscapeDetector = {}
HoverEscapeDetector.__index = HoverEscapeDetector

function HoverEscapeDetector.new(draggerContext, hoveredItem, onEscaped)
	local SignalsAreDeferred
	if getFFlagDraggerFrameworkFixes() then
		local firedFlag = false
		local temporaryEvent = Instance.new("BindableEvent")
		temporaryEvent.Event:Connect(function()
			firedFlag = true
		end)
		temporaryEvent:Fire()
		SignalsAreDeferred = not firedFlag
		temporaryEvent:Destroy()
	end

	local self = setmetatable({
		_destroyed = false,
	}, HoverEscapeDetector)
	self._hoverInstanceEscapedConnection =
		hoveredItem.AncestryChanged:Connect(function(child, newParent)
			if not getFFlagDraggerFrameworkFixes() or not SignalsAreDeferred then
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
			end
			if not self._destroyed then
				onEscaped()
			end
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
				if not self._destroyed then
					onEscaped()
				end
			end
		end)
	return self
end

function HoverEscapeDetector:destroy()
	if getFFlagTemporaryDisableUpdownAsserts() then
		-- Should not be needed, temporary code to diagnose issues.
		if self._destroyed then
			return
		end
	else
		assert(not self._destroyed)
	end
	if getFFlagDraggerFrameworkFixes() then
		self._destroyed = true
	end
	self._hoverInstanceEscapedConnection:Disconnect()
	self._hoverInstanceContentsChangedConnection:Disconnect()
	if not getFFlagDraggerFrameworkFixes() then
		self._destroyed = true
	end
end

return HoverEscapeDetector