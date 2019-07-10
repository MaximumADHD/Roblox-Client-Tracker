local MoveScrubber = {}
MoveScrubber.__index = MoveScrubber

function MoveScrubber:execute(Paths, newScrubberTime, oldScrubberTime)
	Paths.UtilityScriptUndoRedo:registerUndo(MoveScrubber:new(Paths, newScrubberTime, oldScrubberTime))
end

function MoveScrubber:new(Paths, newScrubberTime, oldScrubberTime)
	local self = setmetatable({}, MoveScrubber)
	self.Paths = Paths
	self.oldTime = nil ~= oldScrubberTime and oldScrubberTime or Paths.DataModelSession:getScrubberTime()
	self.newTime = newScrubberTime
	self:redo()
	return self
end

function MoveScrubber:undo()
	self.Paths.DataModelSession:setScrubberTime(self.oldTime)
end

function MoveScrubber:redo()
	self.Paths.DataModelSession:setScrubberTime(self.newTime)
end

function MoveScrubber:getDescription()
	return "Move Scrub Bar"
end

return MoveScrubber
