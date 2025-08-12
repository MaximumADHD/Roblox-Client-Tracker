local strict = require(script.Utility.strict)

local Types = require(script.Components.Types)
local Tokens = require(script.Providers.Style.Tokens)
local PreferencesProvider = require(script.Providers.Preferences)

local Packages = script.Parent
local BuilderIcons = require(Packages.BuilderIcons)

export type Bindable<T> = Types.Bindable<T>
export type CommonProps = Types.CommonProps
export type StateChangedCallback = Types.StateChangedCallback
export type StateLayer = Types.StateLayer
export type Tags = Types.Tags
export type Preferences = PreferencesProvider.PreferencesProps
export type PreferencesProviderProps = PreferencesProvider.PreferencesProviderProps

-- Token types
export type ColorStyle = Types.ColorStyle
export type ColorStyleValue = Types.ColorStyleValue
export type FontStyle = Types.FontStyle
export type Tokens = Tokens.Tokens

-- Enums and their types
local AvatarGroupType = require(script.Enums.AvatarGroupType)
local BadgeSize = require(script.Enums.BadgeSize)
local BadgeVariant = require(script.Enums.BadgeVariant)
local ButtonVariant = require(script.Enums.ButtonVariant)
local ChipSize = require(script.Enums.ChipSize)
local ControlState = require(script.Enums.ControlState)
local CursorType = require(script.Enums.CursorType)
local Device = require(script.Enums.Device)
local DialogSize = require(script.Enums.DialogSize)
local DividerVariant = require(script.Enums.DividerVariant)
local FillBehavior = require(script.Enums.FillBehavior)
local IconName = BuilderIcons.Icon
local IconPosition = require(script.Enums.IconPosition)
local IconSize = require(script.Enums.IconSize)
local IconVariant = BuilderIcons.IconVariant
local InputSize = require(script.Enums.InputSize)
local OnCloseCallbackReason = require(script.Enums.OnCloseCallbackReason)
local InputLabelSize = require(script.Enums.InputLabelSize)
local PopoverAlign = require(script.Enums.PopoverAlign)
local PopoverSide = require(script.Enums.PopoverSide)
local Radius = require(script.Enums.Radius)
local SliderVariant = require(script.Enums.SliderVariant)
local StateLayerAffordance = require(script.Enums.StateLayerAffordance)
local StateLayerMode = require(script.Enums.StateLayerMode)
local Theme = require(script.Enums.Theme)
local ThumbnailType = require(script.Enums.ThumbnailType)
local ThumbnailSize = require(script.Enums.ThumbnailSize)
local UserPresence = require(script.Enums.UserPresence)
local Visibility = require(script.Enums.Visibility)

export type AvatarGroupType = AvatarGroupType.AvatarGroupType
export type BadgeSize = BadgeSize.BadgeSize
export type BadgeVariant = BadgeVariant.BadgeVariant
export type ButtonVariant = ButtonVariant.ButtonVariant
export type ChipSize = ChipSize.ChipSize
export type ControlState = ControlState.ControlState
export type CursorType = CursorType.CursorType
export type Device = Device.Device
export type DialogSize = DialogSize.DialogSize
export type DividerVariant = DividerVariant.DividerVariant
export type FillBehavior = FillBehavior.FillBehavior
export type IconPosition = IconPosition.IconPosition
export type IconName = BuilderIcons.Icon
export type IconSize = IconSize.IconSize
export type InputSize = InputSize.InputSize
export type IconVariant = BuilderIcons.IconVariant
export type InputLabelSize = InputLabelSize.InputLabelSize
export type OnCloseCallbackReason = OnCloseCallbackReason.OnCloseCallbackReason
export type PopoverAlign = PopoverAlign.PopoverAlign
export type PopoverSide = PopoverSide.PopoverSide
export type Radius = Radius.Radius
export type SliderVariant = SliderVariant.SliderVariant
export type StateLayerAffordance = StateLayerAffordance.StateLayerAffordance
export type StateLayerMode = StateLayerMode.StateLayerMode
export type Theme = Theme.Theme
export type ThumbnailType = ThumbnailType.ThumbnailType
export type ThumbnailSize = ThumbnailSize.ThumbnailSize
export type UserPresence = UserPresence.UserPresence
export type Visibility = Visibility.Visibility
-- enums end

-- Components and their types
local Menu = require(script.Components.Menu)

export type MenuProps = Menu.MenuProps
export type MenuItem = Menu.MenuItem
-- Ccomponents end

