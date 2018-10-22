local FastFlags = require(script.Parent.Parent.FastFlags)

local Scale = {}
Scale.__index = Scale

-- static function
function Scale:execute(Paths, atTime, scaleFactor)
	Paths.UtilityScriptUndoRedo:registerUndo(Paths.ActionScale:new(Paths))
	local keyframes = Paths.DataModelSession:getSelectedKeyframes()
	if FastFlags:isIKModeFlagOn() then
		local newKeyframes = {}
		local cframes = {}
		for time, dataItems in pairs(keyframes) do
			local delta = time > atTime and time - atTime or atTime - time
			local sign = time > atTime and 1 or -1
			local newTime = Paths.DataModelSession:formatTimeValue(atTime + (sign * delta * scaleFactor))
			newKeyframes[newTime] = dataItems
			for part, dataItem in pairs(dataItems) do
				if not cframes[newTime] then
					cframes[newTime] = {}
				end
				cframes[newTime][part] = Paths.DataModelKeyframes.keyframeList[time].Poses[part].CFrame
			end
		end
		Paths.DataModelKeyframes:deleteSelectedPosesAndEmptyKeyframes(false)
		Paths.DataModelKeyframes:getOrCreateKeyframesAtTimes(newKeyframes, cframes)
	else
		Paths.DataModelKeyframes:deleteSelectedPosesAndEmptyKeyframes(false)
		local newKeyframes = {}
		for time, dataItems in pairs(keyframes) do
			local delta = time > atTime and time - atTime or atTime - time
			local sign = time > atTime and 1 or -1
			local newTime = Paths.DataModelSession:formatTimeValue(atTime + (sign * delta * scaleFactor))
			newKeyframes[newTime] = dataItems
		end
		Paths.DataModelKeyframes:getOrCreateKeyframesAtTimes(newKeyframes)
	end
end

function Scale:new(Paths)
	local self = setmetatable({}, Scale)	 
	self.SubAction = Paths.ActionEditClip:new(Paths, {action = Paths.ActionEditClip.ActionType.clipScale})
	self.Paths = Paths
	return self
end

function Scale:undo()
	self.Paths.DataModelSession:selectNone()
	self.SubAction:undo()
end

function Scale:redo()
	self.SubAction:redo()
end

function Scale:getDescription()
	return "Scale"
end

return Scale