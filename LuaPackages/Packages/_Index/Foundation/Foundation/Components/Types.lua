local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local BuilderIcons = require(Packages.BuilderIcons)
type IconVariant = BuilderIcons.IconVariant

local BadgeVariant = require(Foundation.Enums.BadgeVariant)
type BadgeVariant = BadgeVariant.BadgeVariant

local StateLayerAffordance = require(Foundation.Enums.StateLayerAffordance)
type StateLayerAffordance = StateLayerAffordance.StateLayerAffordance

local StateLayerMode = require(Foundation.Enums.StateLayerMode)
type StateLayerMode = StateLayerMode.StateLayerMode

local CursorType = require(Foundation.Enums.CursorType)
type CursorType = CursorType.CursorType

local ControlState = require(Foundation.Enums.ControlState)
type ControlState = ControlState.ControlState
export type StateChangedCallback = (newState: ControlState) -> ()

local ButtonVariant = require(Foundation.Enums.ButtonVariant)
type ButtonVariant = ButtonVariant.ButtonVariant

local InputFocusBehavior = require(Foundation.Enums.InputFocusBehavior)
type InputFocusBehavior = InputFocusBehavior.InputFocusBehavior

local InputSize = require(Foundation.Enums.InputSize)
type InputSize = InputSize.InputSize

local InputPlacement = require(Foundation.Enums.InputPlacement)
type InputPlacement = InputPlacement.InputPlacement

export type InputGroupSize = typeof(InputSize.XSmall) | typeof(InputSize.Small) | typeof(InputSize.Medium)

local InputVariant = require(Foundation.Enums.InputVariant)
type InputVariant = InputVariant.InputVariant

export type IconConfig = string | {
	-- BuilderIcons name.
	name: string,
	-- BuilderIcons weight.
	variant: IconVariant?,
}

export type IconAccessoryConfig = {
	-- Discriminator left nil so this config is an icon accessory.
	type: nil,
	-- BuilderIcons name or asset path.
	iconName: string,
	-- BuilderIcons weight.
	iconVariant: IconVariant?,
}

export type AvatarAccessoryConfig = {
	-- Selects the avatar accessory.
	type: "Avatar",
	-- User id whose avatar is shown.
	userId: number,
}

export type HintAccessoryConfig = {
	-- Selects the hint accessory.
	type: "Hint",
	-- Hint text shown beside the item.
	text: string,
}

export type BadgeAccessoryConfig = {
	-- Selects the badge accessory.
	type: "Badge",
	-- Optional badge label.
	text: string?,
	-- Optional badge icon.
	icon: string?,
	-- Badge color variant.
	variant: BadgeVariant?,
}

export type ActionProps = {
	-- Called when the action is activated.
	onActivated: () -> (),
	-- Visual style of the action button.
	variant: ButtonVariant?,
	-- Label shown on the action.
	text: string,
}

local React = require(Packages.React)

export type Bindable<T> = T | React.Binding<T>

type ReactRefGuiObject = React.Ref<GuiObject>

export type ResponsiveValue<T> = {
	-- Value used at the extra-small breakpoint.
	xs: T,
	-- Value used at the small breakpoint.
	sm: T,
	-- Value used at the medium breakpoint.
	md: T,
	-- Value used at the large breakpoint.
	lg: T,
	-- Value used at the extra-large breakpoint.
	xl: T,
	-- Optional value used at the double-extra-large breakpoint.
	xxl: T?,
}

export type NativeCommonProps = {
	-- **Engine**: Point within the element that `Position` is measured from.
	AnchorPoint: Bindable<Vector2>?,
	-- **Engine**: Order of this element among siblings in a layout.
	LayoutOrder: Bindable<number>?,
	-- **Engine**: Position of the element.
	Position: Bindable<UDim2>?,
	-- **Engine**: Whether the element is visible.
	Visible: Bindable<boolean>?,
	-- **Engine**: Draw order among siblings. Higher values render in front.
	ZIndex: Bindable<number>?,
}

export type NativeCallbackProps = {
	-- Called with the element when `AbsoluteSize` changes.
	onAbsoluteSizeChanged: (instance: GuiObject) -> ()?,
	-- Called with the element when `AbsolutePosition` changes.
	onAbsolutePositionChanged: (instance: GuiObject) -> ()?,
}

