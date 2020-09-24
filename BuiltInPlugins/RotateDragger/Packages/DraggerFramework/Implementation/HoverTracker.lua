
local Workspace = game:GetService("Workspace")

local DraggerFramework = script.Parent.Parent
local SelectionHelper = require(DraggerFramework.Utility.SelectionHelper)

local getFFlagScaleDraggerPartBias = require(DraggerFramework.Flags.getFFlagScaleDraggerPartBias)
local getFFlagDraggerSplit = require(DraggerFramework.Flags.getFFlagDraggerSplit)

--[[
	Ignored handle hits: When the ToolImplementation's shouldBiasTowardsObject
	function returns true, then this function will decide whether to ignore
	handle clicks where the user clicked outside of the handle's visual, but
	still within the handle's invisible hitbox.
]]
local function isIgnoredHandleHit(handles, mouseRay, selectionInfo, hitItem)
	assert(getFFlagDraggerSplit())
	if not handles:shouldBiasTowardsObjects() then
		-- Only potentially ignores if we're biased towards parts
		return false
	end

	if not hitItem or not selectionInfo:doesContainItem(hitItem) then
		-- Only bias towards parts when clicking on something in the selection
		return false
	end

	-- Ignore the hit if when ignoring the extra threshold the handle is no
	-- longer hit.
	local ignoreExtraThreshold = true
	return handles:hitTest(mouseRay, ignoreExtraThreshold) == nil
end

local HoverTracker = {}
HoverTracker.__index = HoverTracker

if getFFlagDraggerSplit() then
	function HoverTracker.new(draggerSchema, handlesList, onHoverExternallyChangedFunction)
		assert(type(handlesList) == "table")
		assert(type(draggerSchema) == "table")
		return setmetatable({
			_draggerSchema = draggerSchema,
			_handlesList = handlesList,
			_hoverHandleId = nil,
			_hoverItem = nil,
			_onHoverChanged = onHoverExternallyChangedFunction,
		}, HoverTracker)
	end
else
	function HoverTracker.new(toolImplementation, onHoverExternallyChangedFunction)
		return setmetatable({
			_toolImplementation = toolImplementation,
			_hoverHandleId = nil,
			_hoverInstance = nil,
			_onHoverChanged = onHoverExternallyChangedFunction,
		}, HoverTracker)
	end
end

local function isCloser(distance, isOnTop, currentDistance, currentIsOnTop)
	if currentIsOnTop then -- Neat logic
		return isOnTop and distance < currentDistance
	else
		return isOnTop or distance < currentDistance
	end
end

if getFFlagDraggerSplit() then
	function HoverTracker:update(draggerContext, currentSelection, selectionInfo)
		assert(currentSelection ~= nil)
		local oldHoverSelectable = self._hoverSelectable

		-- Hover parts in the workspace
		local mouseRay = draggerContext:getMouseRay()
		local hitSelectable, hitItem, distanceToHover =
			self._draggerSchema.getMouseTarget(draggerContext, mouseRay, currentSelection)
		self._hoverItem = hitItem
		self._hoverSelectable = hitSelectable
		self._hoverHandleId = nil
		if hitSelectable ~= nil then
			self._hoverDistance = distanceToHover
			self._hoverPosition = mouseRay.Origin + mouseRay.Direction.Unit * distanceToHover
		else
			distanceToHover = math.huge
			self._hoverDistance = math.huge
			self._hoverPosition = nil
		end

		self._hoverHandles = nil
		local currentIsOnTop = false
		for _, handles in pairs(self._handlesList) do
			-- Possibly hover a handle instead if we have a handle closer than the part
			-- and the hit wasn't ignored by bias towards hovering parts.
			local hoverHandleId, hoverHandleDistance, isOnTop = handles:hitTest(mouseRay, false)
			if hoverHandleId then
				if isCloser(hoverHandleDistance, isOnTop, distanceToHover, currentIsOnTop) and
					not isIgnoredHandleHit(handles, mouseRay, selectionInfo, hitItem) then
					self._hoverHandles = handles
					self._hoverHandleId = hoverHandleId
					self._hoverDistance = hoverHandleDistance
					self._hoverPosition = nil
					distanceToHover = hoverHandleDistance
					currentIsOnTop = isOnTop
				end
			end
		end

		if self._hoverHandles then
			self._draggerSchema.setHover(draggerContext, nil, nil)
		else
			self._draggerSchema.setHover(draggerContext, self._hoverSelectable, self._hoverItem)
		end

		if self._onHoverChanged and self._hoverSelectable ~= oldHoverSelectable then
			self:_freeHoverEscapeDetector()
			if self._hoverSelectable then
				self._hoverEscapeDetector =
					self._draggerSchema.HoverEscapeDetector.new(
						draggerContext, self._hoverSelectable, self._onHoverChanged)
			end
		end
	end
