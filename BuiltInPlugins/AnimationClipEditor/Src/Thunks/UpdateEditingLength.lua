--[[
	Updates the maximum length of the timeline when fully
	zoomed out in the editor.
]]

local Plugin = script.Parent.Parent.Parent
local Constants = require(Plugin.Src.Util.Constants)
local SetScrollZoom = require(Plugin.Src.Actions.SetScrollZoom)
local SetEditingLength = require(Plugin.Src.Actions.SetEditingLength)

local GetFFlagUseTicks = require(Plugin.LuaFlags.GetFFlagUseTicks)

return function(length)
	return function(store)
		local state = store:getState()
		local animationData = state.AnimationData
		if not (animationData and animationData.Metadata) then
			return
		end

		local endTick = animationData.Metadata.EndTick
		length = math.max(length, endTick, GetFFlagUseTicks() and Constants.TICK_FREQUENCY or animationData.Metadata.FrameRate)
		store:dispatch(SetEditingLength(length))
		store:dispatch(SetScrollZoom(0, 0))
	end
end