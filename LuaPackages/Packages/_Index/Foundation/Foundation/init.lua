local strict = require(script.Utility.strict)

local Types = require(script.Components.Types)
local Tokens = require(script.Providers.Style.Tokens)
local ControlState = require(script.Enums.ControlState)

export type Bindable<T> = Types.Bindable<T>
export type CommonProps = Types.CommonProps
export type StateChangedCallback = Types.StateChangedCallback
export type ControlState = ControlState.ControlState
export type StateLayer = Types.StateLayer
export type Tags = Types.Tags

-- Token types
export type ColorStyle = Types.ColorStyle
export type ColorStyleValue = Types.ColorStyleValue
export type FontStyle = Types.FontStyle
export type Tokens = Tokens.Tokens

local Foundation = strict({
	-- Components
	Avatar = require(script.Components.Avatar),
	AvatarGroup = require(script.Components.AvatarGroup),
	Badge = require(script.Components.Badge),
	Button = require(script.Components.Button),
	Checkbox = require(script.Components.Checkbox),
	Chip = require(script.Components.Chip),
	Divider = require(script.Components.Divider),
	Empty = require(script.Components.Empty),
	Icon = require(script.Components.Icon),
	IconButton = require(script.Components.IconButton),
	Image = require(script.Components.Image),
	InputLabel = require(script.Components.InputLabel),
	KeyLabel = require(script.Components.KeyLabel),
	Knob = require(script.Components.Knob),
	Loading = require(script.Components.Loading),
	NumberInput = require(script.Components.NumberInput),
	Pill = require(script.Components.Chip),
	Popover = require(script.Components.Popover),
	RadioGroup = require(script.Components.RadioGroup),
	ScrollView = require(script.Components.ScrollView),
	Skeleton = require(script.Components.Skeleton),
	Slider = require(script.Components.Slider),
	Text = require(script.Components.Text),
	TextInput = require(script.Components.TextInput),
	Toggle = require(script.Components.Toggle),
	Tooltip = require(script.Components.Tooltip),
	Toast = require(script.Components.Toast),
	View = require(script.Components.View),

	-- Providers
	FoundationProvider = require(script.Providers.Foundation),
	OverlayProvider = require(script.Providers.Overlay),

	-- Hooks
	Hooks = {
		useCursor = require(script.Providers.Cursor.useCursor),
		withCursor = require(script.Providers.Cursor.withCursor),
		useDefaultTags = require(script.Utility.useDefaultTags),
		useIconSize = require(script.Utility.useIconSize),
		usePointerPosition = require(script.Utility.usePointerPosition),
		usePreferences = require(script.Providers.Preferences.usePreferences),
		useRotation = require(script.Utility.useRotation),
		useScaledValue = require(script.Utility.useScaledValue),
		useStyleTags = require(script.Providers.Style.useStyleTags),
		useTextSizeOffset = require(script.Providers.Style.useTextSizeOffset),
		useTokens = require(script.Providers.Style.useTokens),
		useStyleSheet = require(script.Providers.Style.StyleSheetContext).useStyleSheet,
	},

	-- Enums
	Enums = {
		AvatarGroupType = require(script.Enums.AvatarGroupType),
		BadgeSize = require(script.Enums.BadgeSize),
		BadgeVariant = require(script.Enums.BadgeVariant),
		-- ButtonSize is deprecated. Use InputSize instead.
		ButtonSize = require(script.Enums.InputSize),
		ButtonVariant = require(script.Enums.ButtonVariant),
		-- CheckboxSize is deprecated. Use InputSize instead.
		CheckboxSize = require(script.Enums.InputSize),
		ControlState = ControlState,
		CursorType = require(script.Enums.CursorType),
		Device = require(script.Enums.Device),
		DividerVariant = require(script.Enums.DividerVariant),
		FillBehavior = require(script.Enums.FillBehavior),
		IconPosition = require(script.Enums.IconPosition),
		IconSize = require(script.Enums.IconSize),
		InputSize = require(script.Enums.InputSize),
		InputLabelSize = require(script.Enums.InputLabelSize),
		PopoverAlign = require(script.Enums.PopoverAlign),
		PopoverSide = require(script.Enums.PopoverSide),
		Radius = require(script.Enums.Radius),
		-- ScrollBarVisibility is deprecated. Use Visibility instead.
		ScrollBarVisibility = require(script.Enums.Visibility),
		SliderVariant = require(script.Enums.SliderVariant),
		StateLayerAffordance = require(script.Enums.StateLayerAffordance),
		StateLayerMode = require(script.Enums.StateLayerMode),
		Theme = require(script.Enums.Theme),
		ThumbnailType = require(script.Enums.ThumbnailType),
		ThumbnailSize = require(script.Enums.ThumbnailSize),
		-- ToggleSize is deprecated. Use InputSize instead.
		ToggleSize = require(script.Enums.InputSize),
		UserPresence = require(script.Enums.UserPresence),
		Visibility = require(script.Enums.Visibility),
	},

	-- Utility
	Utility = {
		composeStyleVariant = require(script.Utility.composeStyleVariant),
		getRbxThumb = require(script.Utility.getRbxThumb),
		indexBindable = require(script.Utility.indexBindable),
		mockComponent = require(script.Utility.mockComponent),
		withCommonProps = require(script.Utility.withCommonProps),
		withDefaults = require(script.Utility.withDefaults),
	},

	-- Unstable APIs, do not use
	UNSTABLE = {
		-- Use View/Text/Image instead
		Interactable = require(script.Components.Interactable),
	},
})

if _G.__FOUNDATION_TRACK_USAGE__ then
	local UsageTracker = require(script.Parent.UsageTracker)

	Foundation = UsageTracker.trackMemberAccess("Foundation", Foundation, UsageTracker.isReactComponent)
end

if _G.__FOUNDATION_TRACE_LOG__ then
	local Logger = require(script.Utility.Logger)
	Logger:enableTraceLog()
end

return Foundation
