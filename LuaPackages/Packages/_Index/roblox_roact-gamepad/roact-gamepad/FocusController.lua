--!nonstrict
-- Manages groups of selectable elements, reacting to selection changes for
-- individual items and triggering events for group selection changes
local Packages = script.Parent.Parent
local Cryo = require(Packages.Cryo)

local createSignal = require(script.Parent.createSignal)
local debugPrint = require(script.Parent.debugPrint)

local InternalApi = require(script.Parent.FocusControllerInternalApi)

local INPUT_TYPES = {
	[Enum.UserInputType.Keyboard] = true,
	[Enum.UserInputType.Gamepad1] = true,
	[Enum.UserInputType.Gamepad2] = true,
	[Enum.UserInputType.Gamepad3] = true,
	[Enum.UserInputType.Gamepad4] = true,
	[Enum.UserInputType.Gamepad5] = true,
	[Enum.UserInputType.Gamepad6] = true,
	[Enum.UserInputType.Gamepad7] = true,
	[Enum.UserInputType.Gamepad8] = true,
}

local FocusControllerInternal = {}
FocusControllerInternal.__index = FocusControllerInternal

function FocusControllerInternal.new()
	local self = setmetatable({
		selectionChangedSignal = createSignal(),

		focusNodeTree = {},
		allNodes = {},

		rootRef = nil,
		engineInterface = nil,
		captureFocusOnInitialize = false,
		focusedLeaf = nil,
	}, FocusControllerInternal)

	return self
end

function FocusControllerInternal:moveFocusTo(ref)
	if self.engineInterface == nil then
		error("FocusController is not connected to a component hierarchy!", 2)
	end

	debugPrint("[FOCUS] Move focus to", ref)
	local node = self.allNodes[ref]

	if node ~= nil and not self:isNodeFocused(node) then
		node:focus()
	end
end

function FocusControllerInternal:moveFocusToNeighbor(neighborProp)
	if self.engineInterface == nil then
		error("FocusController is not connected to a component hierarchy!", 2)
	end

	if self.focusedLeaf ~= nil then
		debugPrint("[FOCUS] Move focus to", neighborProp, "from", self.focusedLeaf.ref)
		local refValue = self.focusedLeaf.ref:getValue()
		if refValue ~= nil and refValue[neighborProp] ~= nil then
			self:setSelection(refValue[neighborProp])
		end
	end
end

function FocusControllerInternal:getSelection()
	return self.engineInterface.getSelection()
end

function FocusControllerInternal:setSelection(ref)
	self.engineInterface.setSelection(ref)
end

function FocusControllerInternal:registerNode(parentNode, refKey, node)
	if parentNode ~= nil then
		debugPrint("[TREE ] Registering child node", refKey)

		local parentEntry = self.focusNodeTree[parentNode] or {}
		parentEntry[refKey] = node
		self.focusNodeTree[parentNode] = parentEntry
	else
		debugPrint("[TREE ] Registering root node", refKey)
		self.rootRef = refKey
	end

	self.allNodes[refKey] = node
end

function FocusControllerInternal:deregisterNode(parentNode, refKey)
	debugPrint("[TREE ] Deregistering child node", refKey)
	if parentNode ~= nil then
		self.focusNodeTree[parentNode][refKey] = nil
	end

	self.allNodes[refKey] = nil
end

function FocusControllerInternal:descendantRemovedRefocus()
	-- If focusedLeaf is nil, then we've lost focus altogether, which likely
	-- means that focus belongs to a different focusable tree. Since that's out
	-- of our control, we can stop here.
	if self.focusedLeaf == nil then
		return
	end

	-- If the currently focused leaf has a nil ref, then its associated host
	-- component has unmounted and we need to refocus.
	if self.focusedLeaf.ref:getValue() == nil then
		debugPrint("[FOCUS] Focused node was removed; refocusing from nearest existing ancestor")

		-- Climb up the focusedLeaf's ancestry until we find a node that still
		-- exists; if we do find one, focus it
		local ancestorNode = self.focusedLeaf.parent
		while ancestorNode ~= nil and self.allNodes[ancestorNode.ref] == nil do
			ancestorNode = ancestorNode.Parent
		end

		if ancestorNode ~= nil then
			ancestorNode:focus()
		end
	end
end

function FocusControllerInternal:descendantAddedRefocus()
	-- If focusedLeaf is nil, then we've lost focus altogether, which likely
	-- means that focus belongs to a different focusable tree. Since that's out
	-- of our control, we can stop here.
	if self.focusedLeaf == nil then
		return
	end

	-- If the current focusedLeaf has children, then descendants must have been
	-- added to it, and we should re-run its focus logic.
	if not Cryo.isEmpty(self:getChildren(self.focusedLeaf)) then
		-- A new descendant was introduced, which means that we need to refocus
		-- the current leaf
		debugPrint("[FOCUS] Currently-focused node is no longer a leaf; refocusing", self.focusedLeaf.ref)
		self.focusedLeaf:focus()
	end
end

function FocusControllerInternal:getChildren(parentNode)
	return self.focusNodeTree[parentNode] or {}
end

function FocusControllerInternal:isNodeFocused(node)
	if self.focusedLeaf == nil then
		return false
	end

	if self.focusedLeaf == node then
		return true
	end

	-- Find out if one of the focused leaf's parents is equal to the provided
	-- node, in which case, it remains in focus
	local parentNode = self.focusedLeaf.parent
	while parentNode ~= nil do
		if parentNode == node then
			return true
		end

		parentNode = parentNode.parent
	end

	return false
