local Plugin = script.Parent.Parent.Parent

local wrapStrictTable = require(Plugin.Core.Util.wrapStrictTable)

local Images = {}

Images.ROUNDED_BACKGROUND_IMAGE = "rbxasset://textures/StudioToolbox/RoundedBackground.png"
Images.ROUNDED_BORDER_IMAGE = "rbxasset://textures/StudioToolbox/RoundedBorder.png"

Images.ARROW_DOWN_ICON = "rbxasset://textures/StudioToolbox/ArrowDownIconWhite.png"

Images.SEARCH_ICON = "rbxasset://textures/StudioToolbox/Search.png"
Images.CLEAR_ICON_HOVER = "rbxasset://textures/StudioToolbox/ClearHover.png"
Images.CLEAR_ICON = "rbxasset://textures/StudioToolbox/Clear.png"

Images.SCROLLBAR_TOP_IMAGE = "rbxasset://textures/StudioToolbox/ScrollBarTop.png"
Images.SCROLLBAR_MIDDLE_IMAGE = "rbxasset://textures/StudioToolbox/ScrollBarMiddle.png"
Images.SCROLLBAR_BOTTOM_IMAGE = "rbxasset://textures/StudioToolbox/ScrollBarBottom.png"

Images.THUMB_UP_GREY = "rbxasset://textures/StudioToolbox/Voting/thumbup.png"
Images.THUMB_DOWN_GREY = "rbxasset://textures/StudioToolbox/Voting/thumb-down.png"
Images.THUMB_UP_GREEN = "rbxasset://textures/StudioToolbox/Voting/thumbs-up-filled.png"
Images.THUMB_DOWN_RED = "rbxasset://textures/StudioToolbox/Voting/thumbs-down-filled.png"

Images.PLAY_AUDIO = "rbxasset://textures/StudioToolbox/AudioPreview/play.png"
Images.PLAY_AUDIO_HOVERED = "rbxasset://textures/StudioToolbox/AudioPreview/play_hover.png"
Images.PAUSE_AUDIO = "rbxasset://textures/StudioToolbox/AudioPreview/pause.png"
Images.PAUSE_AUDIO_HOVERED = "rbxasset://textures/StudioToolbox/AudioPreview/pause_hover.png"
Images.LIGHT_PLAY_AUDIO = "rbxasset://textures/StudioToolbox/AudioPreview/light_play.png"
Images.LIGHT_PLAY_AUDIO_HOVERED = "rbxasset://textures/StudioToolbox/AudioPreview/light_play_hover.png"
Images.LIGHT_PAUSE_AUDIO = "rbxasset://textures/StudioToolbox/AudioPreview/light_pause.png"
Images.LIGHT_PAUSE_AUDIO_HOVERED = "rbxasset://textures/StudioToolbox/AudioPreview/light_pause_hover.png"

Images.DROP_SHADOW_IMAGE = "rbxasset://textures/StudioUIEditor/resizeHandleDropShadow.png"

Images.NO_BACKGROUND_ICON = "rbxasset://textures/StudioToolbox/NoBackgroundIcon.png"

Images.ENDORSED_BADGE_ICON = "rbxasset://textures/StudioToolbox/EndorsedBadge.png"

Images.TOOLBOX_ICON = "rbxasset://textures/StudioToolbox/ToolboxIcon.png"

Images.CURSOR_DEFAULT = "rbxasset://Textures/advCursor-default.png"
Images.CURSOR_POINTING_HAND = "rbxasset://SystemCursors/PointingHand"
Images.CURSOR_I_BEAM = "rbxasset://SystemCursors/IBeam"

return wrapStrictTable(Images)