export type CommonProps = {
	-- Test identifier. Applied as a style tag and removed from the instance.
	testId: string?,
} & NativeCallbackProps & NativeCommonProps

export type FlexItem = {
	-- **Engine**: How this element participates in a parent UIFlex layout.
	FlexMode: Bindable<Enum.UIFlexMode>?,
	-- **Engine**: Share of extra space this element grows into.
	GrowRatio: Bindable<number>?,
	-- **Engine**: Share of overflow this element shrinks by.
	ShrinkRatio: Bindable<number>?,
	-- **Engine**: Cross-axis alignment of this element in a flex line.
	ItemLineAlignment: Bindable<Enum.ItemLineAlignment>?,
}

export type SizeConstraint = {
	-- **Engine**: Minimum size of the element.
	MinSize: Bindable<Vector2?>,
	-- **Engine**: Maximum size of the element.
	MaxSize: Bindable<Vector2?>,
}

export type Slice = {
	-- Nine-slice center rect. Scaled to the Foundation image resolution when the image is a Foundation asset.
	center: Rect?,
	-- Nine-slice scale. Divided by the Foundation image resolution scale for Foundation assets.
	scale: number?,
}

export type Stroke = {
	-- **Engine**: Stroke color.
	Color: Bindable<Color3>?,
	-- **Engine**: Stroke thickness in pixels.
	Thickness: Bindable<number>?,
	-- **Engine**: Stroke transparency.
	Transparency: Bindable<number>?,
	-- **Engine**: How stroke corners are joined.
	LineJoinMode: Bindable<Enum.LineJoinMode>?,
	-- **Engine**: Whether the stroke sits inside, center, or outside the bounds.
	BorderStrokePosition: Bindable<Enum.BorderStrokePosition>?,
}

export type ColorStyleValue = {
	-- Color channel written to the matching `*Color3` property, such as `BackgroundColor3` or `TextColor3`. Optional because token types omit it.
	Color3: Color3?,
	-- Transparency channel written to the matching `*Transparency` property, such as `BackgroundTransparency` or `TextTransparency`. Optional because token types omit it.
	Transparency: number?,
}

export type ColorStyle = Bindable<ColorStyleValue>

-- Partial HSV for color picker. Used when the initial color is HSV-only.
export type PartialColorHSV = {
	-- Hue from 0 to 360.
	H: number,
	-- Optional saturation from 0 to 100.
	S: number?,
	-- Optional value from 0 to 100.
	V: number?,
}

export type ItemId = string | number
export type OnItemActivated = (id: ItemId) -> ()

export type StateLayer = {
	-- When true, the state overlay is inset from the element bounds.
	inset: boolean?,
	-- How the state color is blended.
	mode: Bindable<StateLayerMode>?,
	-- Which interaction states show the overlay.
	affordance: Bindable<StateLayerAffordance>?,
}

-- SelectionProps are broken out such that any Foundation component that is selectable
-- can have these properties without needing to include the entire Selection type
export type SelectionProps = {
	-- **Engine**: Whether gamepad selection can focus this element.
	Selectable: Bindable<boolean>?,
	-- **Engine**: Element to focus when navigating up.
	NextSelectionUp: Bindable<ReactRefGuiObject>?,
	-- **Engine**: Element to focus when navigating down.
	NextSelectionDown: Bindable<ReactRefGuiObject>?,
	-- **Engine**: Element to focus when navigating left.
	NextSelectionLeft: Bindable<ReactRefGuiObject>?,
	-- **Engine**: Element to focus when navigating right.
	NextSelectionRight: Bindable<ReactRefGuiObject>?,
}

-- Unfortunately SelectionProps can't be unioned with Selection
-- without anlyze becoming incredibly unhappy, so we just duplicate them.
export type Selection = {
	-- **Engine**: Whether gamepad selection can focus this element.
	Selectable: Bindable<boolean>?,
	-- **Engine**: Element to focus when navigating up.
	NextSelectionUp: Bindable<ReactRefGuiObject>?,
	-- **Engine**: Element to focus when navigating down.
	NextSelectionDown: Bindable<ReactRefGuiObject>?,
	-- **Engine**: Element to focus when navigating left.
	NextSelectionLeft: Bindable<ReactRefGuiObject>?,
	-- **Engine**: Element to focus when navigating right.
	NextSelectionRight: Bindable<ReactRefGuiObject>?,

	-- Selection image. Used when set; otherwise Foundation uses the element cursor.
	SelectionImageObject: Bindable<ReactRefGuiObject>?,
	-- **Engine**: Order in which this element is visited during selection.
	SelectionOrder: Bindable<number>?,
}

