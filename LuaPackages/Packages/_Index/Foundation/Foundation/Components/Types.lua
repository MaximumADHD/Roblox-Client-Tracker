local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

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

local InputSize = require(Foundation.Enums.InputSize)
type InputSize = InputSize.InputSize

export type ActionProps = {
	onActivated: () -> (),
	variant: ButtonVariant?,
	text: string,
}

local React = require(Packages.React)

export type Bindable<T> = T | React.Binding<T>

type ReactRefGuiObject = React.Ref<GuiObject>

export type ResponsiveValue<T> = {
	xs: T,
	sm: T,
	md: T,
	lg: T,
	xl: T,
	xxl: T?,
}

export type NativeCommonProps = {
	AnchorPoint: Bindable<Vector2>?,
	LayoutOrder: Bindable<number>?,
	Position: Bindable<UDim2>?,
	Visible: Bindable<boolean>?,
	ZIndex: Bindable<number>?,
}

export type NativeCallbackProps = {
	onAbsoluteSizeChanged: (instance: GuiObject) -> ()?,
	onAbsolutePositionChanged: (instance: GuiObject) -> ()?,
}

export type CommonProps = {
	testId: string?,
} & NativeCallbackProps & NativeCommonProps

export type FlexItem = {
	FlexMode: Bindable<Enum.UIFlexMode>?,
	GrowRatio: Bindable<number>?,
	ShrinkRatio: Bindable<number>?,
	ItemLineAlignment: Bindable<Enum.ItemLineAlignment>?,
}

export type SizeConstraint = {
	MinSize: Bindable<Vector2?>,
	MaxSize: Bindable<Vector2?>,
}

export type Slice = {
	center: Rect?,
	scale: number?,
}

export type Stroke = {
	Color: Bindable<Color3>?,
	Thickness: Bindable<number>?,
	Transparency: Bindable<number>?,
	LineJoinMode: Bindable<Enum.LineJoinMode>?,
	BorderStrokePosition: Bindable<Enum.BorderStrokePosition>?,
}

export type ColorStyleValue = {
	-- Both values are optional because of token types, but should be required.
	Color3: Color3?,
	Transparency: number?,
}

export type ColorStyle = Bindable<ColorStyleValue>

export type ItemId = string | number
export type OnItemActivated = (id: ItemId) -> ()

export type StateLayer = {
	inset: boolean?,
	mode: StateLayerMode?,
	affordance: StateLayerAffordance?,
}

-- SelectionProps are broken out such that any Foundation component that is selectable
-- can have these properties without needing to include the entire Selection type
export type SelectionProps = {
	Selectable: Bindable<boolean>?,
	NextSelectionUp: Bindable<ReactRefGuiObject>?,
	NextSelectionDown: Bindable<ReactRefGuiObject>?,
	NextSelectionLeft: Bindable<ReactRefGuiObject>?,
	NextSelectionRight: Bindable<ReactRefGuiObject>?,
}

-- Unfortunately SelectionProps can't be unioned with Selection
-- without anlyze becoming incredibly unhappy, so we just duplicate them.
export type Selection = {
	-- SelectionProps
	Selectable: Bindable<boolean>?,
	NextSelectionUp: Bindable<ReactRefGuiObject>?,
	NextSelectionDown: Bindable<ReactRefGuiObject>?,
	NextSelectionLeft: Bindable<ReactRefGuiObject>?,
	NextSelectionRight: Bindable<ReactRefGuiObject>?,

	-- Additional Selection properties
	SelectionImageObject: Bindable<ReactRefGuiObject>?,
	SelectionOrder: Bindable<number>?,
}

export type SelectionGroup = {
	SelectionBehaviorUp: Bindable<Enum.SelectionBehavior>?,
	SelectionBehaviorDown: Bindable<Enum.SelectionBehavior>?,
	SelectionBehaviorLeft: Bindable<Enum.SelectionBehavior>?,
	SelectionBehaviorRight: Bindable<Enum.SelectionBehavior>?,
}

export type Tags = string | { [string]: boolean }

export type BaseInteractableProps = {
	-- The state layer configuration for the element.
	stateLayer: StateLayer?,
	-- A callback that is called when the element is activated with the primary input object.
	onActivated: ((self: GuiObject, inputObject: InputObject, clickCount: number) -> ())?,
	-- A callback that is called when the element is activated with the secondary input object.
	-- Currently, this is only used for right-click. When SecondaryActivated is enabled, this will be used for left-click.
	onSecondaryActivated: ((self: GuiObject, inputObject: InputObject) -> ())?,
	-- A callback that is called when the state of the element changes.
	onStateChanged: StateChangedCallback?,
	-- Whether or not the element is disabled. This can't be a bindable due to handling state updates.
	isDisabled: boolean?,
}

