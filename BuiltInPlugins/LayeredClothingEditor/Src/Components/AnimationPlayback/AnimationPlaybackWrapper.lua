--[[
	Play Animation on previwing avatar

	Required Props:
		boolean IsPlaying: if animation is playing or pausing, which is provided via store
		number Playhead: position of the current anim, which is provided via store
		number SliderPlayhead: position of the current anim by slider, which is provided via store
		callback SetPlayhead: function to set the playhead, which is provided via mapDispatchToProps.
		callback SetIsPlaying: function to set is animation is playing, which is provided via mapDispatchToProps.
		callback SetTrackLength: function to set animation track's length, which is provided via mapDispatchToProps.
	Optional Props:
		number AnimationId: animation id that is selecting now, which is provided via store
		table EditingItemContext: An EditingItemContext, which is provided via withContext.
		table PreviewContext: A Preview ContextItem, which is provided via withContext.
]]

local Plugin = script.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)
local AvatarToolsShared = require(Plugin.Packages.AvatarToolsShared)

local AccessoryAndBodyToolSharedUtil = AvatarToolsShared.Util.AccessoryAndBodyToolShared
local PreviewingInfo = AccessoryAndBodyToolSharedUtil.PreviewingInfo

local Components = AvatarToolsShared.Components
local PreviewAnimationPlayback = Components.PreviewAnimationPlayback

local EditingItemContext = AvatarToolsShared.Contexts.EditingItemContext
local PreviewContext = AvatarToolsShared.Contexts.PreviewContext

local Framework = require(Plugin.Packages.Framework)
local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext

local AnimationPlaybackWrapper = Roact.PureComponent:extend("AnimationPlaybackWrapper")

local SetPlayhead = require(Plugin.Src.Actions.SetPlayhead)
local SetTrackLength = require(Plugin.Src.Actions.SetTrackLength)
local SetIsPlaying = require(Plugin.Src.Actions.SetIsPlaying)

local Util = Framework.Util
local Typecheck = Util.Typecheck
Typecheck.wrap(AnimationPlaybackWrapper, script)

function AnimationPlaybackWrapper:render()
	local props = self.props

	local animationId = props.AnimationId
	local isPlaying = props.IsPlaying
	local setPlayhead = props.SetPlayhead
	local setTrackLength = props.SetTrackLength
	local setIsPlaying = props.SetIsPlaying
	local playheadOverride = props.SliderPlayhead
	local previewAvatars = props.PreviewContext:getAvatars()

	return Roact.createElement(PreviewAnimationPlayback, {
		AnimationId = animationId,
		IsPlayingOverride = isPlaying,
		PreviewAvatars = previewAvatars,
		PlayheadOverride = playheadOverride,
		OnPlayheadChanged = setPlayhead,
		OnIsPlayingChanged = setIsPlaying,
		OnTrackLengthChanged = setTrackLength,
	})
end

AnimationPlaybackWrapper = withContext({
	EditingItemContext = EditingItemContext,
	PreviewContext = PreviewContext,
})(AnimationPlaybackWrapper)

local function mapStateToProps(state, props)
	local animation = state.animation
	return {
		AnimationId = PreviewingInfo.getPreviewingAnimationId(state),
		IsPlaying = animation.IsPlaying,
		Playhead = animation.Playhead,
		SliderPlayhead = animation.SliderPlayhead,
	}
end

local function mapDispatchToProps(dispatch)
	return {
		SetPlayhead = function(playhead)
			dispatch(SetPlayhead(playhead))
		end,
		SetTrackLength = function(track)
			dispatch(SetTrackLength(track))
		end,
		SetIsPlaying = function(isPlaying)
			dispatch(SetIsPlaying(isPlaying))
		end,
	}
end

return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(AnimationPlaybackWrapper)