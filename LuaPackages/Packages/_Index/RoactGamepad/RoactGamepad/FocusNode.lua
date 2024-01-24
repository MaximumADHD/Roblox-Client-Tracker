--!nonstrict
-- Manages groups of selectable elements, reacting to selection changes for
-- individual items and triggering events for group selection changes
local Packages = script.Parent.Parent
local Cryo = require(Packages.Cryo)

local InternalApi = require(script.Parent.FocusControllerInternalApi)
local inputBindingsEqual = require(script.Parent.inputBindingsEqual)
local debugPrint = require(script.Parent.debugPrint)
local Config = require(script.Parent.Config)

local DEFAULT_TIMEOUT = 0.5

local FocusNode = {}
FocusNode.__index = FocusNode

function FocusNode.new(navProps, ref)
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
		ref = ref,

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
		-- local ref, arbitraryChild = next(children)
		for ref, arbitraryChild in pairs(children) do
			if ref:getValue() ~= nil then
				return arbitraryChild
			end
		end

		return nil
	end
end

function FocusNode:updateNavProps(navProps)
	local restorePreviousChildFocus = false
	if navProps.restorePreviousChildFocus ~= nil then
		restorePreviousChildFocus = navProps.restorePreviousChildFocus
	end

	local oldInputBindings = self.inputBindings

	self.defaultChildRef = navProps.defaultChild
	self.restorePreviousChildFocus = restorePreviousChildFocus
	self.inputBindings = navProps.inputBindings or {}

	local focusController = self:__getFocusControllerInternal()
	if focusController:isNodeFocused(self) and not inputBindingsEqual(oldInputBindings, self.inputBindings) then
		focusController:updateInputBindings()
	end
end

function FocusNode:focus()
	if not Config.Enabled then
		return
	end

	local focusController = self:__getFocusControllerInternal()
	if not focusController:isInitialized() then
		return -- The focus controller may have been torn down after delay
	end
	-- Focusing may take time if we have a default child that does not yet exist
	-- If the focus is moved to some other element during the process of focusing
	-- this element, we will need to abort this.
	focusController:setInProgressFocus(self)
	local children = focusController:getChildren(self)
	if Cryo.isEmpty(children) then
		focusController:setSelection(self.ref:getValue())
	else
		local now = os.clock()
		local isDefaultValid = self.defaultChildRef ~= nil
			and focusController.allNodes[self.defaultChildRef] ~= nil
			and self.defaultChildRef:getValue() ~= nil
		local hasTimeRemaining = self.timeout == nil or now < self.timeout
		-- If we prefer previous focus, make sure it's valid and move focus to it
		if self.restorePreviousChildFocus and self.lastFocused ~= nil and self.lastFocused:getValue() then
			debugPrint("[FOCUS] Restore previous focus:", self.lastFocused)
			focusController:moveFocusTo(self.lastFocused)
		-- If we have a specified default ref, or we're still waiting for one, try to focus it or delay
		elseif self.defaultChildRef and (hasTimeRemaining or isDefaultValid) then
			-- If the default ref is valid and in the foucs tree, select it
			if isDefaultValid then
				debugPrint("[FOCUS] Found valid default child", self.defaultChildRef, "for", self.ref)
				self.timeout = nil
				focusController:moveFocusTo(self.defaultChildRef)
			-- Otherwise we need to try to wait until the provided ref has a valid value
			else
				if self.timeout == nil then
					debugPrint("[FOCUS] Default child specified is not valid. Wait for it to be assigned...")
					self.timeout = now + DEFAULT_TIMEOUT
				end
				task.delay(0, function()
					if focusController:isInProgressFocus(self) then
						self:focus()
					end
				end)
			end
		-- If there's no previous selection to restore and no default child to focus, just focus whatever we can
		else
			if self.timeout ~= nil then
				debugPrint("[FOCUS] Timeout for default child of", self.ref)
				self.timeout = nil
			end
			local defaultChild = self:__findDefaultChildNode()
			if defaultChild ~= nil then
				debugPrint("[FOCUS] No default, use fallback logic to focus", defaultChild.ref)
				defaultChild:focus()
			else
				-- Set ourselves as the focusedLeaf so that when our descendants are added we will refocus on them.
				focusController:setFocusedLeaf(self)
				focusController:setInProgressFocus(nil)
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
