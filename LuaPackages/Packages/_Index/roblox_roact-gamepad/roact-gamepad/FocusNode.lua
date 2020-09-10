--!nonstrict
-- Manages groups of selectable elements, reacting to selection changes for
-- individual items and triggering events for group selection changes
local Packages = script.Parent.Parent
local Roact = require(Packages.Roact)
local Cryo = require(Packages.Cryo)

local InternalApi = require(script.Parent.FocusControllerInternalApi)

local FocusNode = {}
FocusNode.__index = FocusNode

function FocusNode.new(navProps)
	local focusController
	if navProps.parentFocusNode ~= nil then
		focusController = navProps.parentFocusNode.focusController
	elseif navProps.focusController ~= nil then
		focusController = navProps.focusController
	else
		-- FIXME: do we ever even hit this?
		error("Cannot create node without focus manager")
	end

	local self = setmetatable({
		focusController = focusController,
		ref = navProps[Roact.Ref],

		lastFocused = nil,
	}, FocusNode)

	self:updateNavProps(navProps)

	return self
end

function FocusNode:__getFocusControllerInternal()
	return self.focusController[InternalApi]
end

function FocusNode:__findDefaultChildNode()
	local lowestLayoutOrder = math.huge
	local lowestLayoutOrderChild = nil

	local focusController = self:__getFocusControllerInternal()
	local children = focusController:getChildren(self)
	local groupHostObject = self.ref:getValue()

	-- Iterate through all children of this node, looking for a LayoutOrder
	-- associated with each node. Picking the lowest LayoutOrder is a good
	-- approximation of selecting the "first" child of a given container if the
	-- case that we don't have a default or a previous value to restore
	for ref, child in pairs(children) do
		local hostObject = ref:getValue()

		-- For each child node, determine whether it or any of its ancestors (up
		-- to the group) has the LayoutOrder property defined
		while hostObject ~= groupHostObject and hostObject ~= nil do
			if hostObject:isA("GuiObject") then
				local layoutOrder = hostObject.LayoutOrder

				-- LayoutOrder == 0 is the default value; in most cases, this
				-- implies that it wasn't explicitly set, so we should ignore it
				if layoutOrder ~= 0 then
					if layoutOrder < lowestLayoutOrder then
						lowestLayoutOrder = layoutOrder
						lowestLayoutOrderChild = child
					end

					-- Once we've found a layout order to associate with the
					-- Focusable, we break out and move on to the next child
					break
				end

			end

			hostObject = hostObject.Parent
		end
	end

	if lowestLayoutOrderChild ~= nil then
		return lowestLayoutOrderChild
	else
		-- If no valid target was returned, we return any valid member
		local _, arbitraryChild = next(children)

		return arbitraryChild
	end
end

function FocusNode:updateNavProps(navProps)
	local restorePreviousChildFocus = false
	if navProps.restorePreviousChildFocus ~= nil then
		restorePreviousChildFocus = navProps.restorePreviousChildFocus
	end

	self.defaultChildRef = navProps.defaultChild
	self.restorePreviousChildFocus = restorePreviousChildFocus
	self.inputBindings = navProps.inputBindings or {}

	local focusController = self:__getFocusControllerInternal()
	if focusController:isNodeFocused(self) then
		focusController:updateInputBindings()
	end
end

function FocusNode:focus()
	local focusController = self:__getFocusControllerInternal()
	local children = focusController:getChildren(self)
	if Cryo.isEmpty(children) then
		focusController:setSelection(self.ref:getValue())
	else
		if self.restorePreviousChildFocus and self.lastFocused ~= nil then
			focusController:moveFocusTo(self.lastFocused)
		elseif self.defaultChildRef ~= nil then
			focusController:moveFocusTo(self.defaultChildRef)
		else
			local defaultChild = self:__findDefaultChildNode()
			if defaultChild ~= nil then
				defaultChild:focus()
			end
		end
	end
end

function FocusNode:attachToTree(parent, onFocusChanged)
	local focusController = self:__getFocusControllerInternal()
	focusController:registerNode(parent, self.ref, self)

	self.parent = parent
	self.disconnectSelectionListener = focusController:subscribeToSelectionChange(function()
		-- Perform focus management operations set up by the FocusNode's owner
		local focused = focusController:isNodeFocused(self)
		onFocusChanged(focused)

		if self.parent ~= nil and focused then
			self.parent.lastFocused = self.ref
		end

		-- Keep track of the last focused ref so that we can provide it to
		-- self.props.selectionRule whenever we regain focus
		local children = focusController:getChildren(self)
		if not Cryo.isEmpty(children) and focused then
			-- For the special-case scenario in which the ref for our group
			-- gained selection, we follow any established rules to find the
			-- correct member of the group to bounce selection to, managed in
			-- the `focus` callback on focusController
			if focusController:getSelection() == self.ref:getValue() then
				self:focus()
			end
		end
	end)
end

function FocusNode:detachFromTree()
	local focusController = self:__getFocusControllerInternal()
	focusController:deregisterNode(self.parent, self.ref)

	if self.disconnectSelectionListener ~= nil then
		self.disconnectSelectionListener()
		self.disconnectSelectionListener = nil
	end
end

return FocusNode