export type SelectionGroup = {
	-- **Engine**: How selection moves when navigating up out of this group.
	SelectionBehaviorUp: Bindable<Enum.SelectionBehavior>?,
	-- **Engine**: How selection moves when navigating down out of this group.
	SelectionBehaviorDown: Bindable<Enum.SelectionBehavior>?,
	-- **Engine**: How selection moves when navigating left out of this group.
	SelectionBehaviorLeft: Bindable<Enum.SelectionBehavior>?,
	-- **Engine**: How selection moves when navigating right out of this group.
	SelectionBehaviorRight: Bindable<Enum.SelectionBehavior>?,
}

export type Tags = string | { [string]: boolean }

export type BaseInteractableProps = {
	-- The state layer configuration for the element.
	stateLayer: StateLayer?,
	-- A callback that is called when the element is activated with the primary input object.
	onActivated: ((self: GuiObject, inputObject: InputObject, clickCount: number) -> ())?,
	-- A callback that is called when the element is activated with the secondary input object.
	onSecondaryActivated: ((self: GuiObject, inputObject: InputObject) -> ())?,
	-- A callback that is called when the state of the element changes.
	onStateChanged: StateChangedCallback?,
	-- Whether or not the element is disabled. This can't be a bindable due to handling state updates.
	isDisabled: boolean?,
}

export type BaseGuiObjectProps = {
	-- Aspect ratio constraint. A number or binding sets the ratio only; a table can also set aspect type and dominant axis.
	aspectRatio: AspectRatio?,
	-- Corner radius. A number is a pixel offset on every corner; a UDim or binding applies to every corner; a table sets each corner.
	cornerRadius: CornerRadius?,
	-- Flex item settings forwarded to a UIFlexItem.
	flexItem: FlexItem?,
	-- List layout settings. A UIListLayout is created only when `FillDirection` is set.
	layout: ListLayout?,
	-- Padding. A number, UDim, or binding applies to every side; a Vector2 or UDim2 sets horizontal (X) and vertical (Y) padding; a table sets each side.
	padding: Padding?,
	-- Uniform scale applied with a UIScale.
	scale: Bindable<number>?,
	-- Minimum and maximum size, applied with a UISizeConstraint.
	sizeConstraint: SizeConstraint?,
	-- Stroke settings forwarded to a UIStroke.
	stroke: Stroke?,

	-- Background color and transparency, written to `BackgroundColor3` and `BackgroundTransparency`.
	backgroundStyle: ColorStyle?,
	-- Gamepad selection targets and order.
	selection: Selection?,
	-- Selection cursor. Used as `SelectionImageObject` when selection does not set one.
	cursor: Cursor?,
	-- When true or a binding, sets `SelectionGroup`. A table also sets each selection behavior.
	selectionGroup: (Bindable<boolean> | SelectionGroup)?,

	-- **Engine**: Whether this element is auto-localized.
	AutoLocalize: Bindable<boolean>?,
	-- **Engine**: Which axes size automatically to content.
	AutomaticSize: Bindable<Enum.AutomaticSize>?,
	-- **Engine**: Border thickness in pixels.
	BorderSizePixel: Bindable<number>?,
	-- **Engine**: Border color.
	BorderColor3: Bindable<Color3>?,
	-- **Engine**: How the border is inset relative to the bounds.
	BorderMode: Bindable<Enum.BorderMode>?,
	-- **Engine**: Whether descendants are clipped to this element's bounds.
	ClipsDescendants: Bindable<boolean>?,
	-- TODO: update when InputSink is available in all engine builds
	-- InputSink: Bindable<Enum.InputSink>?,
	-- Forwarded to `InputSink` only when that engine property exists.
	InputSink: Bindable<any>?,
	-- **Engine**: Rotation in degrees.
	Rotation: Bindable<number>?,
	-- **Engine**: Size of the element.
	Size: Bindable<UDim2?>,
	-- **Engine**: How this element is sized relative to its parent.
	SizeConstraint: Bindable<Enum.SizeConstraint>?,

	-- Style tags applied to the element.
	tag: Tags?,
	-- Child elements.
	children: React.ReactNode?,
}