else
	function HoverTracker:update(derivedWorldState, draggerContext, currentSelection)
		local oldHoverSelectable = self._hoverSelectable

		-- Hover parts in the workspace
		local hit, distanceToHover, at = self:_getMouseTarget(draggerContext)
		self._hoverInstance = hit
		self._hoverSelectable = SelectionHelper.getSelectable(hit, draggerContext:isAltKeyDown())
		self._hoverPosition = at
		self._hoverHandleId = nil
		self._hoverDistance = distanceToHover

		if getFFlagScaleDraggerPartBias() then
			-- Possibly hover a handle instead if we have a handle closer than the part
			-- and the hit wasn't ignored by bias towards hovering parts.
			local mouseRay = draggerContext:getMouseRay()
			local hoverHandleId, hoverHandleDistance = self:_getHitHandle(mouseRay, false)
			if hoverHandleId then
				if not self._hoverSelectable or
					((hoverHandleDistance < distanceToHover) and
						not self:_isIgnoredHandleHit(mouseRay, derivedWorldState, hit)) then
					self._hoverHandleId = hoverHandleId
					self._hoverDistance = hoverHandleDistance
					self._hoverPosition = nil
				end
			end
		else
			-- Possibly hover a handle instead if we have a handle closer that the part
			local mouseRay = draggerContext:getMouseRay()
			local hoverHandleId, hoverHandleDistance = self:_getHitHandle(mouseRay)
			if hoverHandleId then
				if not self._hoverSelectable or hoverHandleDistance < distanceToHover then
					self._hoverHandleId = hoverHandleId
					self._hoverDistance = hoverHandleDistance
					self._hoverPosition = nil
				end
			end
		end

		if self._hoverHandleId then
			draggerContext:setHoverInstance(nil)
		else
			draggerContext:setHoverInstance(self._hoverInstance)
		end

		if self._onHoverChanged and self._hoverSelectable ~= oldHoverSelectable then
			self:_disconnectSignals()
			local thisHoverSelectable = self._hoverSelectable
			if thisHoverSelectable then
				self._hoverInstanceEscapedConnection =
					thisHoverSelectable.AncestryChanged:Connect(function(child, newParent)
						-- Waiting on the parent changing here is done to give
						-- the engine a chance to update the physics state.
						-- Engine physics state updates happen on hierarchy
						-- changed events too, so they may not have happened
						-- yet when this event is fired.
						-- If we wait for the associated parent property changed
						-- signal to fire, then we can be sure the physics state
						-- updates have already ocurred.
						child:GetPropertyChangedSignal("Parent"):Wait()
						self._onHoverChanged()
					end)
				self._hoverInstanceContentsChangedConnection =
					thisHoverSelectable.DescendantRemoving:Connect(function(descendant)
						-- Ignore other junk like temporary movement welds being
						-- removed from the hover selectable.
						-- For example if we end the drag over one of the
						-- dragged parts this would otherwise pick up the temp
						-- movement weld being removed from under it.
						if descendant:IsA("BasePart") or descendant:IsA("Attachment") then
							descendant:GetPropertyChangedSignal("Parent"):Wait()
							self._onHoverChanged()
						end
					end)
			end
		end
	end
end

function HoverTracker:_disconnectSignals()
	assert(not getFFlagDraggerSplit())
	if self._hoverInstanceEscapedConnection then
		self._hoverInstanceEscapedConnection:Disconnect()
		self._hoverInstanceEscapedConnection = nil
	end
	if self._hoverInstanceContentsChangedConnection then
		self._hoverInstanceContentsChangedConnection:Disconnect()
		self._hoverInstanceContentsChangedConnection = nil
	end
end

function HoverTracker:_freeHoverEscapeDetector()
	assert(getFFlagDraggerSplit())
	if self._hoverEscapeDetector then
		self._hoverEscapeDetector:destroy()
		self._hoverEscapeDetector = nil
	end
end

