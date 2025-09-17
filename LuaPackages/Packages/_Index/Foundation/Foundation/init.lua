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
export type PopoverAnchor = Types.PopoverAnchor
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
local Orientation = require(script.Enums.Orientation)
local DividerVariant = require(script.Enums.DividerVariant)
local FillBehavior = require(script.Enums.FillBehavior)
local IconName = BuilderIcons.Icon
local IconPosition = require(script.Enums.IconPosition)
local IconSize = require(script.Enums.IconSize)
local IconVariant = BuilderIcons.IconVariant
local InputSize = require(script.Enums.InputSize)
local NumberInputControlsVariant = require(script.Enums.NumberInputControlsVariant)
local OnCloseCallbackReason = require(script.Enums.OnCloseCallbackReason)
local InputLabelSize = require(script.Enums.InputLabelSize)
local PopoverAlign = require(script.Enums.PopoverAlign)
local PopoverSide = require(script.Enums.PopoverSide)
local ProgressShape = require(script.Enums.ProgressShape)
local ProgressSize = require(script.Enums.ProgressSize)
local Radius = require(script.Enums.Radius)
local SliderVariant = require(script.Enums.SliderVariant)
local StateLayerAffordance = require(script.Enums.StateLayerAffordance)
local StateLayerMode = require(script.Enums.StateLayerMode)
local StatusIndicatorVariant = require(script.Enums.StatusIndicatorVariant)
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
export type Orientation = Orientation.Orientation
export type DividerVariant = DividerVariant.DividerVariant
export type FillBehavior = FillBehavior.FillBehavior
export type IconPosition = IconPosition.IconPosition
export type IconName = BuilderIcons.Icon
export type IconSize = IconSize.IconSize
export type InputSize = InputSize.InputSize
export type IconVariant = BuilderIcons.IconVariant
export type InputLabelSize = InputLabelSize.InputLabelSize
export type NumberInputControlsVariant = NumberInputControlsVariant.NumberInputControlsVariant
export type OnCloseCallbackReason = OnCloseCallbackReason.OnCloseCallbackReason
export type PopoverAlign = PopoverAlign.PopoverAlign
export type PopoverSide = PopoverSide.PopoverSide
export type ProgressShape = ProgressShape.ProgressShape
export type ProgressSize = ProgressSize.ProgressSize
export type Radius = Radius.Radius
export type SliderVariant = SliderVariant.SliderVariant
export type StateLayerAffordance = StateLayerAffordance.StateLayerAffordance
export type StateLayerMode = StateLayerMode.StateLayerMode
export type StatusIndicatorVariant = StatusIndicatorVariant.StatusIndicatorVariant
export type Theme = Theme.Theme
export type ThumbnailType = ThumbnailType.ThumbnailType
export type ThumbnailSize = ThumbnailSize.ThumbnailSize
export type UserPresence = UserPresence.UserPresence
export type Visibility = Visibility.Visibility
-- enums end

-- Components and their types
local Accordion = require(script.Components.Accordion)
export type AccordionProps = Accordion.AccordionProps
export type AccordionItemProps = Accordion.AccordionItemProps

local Avatar = require(script.Components.Avatar)
export type AvatarProps = Avatar.AvatarProps

local AvatarGroup = require(script.Components.AvatarGroup)
export type AvatarGroupProps = AvatarGroup.AvatarGroupProps

local Badge = require(script.Components.Badge)
export type BadgeProps = Badge.BadgeProps

local Button = require(script.Components.Button)
export type ButtonProps = Button.ButtonProps

local Checkbox = require(script.Components.Checkbox)
export type CheckboxProps = Checkbox.CheckboxProps

local Chip = require(script.Components.Chip)
export type ChipProps = Chip.ChipProps

local ColorPicker = require(script.Components.ColorPicker)
export type ColorPickerProps = ColorPicker.ColorPickerProps

