--!strict
--[[
	Determines the visibility of keyframe reduction dialog box.

	Parameters:
		string showMode = How to display (or hide) the dialog box. See
			Constants.REDUCE_KEYFRAMES_DIALOG_MODE
]]

local Action = require(script.Parent.Action)
local Constants = require(script.Parent.Parent.Util.Constants)

type Action = {
	reduceKeyframesDialogMode: string
}

return Action(script.Name, function(reduceKeyframesDialogMode: string?): Action
	return {
		reduceKeyframesDialogMode = reduceKeyframesDialogMode or Constants.REDUCE_KEYFRAMES_DIALOG_MODE.Hidden,
	}
end)
