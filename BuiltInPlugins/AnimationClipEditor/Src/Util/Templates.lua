--[[
	Templates used to create AnimationData elements.
]]

local Plugin = script.Parent.Parent.Parent
local Constants = require(Plugin.Src.Util.Constants)

local GetFFlagChannelAnimations = require(Plugin.LuaFlags.GetFFlagChannelAnimations)

local Templates = {}

function Templates.animationData()
	return {
		-- TODO: AVBURST-327 Update placeholder Metadata values
		-- when we know how these values will work for Animations
		-- and what their true defaults should be
		Metadata = {
			Name = "",
			StartTick = 0,
			EndTick = 0,
			Looping = false,
			Priority = Enum.AnimationPriority.Core,
			FrameRate = 30,
		},
		Events = {
			NamedKeyframes = {},
			Keyframes = {},
			Data = {},
		},
		Instances = {
			Root = {
				Type = nil,
				Tracks = {},
			},
		},
	}
end

function Templates.instance()
	return {
		Type = nil,
		Tracks = {},
	}
end

function Templates.track(trackType)
	return {
		Type = trackType,
		IsCurveTrack = false,
		-- Keyframes and Data are now optional
		Keyframes = not GetFFlagChannelAnimations() and {} or nil,
		Data = not GetFFlagChannelAnimations() and {} or nil,
	}
end

function Templates.trackListEntry(trackType)
	return {
		Name = "",
		Depth = 0,
		Expanded = false,
		Selected = false,
		Type = GetFFlagChannelAnimations() and trackType or Constants.TRACK_TYPES.CFrame,
	}
end

function Templates.keyframe()
	return {
		Value = nil,
		EasingStyle = not GetFFlagChannelAnimations() and Enum.PoseEasingStyle.Linear or nil,
		EasingDirection = not GetFFlagChannelAnimations() and Enum.PoseEasingDirection.In or nil,
		InterpolationMode = nil,
		LeftSlope = nil,
		RightSlope = nil,
	}
end

return Templates