export type BaseGuiObjectProps = {
	aspectRatio: AspectRatio?,
	cornerRadius: Bindable<UDim>?,
	flexItem: FlexItem?,
	layout: ListLayout?,
	padding: Padding?,
	scale: Bindable<number>?,
	sizeConstraint: SizeConstraint?,
	stroke: Stroke?,

	backgroundStyle: ColorStyle?,
	selection: Selection?,
	cursor: Cursor?,
	selectionGroup: (Bindable<boolean> | SelectionGroup)?,

	AutoLocalize: Bindable<boolean>?,
	AutomaticSize: Bindable<Enum.AutomaticSize>?,
	BorderSizePixel: Bindable<number>?,
	BorderColor3: Bindable<Color3>?,
	BorderMode: Bindable<Enum.BorderMode>?,
	ClipsDescendants: Bindable<boolean>?,
	Rotation: Bindable<number>?,
	Size: Bindable<UDim2?>,
	SizeConstraint: Bindable<Enum.SizeConstraint>?,

	tag: Tags?,
	children: React.ReactNode?,
}

export type GuiObjectProps = BaseGuiObjectProps & BaseInteractableProps

export type TextInputCommonProps = {
	-- Input text value
	text: string,
	-- Ran when the input text changes
	onChanged: (text: string) -> (),
	-- The label shown alongside the TextArea
	label: string,
	-- Subcaption shown below the text input, red on error
	hint: string?,
	-- The size of the TextArea input
	size: InputSize?,
	-- Defined width of the TextArea by default
	width: UDim?,
	-- What text should be shown in the TextArea when there is no user input
	placeholder: string?,
	-- Whether the TextArea should be disabled to input
	isDisabled: boolean?,
	-- Whether the input is required, true for "*", false for " (optional)", nil for nothing
	isRequired: boolean?,
	-- Whether to show the TextArea input as erroneous
	hasError: boolean?,
	-- Partial TextBox ref exposed via imperative handle
	textBoxRef: React.Ref<TextInputRef>?,
	-- Ran when textbox focus is gained
	onFocusGained: (() -> ())?,
	-- Ran when textbox focus is lost
	onFocusLost: (() -> ())?,
}

export type AspectRatioTable = {
	AspectRatio: Bindable<number>,
	AspectType: Bindable<Enum.AspectType>?,
	DominantAxis: Bindable<Enum.DominantAxis>?,
}

export type AspectRatio = Bindable<number> | AspectRatioTable

export type PaddingTable = {
	top: Bindable<UDim>?,
	bottom: Bindable<UDim>?,
	left: Bindable<UDim>?,
	right: Bindable<UDim>?,
}

export type Padding = Bindable<UDim>? | number | Vector2 | UDim2 | PaddingTable

export type ListLayout = {
	FillDirection: Bindable<Enum.FillDirection>,
	ItemLineAlignment: Bindable<Enum.ItemLineAlignment>?,
	HorizontalAlignment: Bindable<Enum.HorizontalAlignment>?,
	HorizontalFlex: Bindable<Enum.UIFlexAlignment>?,
	VerticalAlignment: Bindable<Enum.VerticalAlignment>?,
	VerticalFlex: Bindable<Enum.UIFlexAlignment>?,
	Padding: Bindable<UDim>?,
	SortOrder: Bindable<Enum.SortOrder>?,
	Wraps: Bindable<boolean>?,
}

export type FontFaceTable = {
	Family: string,
	Weight: Enum.FontWeight,
	Style: Enum.FontStyle,
}

export type FontFace = FontFaceTable | Bindable<Font> | Enum.Font

export type FontStyle = {
	Font: FontFace?,
	FontSize: number?,
	LineHeight: number?,
}

export type InternalTextInputRef = {
	getIsFocused: () -> boolean,
	focus: () -> (),
	releaseFocus: () -> (),
	setHover: (isHovering: boolean) -> (),
	getSelectionStart: () -> number,
	getCursorPosition: () -> number,
	setSelectionStart: (position: number) -> (),
	setCursorPosition: (position: number) -> (),
}

export type TextInputRef = {
	getIsFocused: () -> boolean,
	focus: () -> (),
	releaseFocus: () -> (),
}

export type PopoverAnchor = GuiObject | MeasurableObject

type MeasurableObjectImpl = {
	__index: MeasurableObjectImpl,
	GetPropertyChangedSignal: (self: MeasurableObject, propertyName: string) -> MeasurableObjectSignal<any>,
	SetPosition: (self: MeasurableObject, position: Vector2) -> (),
	SetSize: (self: MeasurableObject, size: Vector2) -> (),
}

type MeasurableObjectSignalConnection = {
	Disconnect: (self: MeasurableObjectSignalConnection) -> (),
}

export type MeasurableObjectSignal<T> = {
	Connect: (self: MeasurableObjectSignal<T>, callback: (value: T) -> ()) -> MeasurableObjectSignalConnection,
}

export type MeasurableObject = typeof(setmetatable(
	{} :: { AbsolutePosition: Vector2, AbsoluteSize: Vector2 },
	{} :: MeasurableObjectImpl
))

export type CursorConfig = {
	radius: UDim?,
	offset: number?,
	borderWidth: number?,
}

export type Cursor = CursorType | CursorConfig

export type OverlayConfig = {
	DisplayOrder: number?,
	gui: nil,
}

return {}
