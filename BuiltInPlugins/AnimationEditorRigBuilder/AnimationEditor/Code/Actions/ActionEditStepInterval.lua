-- singleton
local FastFlags = require(script.Parent.Parent.FastFlags)

local EditStepInterval = {}

function EditStepInterval:execute(Paths)
	local placeHolderText = "<studs>"
	if Paths.DataModelPartManipulator.IsRotating then
		placeHolderText = "<degrees>"
	end
	Paths.GUIScriptPopUpInput:show("Interval", placeHolderText, function(input)
		input = tonumber(input)
		if input ~= nil and input > 0 then
			if Paths.DataModelPartManipulator.IsRotating then
				Paths.DataModelPartManipulator.rotateStep = input
			else
				Paths.DataModelPartManipulator.moveStep = input
			end
			Paths.GUIScriptPartManipulator:updateStepDisplay()
		end
	end)
end

return EditStepInterval
