-- singleton

local FastFlags = require(script.Parent.Parent.FastFlags)

local AddTimeAtCursor = {}

function AddTimeAtCursor:execute(Paths)
	Paths.GUIScriptPopUpInput:show("Add Time At Cursor", "<time>", function(timeText)
		local addedTime = tonumber(timeText)
		if addedTime ~= nil and addedTime > 0 then
			if not FastFlags:isAnimationEditorMaxLengthRestrictionFlagOn() or Paths.DataModelClip:isLengthOk(Paths.DataModelClip:getLength()+addedTime) then
			        Paths.ActionEditLength:execute(Paths, Paths.DataModelClip:getLength()+addedTime)
			        Paths.DataModelKeyframes:insertTime(Paths.DataModelSession:getScrubberTime(), addedTime)
			        if not FastFlags:isScrubbingPlayingMatchFlagOn() then
				        Paths.DataModelRig:updateRigPosition()
			        end
			end
		end	
	end)
end

return AddTimeAtCursor