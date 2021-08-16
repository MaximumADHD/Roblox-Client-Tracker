--[[
	Pastes all events from the clipboard, starting at the frame.
]]

local Plugin = script.Parent.Parent.Parent.Parent
local Cryo = require(Plugin.Packages.Cryo)

local isEmpty = require(Plugin.Src.Util.isEmpty)
local deepCopy = require(Plugin.Src.Util.deepCopy)
local AnimationData = require(Plugin.Src.Util.AnimationData)
local UpdateAnimationData = require(Plugin.Src.Thunks.UpdateAnimationData)

return function(tick)
	return function(store)
		local animationData = store:getState().AnimationData
		local clipboard = store:getState().Status.Clipboard
		if not animationData or not clipboard then
			return
		end

		local newData = deepCopy(animationData)
		local events = newData.Events
		if events == nil then
			return
		end

		local frames = Cryo.Dictionary.keys(clipboard)
		table.sort(frames)
		local lowestFrame = frames[1]

		if not isEmpty(clipboard) then
			for keyframe, data in pairs(clipboard) do
				local insertFrame = tick + (keyframe - lowestFrame)
				AnimationData.deleteEvents(events, insertFrame)
				for name, value in pairs(data) do
					AnimationData.addEvent(events, insertFrame, name, value)
				end
			end
			store:dispatch(UpdateAnimationData(newData))
		end
	end
end