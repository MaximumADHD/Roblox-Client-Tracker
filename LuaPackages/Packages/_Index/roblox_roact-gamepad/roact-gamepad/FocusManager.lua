--!nonstrict
-- Manages groups of selectable elements, reacting to selection changes for
-- individual items and triggering events for group selection changes
local createSignal = require(script.Parent.createSignal)
local debugPrint = require(script.Parent.debugPrint)

local FocusManager = {}
FocusManager.__index = FocusManager

function FocusManager.new()
	local self = setmetatable({
		selectionChangedSignal = createSignal(),

		focusNodeTree = {},
		allNodes = {},

		engineInterface = nil,
		focusedLeaf = nil,
	}, FocusManager)

	return self
end

function FocusManager:getController()
	return {
		moveFocusTo = function(...)
			self:moveFocusTo(...)
		end,
		moveFocusLeft = function()
			self:moveFocusToNeighbor("NextSelectionLeft")
		end,
		moveFocusRight = function()
			self:moveFocusToNeighbor("NextSelectionRight")
		end,
		moveFocusUp = function()
			self:moveFocusToNeighbor("NextSelectionUp")
		end,
		moveFocusDown = function()
			self:moveFocusToNeighbor("NextSelectionDown")
		end,
	}
end

function FocusManager:moveFocusTo(ref)
	debugPrint("[FOCUS] Move focus to", ref)
	local node = self.allNodes[ref]

	if node ~= nil and not self:isNodeFocused(node) then
		node:focus()
	end
end

function FocusManager:moveFocusToNeighbor(neighborProp)
	if self.focusedLeaf ~= nil then
		debugPrint("[FOCUS] Move focus to", neighborProp, "from", self.focusedLeaf.ref)
		local refValue = self.focusedLeaf.ref:getValue()
		if refValue ~= nil and refValue[neighborProp] ~= nil then
			self:setSelection(refValue[neighborProp])
		end
	end
end

function FocusManager:getSelection()
	return self.engineInterface.getSelection()
end

function FocusManager:setSelection(ref)
	self.engineInterface.setSelection(ref)
end

function FocusManager:registerNode(parentNode, refKey, node)
	if parentNode ~= nil then
		debugPrint("[TREE ] Registering child node", refKey)
		local parentEntry = self.focusNodeTree[parentNode] or {}
		parentEntry[refKey] = node
		self.focusNodeTree[parentNode] = parentEntry
	else
		debugPrint("[TREE ] Registering root node", refKey)
	end

	self.allNodes[refKey] = node
end

function FocusManager:deregisterNode(parentNode, refKey)
	debugPrint("[TREE ] Deregistering child node", refKey)
	if parentNode ~= nil then
		self.focusNodeTree[parentNode][refKey] = nil
	end

	self.allNodes[refKey] = nil
end

function FocusManager:getChildren(parentNode)
	return self.focusNodeTree[parentNode] or {}
end

function FocusManager:isNodeFocused(node)
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

function FocusManager:initialize(engineInterface)
	self.engineInterface = engineInterface

	-- Create a connection to the GuiService property relevant
	-- to the navigation tree we want to connect
	self.guiServiceConnection = engineInterface.subscribeToSelectionChanged(function()
		local selectedInstance = engineInterface.getSelection()
		debugPrint("[EVENT] Selection changed to", selectedInstance)

		-- find the currently-focused node
		self.focusedLeaf = nil
		for ref, node in pairs(self.allNodes) do
			if selectedInstance == ref:getValue() then
				self.focusedLeaf = node
				break
			end
		end
		-- TODO: What if we never found one? Should we nil out focusedLeaf
		-- before searching?

		self.selectionChangedSignal:fire()
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
end

function FocusManager:teardown()
	if self.guiServiceConnection ~= nil then
		self.guiServiceConnection:Disconnect()
	end

	if self.userInputServiceConnection ~= nil then
		self.userInputServiceConnection:Disconnect()
	end
end

function FocusManager:subscribeToSelectionChange(callback)
	debugPrint("[TREE ] New subscription to selection change event")
	return self.selectionChangedSignal:subscribe(callback)
end

return FocusManager