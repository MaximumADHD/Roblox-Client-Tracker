-- singleton
local FastFlags = require(script.Parent.Parent.FastFlags)

local UndoRedo = {}

UndoRedo.undoMemory = {}
UndoRedo.redoMemory = {}
UndoRedo.ChangeEvent = nil
UndoRedo.Connections = nil

function UndoRedo:init(Paths)
	self.Paths = Paths
	self.ChangeEvent = Paths.UtilityScriptEvent:new()		
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

local function getNextUndo(self)
	return self.undoMemory[#self.undoMemory]
end

local function getNextRedo(self)
	return self.redoMemory[#self.redoMemory]
end

function UndoRedo:canUndo()
	return #self.undoMemory > 0
end

function UndoRedo:canRedo()
	return #self.redoMemory > 0
end

function UndoRedo:undo()
	if self:canUndo() then 
		local undoStep = getNextUndo(self)	
		table.remove(self.undoMemory, #self.undoMemory)
		
		undoStep:undo()		
		self.redoMemory[#self.redoMemory+1] = undoStep
		
		self.ChangeEvent:fire()
	end
end

function UndoRedo:redo()
	if  self:canRedo() then
		local redoStep = getNextRedo(self)
		table.remove(self.redoMemory, #self.redoMemory)
				
		redoStep:redo()				
		self.undoMemory[#self.undoMemory+1] = redoStep
		
		self.ChangeEvent:fire()
	end
end

function UndoRedo:registerUndo(action)	
	self.redoMemory = {}
	table.insert(self.undoMemory, action)
	self.ChangeEvent:fire()
end

function UndoRedo:getNextUndoDescription()
	return getNextUndo(self) and getNextUndo(self):getDescription() or ""
end

function UndoRedo:getNextRedoDescription()
	return getNextRedo(self) and getNextRedo(self):getDescription() or ""
end

function UndoRedo:reset()	
	self.undoMemory = {}
	self.redoMemory = {}
	self.ChangeEvent:fire()
end

return UndoRedo