export type GuiObjectProps = BaseGuiObjectProps & BaseInteractableProps

export type TextInputCommonProps = {
	-- Input text value
	text: Bindable<string>,
	-- Ran when the input text changes
	onChanged: (text: string) -> (),
	-- The label shown alongside the text input
	label: string,
	-- Subcaption shown below the text input, red on error
	hint: string?,
	-- The size of the text input
	size: InputSize?,
	-- Style variant of the text input
	variant: InputVariant?,
	-- Defined width of the text input by default
	width: UDim?,
	-- What text should be shown in the input when there is no user input
	placeholder: string?,
	-- Whether the text input should be disabled
	isDisabled: boolean?,
	-- Whether the text input is required, true for "*", false for " (optional)", nil for nothing
	isRequired: boolean?,
	-- Whether to show the text input as erroneous
	hasError: boolean?,
	-- Whether the input has a clear button
	hasClearButton: boolean?,
	-- Behavior of the text input when focused. Mobile does not yet support Highlight behavior.
	focusBehavior: InputFocusBehavior?,
	-- Partial TextBox ref exposed via imperative handle
	textBoxRef: React.Ref<TextInputRef>?,
	-- Ran when textbox focus is gained
	onFocusGained: (() -> ())?,
	-- Ran when textbox focus is lost. The InputObject that caused focus to be lost is passed if available.
	onFocusLost: ((inputObject: InputObject?) -> ())?,
	-- Ref to the outermost container element of the internal text input
	inputRef: React.Ref<GuiObject>?,
}

export type InternalInputGroupProps = {
	-- Optional label rendered above the grouped inputs
	legend: string?,
	-- Size applied to the group and inherited by its inputs
	size: InputGroupSize?,
	-- Where the input sits relative to its label
	placement: InputPlacement?,
	-- Input items that make up the group.
	children: React.ReactNode?,
} & CommonProps

export type AspectRatioTable = {
	-- **Engine**: Width divided by height.
	AspectRatio: Bindable<number>,
	-- **Engine**: Whether the ratio fits inside the bounds or scales them.
	AspectType: Bindable<Enum.AspectType>?,
	-- **Engine**: Axis that stays fixed when the ratio is applied.
	DominantAxis: Bindable<Enum.DominantAxis>?,
}

export type AspectRatio = Bindable<number> | AspectRatioTable

export type CornerRadiusValue = Bindable<number | UDim>

export type CornerRadiusTable = {
	-- Top-left radius. A number is a pixel offset.
	topLeft: CornerRadiusValue?,
	-- Top-right radius. A number is a pixel offset.
	topRight: CornerRadiusValue?,
	-- Bottom-right radius. A number is a pixel offset.
	bottomRight: CornerRadiusValue?,
	-- Bottom-left radius. A number is a pixel offset.
	bottomLeft: CornerRadiusValue?,
}

export type CornerRadius = Bindable<UDim> | number | CornerRadiusTable

export type PaddingTable = {
	-- Top padding.
	top: Bindable<UDim>?,
	-- Bottom padding.
	bottom: Bindable<UDim>?,
	-- Left padding.
	left: Bindable<UDim>?,
	-- Right padding.
	right: Bindable<UDim>?,
}

export type Padding = Bindable<UDim>? | number | Vector2 | UDim2 | PaddingTable

export type ListLayout = {
	-- **Engine**: Direction items are laid out.
	FillDirection: Bindable<Enum.FillDirection>,
	-- **Engine**: Cross-axis alignment of items on a line.
	ItemLineAlignment: Bindable<Enum.ItemLineAlignment>?,
	-- **Engine**: Alignment of items along the horizontal axis.
	HorizontalAlignment: Bindable<Enum.HorizontalAlignment>?,
	-- **Engine**: How extra horizontal space is distributed.
	HorizontalFlex: Bindable<Enum.UIFlexAlignment>?,
	-- **Engine**: Alignment of items along the vertical axis.
	VerticalAlignment: Bindable<Enum.VerticalAlignment>?,
	-- **Engine**: How extra vertical space is distributed.
	VerticalFlex: Bindable<Enum.UIFlexAlignment>?,
	-- **Engine**: Gap between items.
	Padding: Bindable<UDim>?,
	-- **Engine**: Order used to sort children.
	SortOrder: Bindable<Enum.SortOrder>?,
	-- **Engine**: Whether items wrap onto additional lines.
	Wraps: Bindable<boolean>?,
}

