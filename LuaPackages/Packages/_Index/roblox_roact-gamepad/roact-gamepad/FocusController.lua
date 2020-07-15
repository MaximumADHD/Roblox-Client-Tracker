--!nonstrict
-- Manages groups of selectable elements, reacting to selection changes for
-- individual items and triggering events for group selection changes
local Packages = script.Parent.Parent
local Cryo = require(Packages.Cryo)

local createSignal = require(script.Parent.createSignal)
local debugPrint = require(script.Parent.debugPrint)

local InternalApi = require(script.Parent.FocusControllerInternalApi)

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
	local shouldRefocus = false
	if parentNode ~= nil then
		debugPrint("[TREE ] Registering child node", refKey)

		if self:isNodeFocused(parentNode) and Cryo.isEmpty(self:getChildren(parentNode)) then
			shouldRefocus = true
		end

		local parentEntry = self.focusNodeTree[parentNode] or {}
		parentEntry[refKey] = node
		self.focusNodeTree[parentNode] = parentEntry
	else
		debugPrint("[TREE ] Registering root node", refKey)
		self.rootRef = refKey
	end

	self.allNodes[refKey] = node

	if shouldRefocus then
		debugPrint("[FOCUS] Currently-focused node is no longer a leaf; refocusing", refKey)
		parentNode:focus()
	end
end

function FocusControllerInternal:deregisterNode(parentNode, refKey)
	debugPrint("[TREE ] Deregistering child node", refKey)
	if parentNode ~= nil then
		self.focusNodeTree[parentNode][refKey] = nil
	end

	local nodeToRemove = self.allNodes[refKey]
	self.allNodes[refKey] = nil

	if self:isNodeFocused(nodeToRemove) then
		debugPrint("[FOCUS] Focused node is being removed; refocusing from parent")
		-- If this node is being removed, move the focus up to the parent
		if parentNode ~= nil then
			parentNode:focus()
		end
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

function FocusControllerInternal:initialize(engineInterface)
	-- If the engineInterface is already set, then this FocusController was
	-- probably also assigned to another tree
	if self.engineInterface ~= nil then
		error("FocusController cannot be initialized more than once; make sure you are not passing it to more than one component")
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

		-- If selection is occurring within this FocusControllerInternal's hierarchy, we
		-- find the currently focused leaf and trigger our internal signal
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

	self.userInputServiceConnection = engineInterface.subscribeToInputBegan(function(inputObject)
		if inputObject.UserInputType == Enum.UserInputType.Gamepad1
			and inputObject.UserInputState == Enum.UserInputState.Begin
		then
			debugPrint("[EVENT] Input received: " .. tostring(inputObject.KeyCode))
			local focusChainNode = self.focusedLeaf
			while focusChainNode ~= nil do
				local boundCallback = focusChainNode:getInputBinding(inputObject.KeyCode)
				if boundCallback ~= nil then
					boundCallback()
					break
				end

				focusChainNode = focusChainNode.parent
			end
		end
	end)

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

function FocusControllerInternal:teardown()
	if self.guiServiceConnection ~= nil then
		self.guiServiceConnection:Disconnect()
	end

	if self.userInputServiceConnection ~= nil then
		self.userInputServiceConnection:Disconnect()
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
	}
end

return FocusControllerInternal