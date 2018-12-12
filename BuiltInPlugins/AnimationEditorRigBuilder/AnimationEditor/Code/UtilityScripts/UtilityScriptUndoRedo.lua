-- singleton
local FastFlags = require(script.Parent.Parent.FastFlags)

local UndoRedo = {}

UndoRedo.undoMemory = {}
UndoRedo.redoMemory = {}
UndoRedo.DefaultContext = "Default"
UndoRedo.AnimationEventContext = "AnimationEvents"
UndoRedo.CurrentContext = "Default"
UndoRedo.ChangeEvent = nil
UndoRedo.Connections = nil

function UndoRedo:init(Paths)
	self.Paths = Paths
	self.ChangeEvent = Paths.UtilityScriptEvent:new()
	if FastFlags:isAnimationEventsOn() then
		self:setToDefaultContext()
	end
end

function UndoRedo:terminate()		
	self.ChangeEvent = nil
	self.Paths = nil
end

function UndoRedo:initPostGUICreate()
	self.Connections = self.Paths.UtilityScriptConnections:new(self.Paths)
	UndoRedo.Connections:add(self.Paths.InputKeyboard.KeyPressedEvent:connect(function(theKey)
		if self.Paths.InputKeyboard:isKeyCtrlOrCmdDown() and (not FastFlags:isIKModeFlagOn() or not self.Paths.DataModelPartManipulator:isCurrentlyManipulating()) then		
			if Enum.KeyCode.Z == theKey then
				UndoRedo:undo()
			elseif Enum.KeyCode.Y == theKey then
				UndoRedo:redo()			
			end
		end
	end))
end

function UndoRedo:terminatePreGUIDestroy()
	self.Connections:terminate()
	self.Connections = nil
end

local function undoMemoryLength(self)
	return #self.undoMemory[self.CurrentContext]
end

local function redoMemoryLength(self)
	return #self.redoMemory[self.CurrentContext]
end

local function getNextUndo(self)
	if FastFlags:isAnimationEventsOn() then
		return self.undoMemory[self.CurrentContext][undoMemoryLength(self)]
	else
		return self.undoMemory[#self.undoMemory]
	end
end

local function getNextRedo(self)
	if FastFlags:isAnimationEventsOn() then
		return self.redoMemory[self.CurrentContext][redoMemoryLength(self)]
	else
		return self.redoMemory[#self.redoMemory]
	end
end

function UndoRedo:changeUndoRedoContext(context)
	self.CurrentContext = context
	if self.undoMemory[self.CurrentContext] == nil then
		self.undoMemory[self.CurrentContext] = {}
	end
	if self.redoMemory[self.CurrentContext] == nil then
		self.redoMemory[self.CurrentContext] = {}
	end
end

function UndoRedo:setToDefaultContext()
	self:changeUndoRedoContext(self.DefaultContext)
end

function UndoRedo:canUndo()
	if FastFlags:isAnimationEventsOn() then
		return undoMemoryLength(self) > 0
	else
		return #self.undoMemory > 0
	end
end

function UndoRedo:canRedo()
	if FastFlags:isAnimationEventsOn() then
		return redoMemoryLength(self) > 0
	else
		return #self.redoMemory > 0
	end
end

function UndoRedo:undo()
	if self:canUndo() then 
		local undoStep = getNextUndo(self)
		if FastFlags:isAnimationEventsOn() then	
			table.remove(self.undoMemory[self.CurrentContext], undoMemoryLength(self))
		else
			table.remove(self.undoMemory, #self.undoMemory)
		end
		
		undoStep:undo()
		if FastFlags:isAnimationEventsOn() then
			self.redoMemory[self.CurrentContext][redoMemoryLength(self) + 1] = undoStep
		else
			self.redoMemory[#self.redoMemory+1] = undoStep
		end

		self.ChangeEvent:fire()
	end
end

function UndoRedo:redo()
	if  self:canRedo() then
		local redoStep = getNextRedo(self)
		if FastFlags:isAnimationEventsOn() then
			table.remove(self.redoMemory[self.CurrentContext], redoMemoryLength(self))
		else
			table.remove(self.redoMemory, #self.redoMemory)
		end
				
		redoStep:redo()
		if FastFlags:isAnimationEventsOn() then
			self.undoMemory[self.CurrentContext][undoMemoryLength(self) + 1] = redoStep
		else
			self.undoMemory[#self.undoMemory+1] = redoStep
		end
		
		self.ChangeEvent:fire()
	end
end

function UndoRedo:registerUndo(action)
	if FastFlags:isAnimationEventsOn() then
		self.redoMemory[self.CurrentContext] = {}
		table.insert(self.undoMemory[self.CurrentContext], action)
	else
		self.redoMemory = {}
		table.insert(self.undoMemory, action)
	end
	self.ChangeEvent:fire()
end

function UndoRedo:getNextUndoDescription()
	return getNextUndo(self) and getNextUndo(self):getDescription() or ""
end

function UndoRedo:getNextRedoDescription()
	return getNextRedo(self) and getNextRedo(self):getDescription() or ""
end

function UndoRedo:undoAllInContext()
	local index, undoStep = next(self.undoMemory[self.CurrentContext])
	if undoStep then
		undoStep:undo()
	end
	self:resetContext()
end

function UndoRedo:resetContext()
	self.undoMemory[self.CurrentContext] = {}
	self.redoMemory[self.CurrentContext] = {}
	self.ChangeEvent:fire()
end

function UndoRedo:reset()
	self.undoMemory = {}
	self.redoMemory = {}
	if FastFlags:isAnimationEventsOn() then
		self:setToDefaultContext()
	end
	self.ChangeEvent:fire()
end

return UndoRedo