local Foundation = strict({
	-- Components
	Avatar = require(script.Components.Avatar),
	AvatarGroup = require(script.Components.AvatarGroup),
	Badge = require(script.Components.Badge),
	Button = require(script.Components.Button),
	Checkbox = require(script.Components.Checkbox),
	Chip = require(script.Components.Chip),
	Dialog = require(script.Components.Dialog),
	Divider = require(script.Components.Divider),
	Dropdown = require(script.Components.Dropdown),
	Empty = require(script.Components.Empty),
	Icon = require(script.Components.Icon),
	IconButton = require(script.Components.IconButton),
	Image = require(script.Components.Image),
	InputLabel = require(script.Components.InputLabel),
	KeyLabel = require(script.Components.KeyLabel),
	Knob = require(script.Components.Knob),
	Loading = require(script.Components.Loading),
	Menu = Menu,
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
	SegmentedControl = require(script.Components.SegmentedControl),

	-- Providers
	FoundationProvider = require(script.Providers.Foundation),
	OverlayProvider = require(script.Providers.Overlay),
	BackgroundStyleContext = require(script.Providers.Style.BackgroundStyleContext),

	-- Hooks
	Hooks = {
		useCursor = require(script.Providers.Cursor.useCursor),
		withCursor = require(script.Providers.Cursor.withCursor),
		useDefaultTags = require(script.Utility.useDefaultTags),
		useIconSize = require(script.Utility.useIconSize),
		usePointerPosition = require(script.Utility.usePointerPosition),
		usePreferences = require(script.Providers.Preferences.usePreferences),
		useCumulativeBackground = require(script.Utility.useCumulativeBackground),
		useRotation = require(script.Utility.useRotation),
		useScaledValue = require(script.Utility.useScaledValue),
		useStyleTags = require(script.Providers.Style.useStyleTags),
		useTextSizeOffset = require(script.Providers.Style.useTextSizeOffset),
		useTokens = require(script.Providers.Style.useTokens),
		useStyleSheet = require(script.Providers.Style.StyleSheetContext).useStyleSheet,
	},

	-- Enums
	Enums = {
		AvatarGroupType = AvatarGroupType,
		BadgeSize = BadgeSize,
		BadgeVariant = BadgeVariant,
		-- **DEPRECATED**: ButtonSize is deprecated. Use InputSize instead.
		ButtonSize = require(script.Enums.InputSize),
		ButtonVariant = ButtonVariant,
		-- **DEPRECATED**: CheckboxSize is deprecated. Use InputSize instead.
		CheckboxSize = require(script.Enums.InputSize),
		ControlState = ControlState,
		ChipSize = ChipSize,
		CursorType = CursorType,
		Device = Device,
		DialogSize = DialogSize,
		DividerVariant = DividerVariant,
		FillBehavior = FillBehavior,
		IconName = IconName,
		IconPosition = IconPosition,
		IconSize = IconSize,
		IconVariant = IconVariant,
		InputSize = InputSize,
		InputLabelSize = InputLabelSize,
		OnCloseCallbackReason = OnCloseCallbackReason,
		PopoverAlign = PopoverAlign,
		PopoverSide = PopoverSide,
		Radius = Radius,
		-- **DEPRECATED**: ScrollBarVisibility is deprecated. Use Visibility instead.
		ScrollBarVisibility = require(script.Enums.Visibility),
		SliderVariant = SliderVariant,
		StateLayerAffordance = StateLayerAffordance,
		StateLayerMode = StateLayerMode,
		Theme = Theme,
		ThumbnailType = ThumbnailType,
		ThumbnailSize = ThumbnailSize,
		-- **DEPRECATED**: ToggleSize is deprecated. Use InputSize instead.
		ToggleSize = require(script.Enums.InputSize),
		UserPresence = UserPresence,
		Visibility = Visibility,
	},

	-- Utility
	Utility = {
		composeStyleVariant = require(script.Utility.composeStyleVariant),
		getRbxThumb = require(script.Utility.getRbxThumb),
		indexBindable = require(script.Utility.indexBindable),
		mockComponent = require(script.Utility.mockComponent),
		withCommonProps = require(script.Utility.withCommonProps),
		withDefaults = require(script.Utility.withDefaults),
		isPointInGuiObjectBounds = require(script.Utility.isPointInGuiObjectBounds),
		Flags = require(script.Utility.Flags),
		isBuilderIcon = require(script.Utility.isBuilderIcon),
	},

	-- Unstable APIs, do not use
	UNSTABLE = {
		-- Use View/Text/Image instead
		Interactable = require(script.Components.Interactable),
		withCursorMigration = require(script.Providers.Cursor.withCursorMigration),
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
