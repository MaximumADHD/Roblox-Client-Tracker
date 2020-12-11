--[[
	Updates the maximum length of the timeline when fully
	zoomed out in the editor.
]]

local Plugin = script.Parent.Parent.Parent
local Constants = require(Plugin.SrcDeprecated.Util.Constants)
local SetScrollZoom = require(Plugin.SrcDeprecated.Actions.SetScrollZoom)
local SetEditingLength = require(Plugin.SrcDeprecated.Actions.SetEditingLength)

local UseCustomFPS = require(Plugin.LuaFlags.GetFFlagAnimEditorUseCustomFPS)

return function(length)
	return function(store)
		local state = store:getState()
		local animationData = state.AnimationData
		if not (animationData and animationData.Metadata) then
			return
		end

		local endFrame = animationData.Metadata.EndFrame
		length = math.max(length, endFrame, UseCustomFPS() and animationData.Metadata.FrameRate or Constants.DEFAULT_FRAMERATE)
		store:dispatch(SetEditingLength(length))
		store:dispatch(SetScrollZoom(0, 0))
	end
end