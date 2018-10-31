-- singleton

local FastFlags = require(script.Parent.Parent.FastFlags)

local RemoveTimeAtCursor = {}

function RemoveTimeAtCursor:execute(Paths)
	Paths.GUIScriptPopUpInput:show("Remove Time At Cursor", "<time>", function(timeText)
		local removeTime = tonumber(timeText)
		if removeTime ~= nil and removeTime > 0 then
			local maxRemovalTime = Paths.DataModelClip:getLength()-Paths.DataModelSession:getScrubberTime() 
			removeTime = math.min(maxRemovalTime, removeTime)	
			
			Paths.ActionEditLength:execute(Paths, Paths.DataModelClip:getLength()-removeTime)
			Paths.DataModelKeyframes:eraseTime(Paths.DataModelSession:getScrubberTime(), removeTime)
		end
	end)
end

return RemoveTimeAtCursor