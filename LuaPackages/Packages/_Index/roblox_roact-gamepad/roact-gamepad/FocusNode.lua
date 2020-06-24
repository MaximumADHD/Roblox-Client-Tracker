--!nonstrict
-- Manages groups of selectable elements, reacting to selection changes for
-- individual items and triggering events for group selection changes
local Packages = script.Parent.Parent
local Roact = require(Packages.Roact)
local Cryo = require(Packages.Cryo)

local FocusManager = require(script.Parent.FocusManager)

local FocusNode = {}
FocusNode.__index = FocusNode

function FocusNode.new(navProps)
	local focusManager
	if navProps.parentFocusNode ~= nil then
		focusManager = navProps.parentFocusNode.focusManager
	else
		focusManager = FocusManager.new()
	end

	local restorePreviousChildFocus = false
	if navProps.restorePreviousChildFocus ~= nil then
		restorePreviousChildFocus = navProps.restorePreviousChildFocus
	end

	local self = setmetatable({
		focusManager = focusManager,
		ref = navProps[Roact.Ref],

		defaultChildRef = navProps.defaultChild,
		restorePreviousChildFocus = navProps.restorePreviousChildFocus,
		inputBindings = navProps.inputBindings or {},

		left = navProps.NextSelectionLeft,
		right = navProps.NextSelectionRight,
		up = navProps.NextSelectionUp,
		down = navProps.NextSelectionDown,

		lastFocused = nil,
	}, FocusNode)

	return self
end

function FocusNode:__findDefaultChildNode()
	local lowestLayoutOrder = math.huge
	local lowestLayoutOrderChild = nil

	local children = self.focusManager:getChildren(self)
	local groupHostObject = self.ref:getValue()

	for ref, child in pairs(children) do
		local hostObject = ref:getValue()

		-- For each child node, determine whether it or any of its ancestors (up
		-- to the group) has the LayoutOrder property defined
		while hostObject ~= groupHostObject and hostObject ~= nil do
			local layoutOrder = hostObject.LayoutOrder

			-- LayoutOrder == 0 is the default value; in most cases, this
			-- implies that it wasn't explicitly set, so we should ignore it
			if layoutOrder ~= 0 and layoutOrder < lowestLayoutOrder then
				lowestLayoutOrder = layoutOrder
				lowestLayoutOrderChild = child
				break
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

function FocusNode:getInputBinding(key)
	if self.inputBindings ~= nil then
		return self.inputBindings[key]
	end

	return nil
end

function FocusNode:focus()
	local children = self.focusManager:getChildren(self)
	if Cryo.isEmpty(children) then
		self.focusManager:setSelection(self.ref:getValue())
	else
		if self.restorePreviousChildFocus and self.lastFocused ~= nil then
			self.focusManager:moveFocusTo(self.lastFocused)
		elseif self.defaultChildRef ~= nil then
			self.focusManager:moveFocusTo(self.defaultChildRef)
		else
			local defaultChild = self:__findDefaultChildNode()
			if defaultChild ~= nil then
				defaultChild:focus()
			end
		end
	end
end

function FocusNode:attachToTree(parent, onFocusChanged)
	self.focusManager:registerNode(parent, self.ref, self)

	self.parent = parent
	self.disconnectSelectionListener = self.focusManager:subscribeToSelectionChange(function()
		-- Perform focus management operations set up by the FocusNode's owner
		local focused = self.focusManager:isNodeFocused(self)
		onFocusChanged(focused)

		if self.parent ~= nil and focused then
			self.parent.lastFocused = self.ref
		end

		-- Keep track of the last focused ref so that we can provide it to
		-- self.props.selectionRule whenever we regain focus
		local children = self.focusManager:getChildren(self)
		if not Cryo.isEmpty(children) and focused then
			-- For the special-case scenario in which the ref for our group
			-- gained selection, we follow any established rules to find the
			-- correct member of the group to bounce selection to, managed in
			-- the `focus` callback on self.focusManager
			if self.focusManager:getSelection() == self.ref:getValue() then
				self:focus()
			end
		end
	end)
end

function FocusNode:detachFromTree(parent)
	self.focusManager:deregisterNode(parent, self.ref)
	self.parent = nil

	if self.disconnectSelectionListener ~= nil then
		self.disconnectSelectionListener()
		self.disconnectSelectionListener = nil
	end
end

return FocusNode