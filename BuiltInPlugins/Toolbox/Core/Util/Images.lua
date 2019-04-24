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

Images.THUMB = "rbxasset://textures/StudioToolbox/Voting/Thumb.png"
Images.THUMB_UP_GREY = "rbxasset://textures/StudioToolbox/Voting/thumbup.png"
Images.THUMB_DOWN_GREY = "rbxasset://textures/StudioToolbox/Voting/thumb-down.png"
Images.THUMB_UP_GREEN = "rbxasset://textures/StudioToolbox/Voting/thumbs-up-filled.png"
Images.THUMB_DOWN_RED = "rbxasset://textures/StudioToolbox/Voting/thumbs-down-filled.png"

Images.PLAY_AUDIO = "rbxasset://textures/StudioToolbox/AudioPreview/play.png"
Images.PLAY_AUDIO_HOVERED = "rbxasset://textures/StudioToolbox/AudioPreview/play_hover.png"
Images.PAUSE_AUDIO = "rbxasset://textures/StudioToolbox/AudioPreview/pause.png"
Images.PAUSE_AUDIO_HOVERED = "rbxasset://textures/StudioToolbox/AudioPreview/pause_hover.png"

Images.DROP_SHADOW_IMAGE = "rbxasset://textures/StudioUIEditor/resizeHandleDropShadow.png"

Images.NO_BACKGROUND_ICON = "rbxasset://textures/StudioToolbox/NoBackgroundIcon.png"

Images.ENDORSED_BADGE_ICON = "rbxasset://textures/StudioToolbox/EndorsedBadge.png"

Images.TOOLBOX_ICON = "rbxasset://textures/StudioToolbox/ToolboxIcon.png"

Images.INFO_ICON = "rbxasset://textures/DevConsole/Info.png"

Images.ARROW_EXPANDED = "rbxasset://textures/StudioToolbox/ArrowExpanded.png"
Images.ARROW_COLLAPSED = "rbxasset://textures/StudioToolbox/ArrowCollapsed.png"

Images.DELETE_BUTTON = "rbxasset://textures/StudioToolbox/DeleteButton.png"

Images.RODUX_GREEN = "rbxasset://textures/ui/RobuxIcon.png"
Images.LIKES_GREY = "rbxasset://textures/StudioToolbox/AssetPreview/Likes_Grey.png"
Images.LINK_ARROW = "rbxasset://textures/StudioToolbox/AssetPreview/Link_Arrow.png"
Images.CLOSE_BUTTON = "rbxasset://textures/StudioToolbox/AssetPreview/close.png"
Images.SHOW_MORE = "rbxasset://textures/StudioToolbox/AssetPreview/more.png"

Images.MAGNIFIER_PH = "rbxasset://textures/StudioToolbox/AssetPreview/MAGNIFIER_PH.png"
Images.SEARCH_OPTIONS = "rbxasset://textures/StudioToolbox/SearchOptions.png"

Images.RADIO_BUTTON_BACKGROUND = "rbxasset://textures/GameSettings/RadioButton.png"
Images.RADIO_BUTTON_HIGHLIGHT = "rbxasset://textures/ui/LuaApp/icons/ic-blue-dot.png"
Images.THUMB_UP = "rbxasset://textures/StudioToolbox/AssetPreview/rating_large.png"
Images.THUMB_UP_SMALL = "rbxasset://textures/StudioToolbox/AssetPreview/rating_small.png"
Images.VOTE_DOWN = "rbxasset://textures/StudioToolbox/AssetPreview/vote_down.png"
Images.VOTE_UP = "rbxasset://textures/StudioToolbox/AssetPreview/vote_up.png"
Images.Unfavorited = "rbxasset://textures/StudioToolbox/AssetPreview/star_stroke.png"
Images.Favorited = "rbxasset://textures/StudioToolbox/AssetPreview/star_filled.png"

Images.HIERARCHY = "rbxasset://textures/StudioToolbox/AssetPreview/hierarchy.png"
Images.FULLSCREEN = "rbxasset://textures/StudioToolbox/AssetPreview/fullscreen.png"
Images.FULLSCREEN_EXIT = "rbxasset://textures/StudioToolbox/AssetPreview/fullscreen_exit.png"

Images.MARKETPLACE_TAB = "rbxasset://textures/StudioToolbox/Tabs/Shop.png"
Images.INVENTORY_TAB = "rbxasset://textures/StudioToolbox/Tabs/Inventory.png"
Images.RECENT_TAB = "rbxasset://textures/StudioToolbox/Tabs/Recent.png"

return wrapStrictTable(Images)
