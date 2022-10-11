local Plugin = script.Parent.Parent.Parent
local GetFFlagFaceControlsEditorUI = require(Plugin.LuaFlags.GetFFlagFaceControlsEditorUI)

local SetShowFaceControlsEditorPanel = require(Plugin.Src.Actions.SetShowFaceControlsEditorPanel)

return function()
	return function(store)
		local state = store:getState()

		local rootInstance = state.Status.RootInstance
		if not rootInstance then
			return
		end

		if GetFFlagFaceControlsEditorUI() then
			local showFaceControlsEditorPanel = not state.Status.ShowFaceControlsEditorPanel
			store:dispatch(SetShowFaceControlsEditorPanel(showFaceControlsEditorPanel))
		end
	end
end
