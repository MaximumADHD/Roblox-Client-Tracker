local SelectionInfo = {}
SelectionInfo.__index = SelectionInfo

function SelectionInfo.new(draggerContext, selection)
	assert(#selection == 1, "Expected selection to have length 1.")
	return setmetatable({
		_planeCFrame = selection[1].planeCFrame,
		_draggerContext = draggerContext,
	}, SelectionInfo)
end

function SelectionInfo:isEmpty()
	return false
end

function SelectionInfo:getBoundingBox()
	if self._draggerContext:shouldUseLocalSpace() then
		return self._planeCFrame, Vector3.new(), Vector3.new()
	else
		return CFrame.new(self._planeCFrame.Position), Vector3.new(), Vector3.new()
	end
end

function SelectionInfo:getLocalBoundingBox()
	return self._planeCFrame, Vector3.new(), Vector3.new()
end

function SelectionInfo:doesContainItem(item)
	return true
end

function SelectionInfo:isDynamic()
	return false
end

return SelectionInfo
