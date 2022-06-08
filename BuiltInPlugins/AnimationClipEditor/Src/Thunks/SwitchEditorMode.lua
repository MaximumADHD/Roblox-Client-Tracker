--!strict
--[[
	Used when switching between the DopeSheet and the CurveEditor.

	It also reports how much time the user spent in the previous mode.
]]

local Plugin = script.Parent.Parent.Parent
local SetEditorMode = require(Plugin.Src.Actions.SetEditorMode)

local Types = require(Plugin.Src.Types)

return function(newMode: string, analytics: any): (Types.Store) -> ()
	return function(store: {[string]: any}): ()
		local state = store:getState()

		local oldMode = state.Status.EditorMode
		-- SetEditorMode can be called to force a switch to DopeSheet mode
		-- (for instance when loading an animation). Ignore switches that
		-- don't change the mode.
		if oldMode ~= newMode then
			local timeOpened = state.Status.EditorModeSwitchTime
			-- timeOpened will be nil when we start the ACE. We set the Editor Mode
			-- at that time, however we don't want to report analytics in that case
			if timeOpened then
				local duration = os.time() - timeOpened
				analytics:report("onEditorModeSwitch", oldMode, newMode, duration)
			end
		end
		store:dispatch(SetEditorMode(newMode))
	end
end