export type FontFaceTable = {
	-- Font family name. Combined with weight and style into a Font.
	Family: string,
	-- Font weight. Combined with family and style into a Font.
	Weight: Enum.FontWeight,
	-- Font style. Combined with family and weight into a Font.
	Style: Enum.FontStyle,
}

export type FontFace = FontFaceTable | Bindable<Font> | Enum.Font

export type FontStyle = {
	-- Font face. A table is built into a Font; an `Enum.Font` is converted with `Font.fromEnum`.
	Font: FontFace?,
	-- Text size in pixels, written to `TextSize`. Also used to compute line-height padding.
	FontSize: number?,
	-- Line height multiplier, written to `LineHeight`. With `FontSize`, Foundation adds padding so the line box matches.
	LineHeight: number?,
}

export type InternalTextInputRef = {
	-- Returns whether the text input has focus.
	getIsFocused: () -> boolean,
	-- Focuses the text input.
	focus: () -> (),
	-- Releases focus from the text input.
	releaseFocus: () -> (),
	-- Returns the selection start index.
	getSelectionStart: () -> number,
	-- Returns the cursor position.
	getCursorPosition: () -> number,
	-- Sets the selection start index.
	setSelectionStart: (position: number) -> (),
	-- Sets the cursor position.
	setCursorPosition: (position: number) -> (),
}

export type TextInputRef = {
	-- Returns whether the text input has focus.
	getIsFocused: () -> boolean,
	-- Focuses the text input.
	focus: () -> (),
	-- Releases focus from the text input.
	releaseFocus: () -> (),
	-- Returns the selection start index.
	getSelectionStart: () -> number,
	-- Returns the cursor position.
	getCursorPosition: () -> number,
	-- Sets the selection start index.
	setSelectionStart: (position: number) -> (),
	-- Sets the cursor position.
	setCursorPosition: (position: number) -> (),
}

export type PopoverAnchor = GuiObject | MeasurableObject

type MeasurableObjectImpl = {
	-- Metatable index used by measurable object implementations.
	__index: MeasurableObjectImpl,
	-- Returns a signal that fires when the named measurable property changes.
	GetPropertyChangedSignal: (self: MeasurableObject, propertyName: string) -> MeasurableObjectSignal<any>,
	-- Updates the measured position.
	SetPosition: (self: MeasurableObject, position: Vector2) -> (),
	-- Updates the measured size.
	SetSize: (self: MeasurableObject, size: Vector2) -> (),
}

type MeasurableObjectSignalConnection = {
	-- Disconnects the measurable property listener.
	Disconnect: (self: MeasurableObjectSignalConnection) -> (),
}

export type MeasurableObjectSignal<T> = {
	-- Registers a callback and returns a disconnectable connection.
	Connect: (self: MeasurableObjectSignal<T>, callback: (value: T) -> ()) -> MeasurableObjectSignalConnection,
}

export type MeasurableObject = typeof(setmetatable(
	{} :: {
		-- Measured absolute position.
		AbsolutePosition: Vector2,
		-- Measured absolute size.
		AbsoluteSize: Vector2,
	},
	{} :: MeasurableObjectImpl
))

export type CursorConfig = {
	-- Corner radius of the cursor outline.
	radius: UDim?,
	-- Outset from the element in pixels. Expands the cursor's position and size.
	offset: number?,
	-- Thickness of the cursor stroke in pixels.
	borderWidth: number?,
}

export type Cursor = CursorType | CursorConfig

export type OverlayConfig = {
	-- **Engine**: Display order of the overlay ScreenGui. Defaults to the maximum layout order minus one.
	DisplayOrder: number?,
	-- Must stay nil so this config is not treated as a Gui instance.
	gui: nil,
}

return {}
