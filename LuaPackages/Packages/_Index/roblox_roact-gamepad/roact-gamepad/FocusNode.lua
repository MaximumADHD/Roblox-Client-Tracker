--!nonstrict
-- Manages groups of selectable elements, reacting to selection changes for
-- individual items and triggering events for group selection changes
local Packages = script.Parent.Parent
local Roact = require(Packages.Roact)
local Cryo = require(Packages.Cryo)

local FocusManager = require(script.Parent.FocusManager)

local function identity(value)
	return value
end

local FocusNode = {}
FocusNode.__index = FocusNode

function FocusNode.newRoot(ref, selectionRule)
	local self = setmetatable({
		focusManager = nil,

		ref = ref,
		selectionRule = selectionRule or identity,
		inputBindings = {},
		lastFocused = nil,
	}, FocusNode)

	self.focusManager = FocusManager.new(ref, self)

	return self
end

function FocusNode.new(navProps)
	local self = setmetatable({
		focusManager = navProps.parentFocusNode.focusManager,
		ref = navProps[Roact.Ref],
		parent = navProps.parentFocusNode,
		selectionRule = navProps.selectionRule or identity,
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
		while hostObject ~= groupHostObject do
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
		-- If specified by the selection rule, jump to the initial selection
		local focusTargetRef = self.selectionRule(self.lastFocused)
		if focusTargetRef ~= nil then
			if focusTargetRef ~= self.ref then
				self.focusManager:moveFocusTo(focusTargetRef)
			end
		else
			local defaultChild = self:__findDefaultChildNode()
			if defaultChild ~= nil then
				defaultChild:focus()
			end
		end
	end
end

function FocusNode:registerChild(ref, focusNode)
	self.focusManager:registerChild(self, ref, focusNode)
end

function FocusNode:deregisterChild(ref)
	self.focusManager:deregisterChild(self, ref)
end

-- FIXME: The separation of responsibility here is really fuzzy! We should find
-- a way to reflect this logic more clearly in the component, so that FocusNode
-- is just the tool it uses to do these things
function FocusNode:subscribeToFocusChange(callback)
	return self.focusManager:subscribeToSelectionChange(function()
		-- Perform focus management operations set up by the FocusNode's owner
		local focused = self.focusManager:isNodeFocused(self)
		callback(focused)

		-- Keep track of the last focused ref so that we can provide it to
		-- self.props.selectionRule whenever we regain focus
		local children = self.focusManager:getChildren(self)
		if not Cryo.isEmpty(children) and focused then
			-- If we're focused and we have children, track which of our
			-- children is in focus
			for ref, child in pairs(children) do
				if self.focusManager:isNodeFocused(child) then
					self.lastFocused = ref
					break
				end
			end

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

return FocusNode