end

function FocusControllerInternal:createInputListener(inputState)
	return function(inputObject)
		-- If the state doesn't match up with the one we're listening for,
		-- don't even bother; I'm not sure if this happens with
		-- UserInputService, but it does happen with ContextActionService
		-- and it's easier to be safe
		if inputObject.UserInputState ~= inputState then
			return
		end

		if INPUT_TYPES[inputObject.UserInputType] then
			debugPrint("[EVENT] Input received:",
				inputObject.KeyCode,
				"-",
				inputObject.UserInputState
			)

			local focusChainNode = self.focusedLeaf
			while focusChainNode ~= nil do
				local boundCallback = focusChainNode:getInputBinding(inputState, inputObject.KeyCode)
				if boundCallback ~= nil then
					boundCallback()
					break
				end

				focusChainNode = focusChainNode.parent
			end
		end
	end
end

-- Prints a human-readable version of the node tree.
function FocusControllerInternal:debugPrintTree()
	local function recursePrintTree(node, indent)
		-- Print the current node
		debugPrint(indent, tostring(node.ref))

		-- Recurse through children
		local children = self:getChildren(node)
		for _, childNode in pairs(children) do
			recursePrintTree(childNode, indent .. "	")
		end
	end

	debugPrint("Printing Focus Node Tree:")
	local rootNode = self.allNodes[self.rootRef]
	recursePrintTree(rootNode, "")
end

function FocusControllerInternal:initialize(engineInterface)
	-- If the engineInterface is already set, then this FocusController was
	-- probably also assigned to another tree
	if self.engineInterface ~= nil then
		error("FocusController cannot be initialized more than once; make sure you are not passing it to multiple components")
	end

	self.engineInterface = engineInterface

	-- Create a connection to the GuiService property relevant
	-- to the navigation tree we want to connect
	self.guiServiceConnection = engineInterface.subscribeToSelectionChanged(function()
		if self.rootRef == nil then
			return
		end

		self.focusedLeaf = nil
		local selectedInstance = engineInterface.getSelection()
		local rootRefValue = self.rootRef:getValue()

		-- If selection was lost altogether, we'll have to rely on our other
		-- redirect logic to respond appropriately
		if selectedInstance == nil then
			return
		end

		-- If selection is occurring within this FocusControllerInternal's
		-- hierarchy, we find the currently focused leaf and trigger our
		-- internal signal
		if rootRefValue == selectedInstance or selectedInstance:IsDescendantOf(rootRefValue) then
			debugPrint(
				"[EVENT] Selection changed to",
				selectedInstance,
				"in focus hierarchy beginning at",
				rootRefValue
			)

			-- Find the currently-focused node within our hierarchy and set
			-- self.focusedLeaf accordingly.
			for ref, node in pairs(self.allNodes) do
				if selectedInstance == ref:getValue() then
					self.focusedLeaf = node
					break
				end
			end

			self.selectionChangedSignal:fire()
		end
	end)

	self.inputBeganConnection = engineInterface.subscribeToInputBegan(
		self:createInputListener(Enum.UserInputState.Begin)
	)
	self.inputEndedConnection = engineInterface.subscribeToInputEnded(
		self:createInputListener(Enum.UserInputState.End)
	)

	if self.captureFocusOnInitialize then
		self:captureFocus()
	end
end

function FocusControllerInternal:captureFocus()
	if self.engineInterface == nil then
		self.captureFocusOnInitialize = true
	else
		self.allNodes[self.rootRef]:focus()
	end
end

function FocusControllerInternal:releaseFocus()
	if self.engineInterface ~= nil then
		self.engineInterface.setSelection(nil)
	end
end

function FocusControllerInternal:teardown()
	if self.guiServiceConnection ~= nil then
		self.guiServiceConnection:Disconnect()
	end

	if self.inputBeganConnection ~= nil then
		self.inputBeganConnection:Disconnect()
	end

	if self.inputEndedConnection ~= nil then
		self.inputEndedConnection:Disconnect()
	end

	-- Make sure this controller is restored to its uninitialized state
	self.rootRef = nil
	self.engineInterface = nil
	self.captureFocusOnInitialize = false
	self.focusedLeaf = nil
end

function FocusControllerInternal:subscribeToSelectionChange(callback)
	debugPrint("[TREE ] New subscription to selection change event")
	return self.selectionChangedSignal:subscribe(callback)
end

-- Creates an object with a public API for managing focus. This object can be
-- used in components to direct focus as necessary
function FocusControllerInternal.createPublicApiWrapper()
	local focusControllerInternal = FocusControllerInternal.new()

	return {
		[InternalApi] = focusControllerInternal,
		moveFocusTo = function(...)
			focusControllerInternal:moveFocusTo(...)
		end,
		moveFocusLeft = function()
			focusControllerInternal:moveFocusToNeighbor("NextSelectionLeft")
		end,
		moveFocusRight = function()
			focusControllerInternal:moveFocusToNeighbor("NextSelectionRight")
		end,
		moveFocusUp = function()
			focusControllerInternal:moveFocusToNeighbor("NextSelectionUp")
		end,
		moveFocusDown = function()
			focusControllerInternal:moveFocusToNeighbor("NextSelectionDown")
		end,
		captureFocus = function()
			focusControllerInternal:captureFocus()
		end,
		releaseFocus = function()
			focusControllerInternal:releaseFocus()
		end,
	}
end

return FocusControllerInternal