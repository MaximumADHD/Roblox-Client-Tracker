local Plugin = script.Parent.Parent.Parent

local wrapStrictTable = require(Plugin.Core.Util.wrapStrictTable)
local AssetConfigConstants = require(Plugin.Core.Util.AssetConfigConstants)

local Images = {}

local FFlagStudioFixAssetPreviewCloseButton = settings():GetFFlag("StudioFixAssetPreviewCloseButton")

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

Images.AUDIO_PREVIEW_PLAY = "rbxasset://textures/StudioToolbox/AssetPreview/play_button.png"
Images.AUDIO_PREVIEW_PAUSE = "rbxasset://textures/StudioToolbox/AssetPreview/pause_button.png"

Images.DROP_SHADOW_IMAGE = "rbxasset://textures/StudioUIEditor/resizeHandleDropShadow.png"

Images.NO_BACKGROUND_ICON = "rbxasset://textures/StudioToolbox/NoBackgroundIcon.png"

Images.ENDORSED_BADGE_ICON = "rbxasset://textures/StudioToolbox/EndorsedBadge.png"

Images.TOOLBOX_ICON = "rbxasset://textures/StudioToolbox/ToolboxIcon.png"

Images.INFO_ICON = "rbxasset://textures/DevConsole/Info.png"

Images.ARROW_EXPANDED = "rbxasset://textures/StudioToolbox/ArrowExpanded.png"
Images.ARROW_COLLAPSED = "rbxasset://textures/StudioToolbox/ArrowCollapsed.png"

Images.DELETE_BUTTON = FFlagStudioFixAssetPreviewCloseButton and "rbxasset://textures/StudioToolbox/DeleteButton.png" or "rbxasset://textures/StudioToolbox/DEPRECATED_DeleteButton.png"

Images.ROBUX_SMALL = "rbxasset://textures/ui/common/robux_small.png"
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

Images.MAKE_CURRENT_VERSION = "rbxasset://textures/StudioToolbox/AssetConfig/selected@2x.png"

Images.MARKETPLACE_TAB = "rbxasset://textures/StudioToolbox/Tabs/Shop.png"
Images.INVENTORY_TAB = "rbxasset://textures/StudioToolbox/Tabs/Inventory.png"
Images.RECENT_TAB = "rbxasset://textures/StudioToolbox/Tabs/Recent.png"
Images.CREATIONS_TAB = "rbxasset://textures/StudioToolbox/Tabs/MyCreations.png"

Images.OWNED_ICON = "rbxasset://textures/StudioToolbox/ProductOwned.png"

-- For asset config
Images.GENERAL_TAB = "rbxasset://textures/StudioToolbox/AssetConfig/editlisting.png"
Images.VERSIONS_TAB = "rbxasset://textures/StudioToolbox/AssetConfig/version.png"
Images.CENTER_PLUS = "rbxasset://textures/StudioToolbox/AssetConfig/CenterPlus.png"
Images.GRADIENT = "rbxasset://textures/gradient.png"

Images.TOGGLE_ON_DARK = "rbxasset://textures/RoactStudioWidgets/toggle_on_dark.png"
Images.TOGGLE_ON_LIGHT = "rbxasset://textures/RoactStudioWidgets/toggle_on_light.png"
Images.TOGGLE_OFF_DARK = "rbxasset://textures/RoactStudioWidgets/toggle_off_dark.png"
Images.TOGGLE_OFF_LIGHT = "rbxasset://textures/RoactStudioWidgets/toggle_off_light.png"
Images.TOGGLE_DISABLE_DARK = "rbxasset://textures/RoactStudioWidgets/toggle_disable_dark.png"
Images.TOGGLE_DISABLE_LIGHT	= "rbxasset://textures/RoactStudioWidgets/toggle_disable_light.png"

Images.GENERAL_SIDE_TAB = "rbxasset://textures/StudioToolbox/AssetConfig/editlisting.png"
Images.VERSIONS_SIDE_TAB = "rbxasset://textures/StudioToolbox/AssetConfig/version.png"
Images.SALES_SIDE_TAB = "rbxasset://textures/StudioToolbox/AssetConfig/creations.png"
Images.PERMISSIONS_SIDE_TAB = "rbxasset://textures/StudioToolbox/AssetConfig/menu_friends.png"

Images.SELECTED_CHECK = "rbxasset://textures/StudioToolbox/AssetConfig/readyforsale@2x.png"
Images.CLOSE_ICON = "rbxasset://textures/StudioSharedUI/close.png"

Images.AssetStatus = {
	[AssetConfigConstants.ASSET_STATUS.ReviewPending] = "rbxasset://textures/StudioToolbox/AssetPreview/Pending.png",
	[AssetConfigConstants.ASSET_STATUS.Moderated] = "rbxasset://textures/StudioToolbox/AssetPreview/Rejected.png",
	[AssetConfigConstants.ASSET_STATUS.ReviewApproved] = "rbxasset://textures/StudioToolbox/AssetPreview/ReadyforSale.png",
	[AssetConfigConstants.ASSET_STATUS.OnSale] = "rbxasset://textures/StudioToolbox/AssetPreview/OnSale.png",
	[AssetConfigConstants.ASSET_STATUS.OffSale] = "rbxasset://textures/StudioToolbox/AssetPreview/OffSale.png",
	[AssetConfigConstants.ASSET_STATUS.Free] = "rbxasset://textures/StudioToolbox/AssetPreview/OnSale.png",
}

Images.PLUGIN_TEMP = "rbxasset://textures/StudioToolbox/AssetConfig/plugin_temp.png"

Images.ARROW_SPRITESHEET = "rbxasset://textures/StudioSharedUI/arrowSpritesheet.png"

Images.AVATAR_MASK = "rbxasset://textures/StudioSharedUI/avatarMask.png"

Images.DEFAULT_USER_THUMBNAIL = "rbxasset://textures/StudioSharedUI/default_user.png"
Images.DEFAULT_GROUP_THUMBNAIL = "rbxasset://textures/StudioSharedUI/default_group.png"

Images.ERROR_ICON = "rbxasset://textures/GameSettings/ErrorIcon.png"

return wrapStrictTable(Images)