function HoverTracker:clearHover(draggerContext)
	if getFFlagDraggerSplit() then
		self:_freeHoverEscapeDetector()
		self._hoverItem = nil
	else
		self:_disconnectSignals()
		self._hoverInstance = nil
	end
	self._hoverSelectable = nil
	self._hoverPosition = nil
	if getFFlagDraggerSplit() then
		self._hoverHandles = nil
	end
	self._hoverHandleId = nil
	self._hoverDistance = nil
	if getFFlagDraggerSplit() then
		self._draggerSchema.setHover(draggerContext, nil, nil)
	else
		draggerContext:setHoverInstance(nil)
	end
end

if getFFlagDraggerSplit() then
	--[[
		Returns: The Id of the hovered handle, the distance to that handle
	]]
	function HoverTracker:getHoverHandleId()
		return self._hoverHandles, self._hoverHandleId, self._hoverDistance
	end
else
	--[[
		Returns: The Id of the hovered handle, the distance to that handle
	]]
	function HoverTracker:getHoverHandleId()
		return self._hoverHandleId, self._hoverDistance
	end
end

--[[
	Returns: The hovered instance, and the world position of the hit on it
]]
if getFFlagDraggerSplit() then
	function HoverTracker:getHoverItem()
		return self._hoverItem, self._hoverPosition
	end
else
	function HoverTracker:getHoverInstance()
		return self._hoverInstance, self._hoverPosition
	end
end

function HoverTracker:getHoverSelectable()
	return self._hoverSelectable
end

if not getFFlagDraggerSplit() then
	--[[
		Ignored handle hits: When the ToolImplementation's shouldBiasTowardsObject
		function returns true, then this function will decide whether to ignore
		handle clicks where the user clicked outside of the handle's visual, but
		still within the handle's invisible hitbox.
	]]
	function HoverTracker:_isIgnoredHandleHit(mouseRay, derivedWorldState, hitPart)
		assert(getFFlagScaleDraggerPartBias())
		if not self._toolImplementation:shouldBiasTowardsObjects() then
			-- Only potentially ignores if we're biased towards parts
			return false
		end

		if not hitPart or not derivedWorldState:isPartInSelection(hitPart) then
			-- Only bias towards parts when clicking on something in the selection
			return false
		end

		-- Ignore the hit if when ignoring the extra threshold we don't hit the
		-- handle anymore.
		local ignoreExtraThreshold = true
		return self:_getHitHandle(mouseRay, ignoreExtraThreshold) == nil
	end

	function HoverTracker:_getHitHandle(mouseRay, ignoreExtraThreshold)
		if getFFlagScaleDraggerPartBias() then
			assert(ignoreExtraThreshold ~= nil)
		end
		if self._toolImplementation and self._toolImplementation.hitTest then
			return self._toolImplementation:hitTest(mouseRay, ignoreExtraThreshold)
		else
			return nil
		end
	end
end

if not getFFlagDraggerSplit() then
	function HoverTracker:_getMouseTarget(draggerContext)
		local mouseRay = draggerContext:getMouseRay()
		local hitObject, hitPosition = Workspace:FindPartOnRay(mouseRay)

		-- Selection favoring: If there is a selected object and a non-selected
		-- object almost exactly coincident underneath the mouse, then we should
		-- favor the selected one, even if due to floating point error the non
		-- selected one comes out slightly closer.
		-- Without this case, if you duplicate objects and try to drag them, you
		-- may end up dragging only one of the objects because you clicked on the
		-- old non-selected copy, as opposed to the selected one you meant to.
		if hitObject then
			local selectedObjects = draggerContext:getSelectionWrapper():Get()
			local hitSelectedObject, hitSelectedPosition
				= Workspace:FindPartOnRayWithWhitelist(mouseRay, selectedObjects)
			if hitSelectedObject and hitSelectedPosition:FuzzyEq(hitPosition) then
				hitObject = hitSelectedObject
				hitPosition = hitSelectedPosition
			end
		end

		local hitDistance = (mouseRay.Origin - hitPosition).Magnitude

		local hitResult = draggerContext:gizmoRaycast(
			mouseRay.Origin, mouseRay.Direction, RaycastParams.new())
		if hitResult and
			(draggerContext:shouldDrawConstraintsOnTop() or (hitResult.Distance < hitDistance)) then
			hitPosition = hitResult.Position
			hitDistance = hitResult.Distance
			hitObject = hitResult.Instance
		end
		return hitObject, hitDistance, hitPosition
	end
end

return HoverTracker