local Dialog = require(script.Components.Dialog)
export type DialogProps = Dialog.DialogProps
export type DialogActionsProps = Dialog.DialogActionsProps
export type DialogContentProps = Dialog.DialogContentProps
export type DialogTextProps = Dialog.DialogTextProps
export type DialogHeroMediaProps = Dialog.DialogHeroMediaProps
export type DialogTitleProps = Dialog.DialogTitleProps

local Divider = require(script.Components.Divider)
export type DividerProps = Divider.DividerProps

local Dropdown = require(script.Components.Dropdown)
export type DropdownProps = Dropdown.DropdownProps

local Empty = require(script.Components.Empty)
export type EmptyProps = Empty.EmptyProps

local Icon = require(script.Components.Icon)
export type IconProps = Icon.IconProps

local IconButton = require(script.Components.IconButton)
export type IconButtonProps = IconButton.IconButtonProps

local Image = require(script.Components.Image)
export type ImageProps = Image.ImageProps

local InputLabel = require(script.Components.InputLabel)
export type InputLabelProps = InputLabel.InputLabelProps

local KeyLabel = require(script.Components.KeyLabel)
export type KeyLabelProps = KeyLabel.KeyLabelProps

local Knob = require(script.Components.Knob)
export type KnobProps = Knob.KnobProps

local Loading = require(script.Components.Loading)
export type LoadingProps = Loading.LoadingProps

local Menu = require(script.Components.Menu)
export type MenuProps = Menu.MenuProps
export type MenuItem = Menu.MenuItem

local NumberInput = require(script.Components.NumberInput)
export type NumberInputProps = NumberInput.NumberInputProps

local Popover = require(script.Components.Popover)
export type PopoverProps = Popover.PopoverProps
export type PopoverAnchorProps = Popover.PopoverAnchorProps
export type PopoverContentProps = Popover.PopoverContentProps

local Progress = require(script.Components.Progress)
export type ProgressProps = Progress.ProgressProps

local RadioGroup = require(script.Components.RadioGroup)
export type RadioGroupProps = RadioGroup.RadioGroupProps
export type RadioGroupItemProps = RadioGroup.RadioGroupItemProps

local ScrollView = require(script.Components.ScrollView)
export type ScrollViewProps = ScrollView.ScrollViewProps

local SegmentedControl = require(script.Components.SegmentedControl)
export type SegmentedControlProps = SegmentedControl.SegmentedControlProps

local Skeleton = require(script.Components.Skeleton)
export type SkeletonProps = Skeleton.SkeletonProps

local Slider = require(script.Components.Slider)
export type SliderProps = Slider.SliderProps

local Snackbar = require(script.Components.Snackbar)
export type SnackbarProps = Snackbar.SnackbarProps
export type SnackbarAction = Snackbar.SnackbarAction

local StatusIndicator = require(script.Components.StatusIndicator)
export type StatusIndicatorProps = StatusIndicator.StatusIndicatorProps

local Tabs = require(script.Components.Tabs)
export type TabsProps = Tabs.TabsProps
export type TabItem = Tabs.TabItem

local Text = require(script.Components.Text)
export type TextProps = Text.TextProps

local TextInput = require(script.Components.TextInput)
export type TextInputProps = TextInput.TextInputProps

local Toggle = require(script.Components.Toggle)
export type ToggleProps = Toggle.ToggleProps

local Tooltip = require(script.Components.Tooltip)
export type TooltipProps = Tooltip.TooltipProps

local Toast = require(script.Components.Toast)
export type ToastProps = Toast.ToastProps

local View = require(script.Components.View)
export type ViewProps = View.ViewProps
-- Components and types end

