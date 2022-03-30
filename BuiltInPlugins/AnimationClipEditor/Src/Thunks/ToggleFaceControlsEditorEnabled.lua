local Plugin = script.Parent.Parent.Parent

local GetFFlagFaceControlsEditorUI = require(Plugin.LuaFlags.GetFFlagFaceControlsEditorUI)

local SetFaceControlsEditorEnabled = require(Plugin.Src.Actions.SetFaceControlsEditorEnabled)
local SetFaceControlsEditorOpenedTimestamp = require(Plugin.Src.Actions.SetFaceControlsEditorOpenedTimestamp)

return function(analytics)
	return function(store)
		local state = store:getState()
		local rootInstance = state.Status.RootInstance
		if not rootInstance then
			return
		end

		local FaceControlsEditorEnabled = not state.Status.FaceControlsEditorEnabled
		store:dispatch(SetFaceControlsEditorEnabled(FaceControlsEditorEnabled))

		if FaceControlsEditorEnabled then
			analytics:report("onFaceControlsEditorEnabled")
			store:dispatch(SetFaceControlsEditorOpenedTimestamp(os.time()))
		else
			analytics:report("onFaceControlsEditorDisabled", os.time() - state.Status.FaceControlsEditorOpenedTimestamp)
			state.Status.FaceControlsEditorOpenedTimestamp = nil
		end			
	end
end
