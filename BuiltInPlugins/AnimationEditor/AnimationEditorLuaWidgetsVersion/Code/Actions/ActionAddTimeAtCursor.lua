-- singleton

local FastFlags = require(script.Parent.Parent.FastFlags)

local AddTimeAtCursor = {}

function AddTimeAtCursor:execute(Paths)
	Paths.GUIScriptPopUpInput:show("Add Time At Cursor", "<time>", function(timeText)
		local addedTime = tonumber(timeText)
		if addedTime ~= nil and addedTime > 0 then
			if Paths.DataModelClip:isLengthOk(Paths.DataModelClip:getLength()+addedTime) then
			        Paths.ActionEditLength:execute(Paths, Paths.DataModelClip:getLength()+addedTime)
			        Paths.DataModelKeyframes:insertTime(Paths.DataModelSession:getScrubberTime(), addedTime)
			end
		end	
	end)
end

return AddTimeAtCursor