local Foundation = strict({
	-- Components
	Accordion = Accordion,
	Avatar = Avatar,
	AvatarGroup = AvatarGroup,
	Badge = Badge,
	Button = Button,
	Checkbox = Checkbox,
	Chip = Chip,
	ColorPicker = ColorPicker,
	Dialog = Dialog,
	Divider = Divider,
	Dropdown = Dropdown,
	Empty = Empty,
	Icon = Icon,
	IconButton = IconButton,
	Image = Image,
	InputLabel = InputLabel,
	KeyLabel = KeyLabel,
	Knob = Knob,
	Loading = Loading,
	Menu = Menu,
	NumberInput = NumberInput,
	Pill = Chip,
	Popover = Popover,
	Progress = Progress,
	RadioGroup = RadioGroup,
	ScrollView = ScrollView,
	SegmentedControl = SegmentedControl,
	Skeleton = Skeleton,
	Slider = Slider,
	Snackbar = Snackbar,
	StatusIndicator = StatusIndicator,
	Tabs = Tabs,
	Text = Text,
	TextInput = TextInput,
	Toggle = Toggle,
	Tooltip = Tooltip,
	Toast = Toast,
	View = View,

	-- Providers
	FoundationProvider = require(script.Providers.Foundation),
	OverlayProvider = require(script.Providers.Overlay),
	BackgroundStyleContext = require(script.Providers.Style.BackgroundStyleContext),

	-- Hooks
	Hooks = {
		useCumulativeBackground = require(script.Utility.useCumulativeBackground),
		useCursor = require(script.Providers.Cursor.useCursor),
		useDefaultTags = require(script.Utility.useDefaultTags),
		useIconSize = require(script.Utility.useIconSize),
		useMeasurableRef = require(script.Components.Popover.useMeasurableRef),
		useOverlay = require(script.Providers.Overlay.useOverlay),
		usePointerPosition = require(script.Utility.usePointerPosition),
		usePreferences = require(script.Providers.Preferences.usePreferences),
		usePulseBinding = require(script.Utility.usePulseBinding),
		useRotation = require(script.Utility.useRotation),
		useScaledValue = require(script.Utility.useScaledValue),
		useStyleSheet = require(script.Providers.Style.StyleSheetContext).useStyleSheet,
		useStyleTags = require(script.Providers.Style.useStyleTags),
		useTextSizeOffset = require(script.Providers.Style.useTextSizeOffset),
		useTokens = require(script.Providers.Style.useTokens),
		withCursor = require(script.Providers.Cursor.withCursor),
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
		-- **DEPRECATED**: DividerOrientation is deprecated. Use Orientation instead.
		DividerOrientation = require(script.Enums.Orientation),
		DividerVariant = DividerVariant,
		FillBehavior = FillBehavior,
		IconName = IconName,
		IconPosition = IconPosition,
		IconSize = IconSize,
		IconVariant = IconVariant,
		InputSize = InputSize,
		InputLabelSize = InputLabelSize,
		NumberInputControlsVariant = NumberInputControlsVariant,
		OnCloseCallbackReason = OnCloseCallbackReason,
		Orientation = Orientation,
		PopoverAlign = PopoverAlign,
		PopoverSide = PopoverSide,
		ProgressShape = ProgressShape,
		ProgressSize = ProgressSize,
		Radius = Radius,
		-- **DEPRECATED**: ScrollBarVisibility is deprecated. Use Visibility instead.
		ScrollBarVisibility = require(script.Enums.Visibility),
		SliderVariant = SliderVariant,
		StateLayerAffordance = StateLayerAffordance,
		StateLayerMode = StateLayerMode,
		StatusIndicatorVariant = StatusIndicatorVariant,
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
		getIconRichText = require(script.Utility.getIconRichText),
		indexBindable = require(script.Utility.indexBindable),
		mockComponent = require(script.Utility.mockComponent),
		withCommonProps = require(script.Utility.withCommonProps),
		withDefaults = require(script.Utility.withDefaults),
		isBuilderIcon = require(script.Utility.isBuilderIcon),
		isPointInGuiObjectBounds = require(script.Utility.isPointInGuiObjectBounds),
		Flags = require(script.Utility.Flags),
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
