--!strict
-- Manages groups of selectable elements, reacting to selection changes for
-- individual items and triggering events for group selection changes
local createSignal = require(script.Parent.createSignal)

local FocusManager = {}
FocusManager.__index = FocusManager

local DEBUG = false
local function debugPrint(...)
	if DEBUG then
		print(...)
	end
end

function FocusManager.new(ref, rootNode)
	local self = setmetatable({
		selectionChangedSignal = createSignal(),

		focusNodeTree = {
			[rootNode] = {},
		},
		allNodes = {
			[ref] = rootNode,
		},

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

	if node ~= nil then
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

function FocusManager:registerChild(parentNode, refKey, childNode)
	debugPrint("[TREE]  Registering child node", refKey)
	local parentEntry = self.focusNodeTree[parentNode] or {}
	parentEntry[refKey] = childNode
	self.focusNodeTree[parentNode] = parentEntry
	self.allNodes[refKey] = childNode
end

function FocusManager:deregisterChild(parentNode, refKey)
	debugPrint("[TREE]  Deregistering child node", refKey)
	self.focusNodeTree[parentNode][refKey] = nil
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
	return self.selectionChangedSignal:subscribe(callback)
end

return FocusManager