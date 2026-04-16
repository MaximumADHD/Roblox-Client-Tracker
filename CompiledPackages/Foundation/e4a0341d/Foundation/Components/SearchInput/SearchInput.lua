local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local BuilderIcons = require(Packages.BuilderIcons)
local React = require(Packages.React)

local Components = Foundation.Components
local Icon = require(Components.Icon)
local InternalTextInput = require(Components.InternalTextInput)
local Types = require(Components.Types)
local View = require(Components.View)

local Constants = require(Foundation.Constants)
local Translator = require(Foundation.Utility.Localization.Translator)
local useScaledValue = require(Foundation.Utility.useScaledValue)
local useTextInputVariants = require(Foundation.Components.TextInput.useTextInputVariants)
local useTokens = require(Foundation.Providers.Style.useTokens)
local withCommonProps = require(Foundation.Utility.withCommonProps)
local withDefaults = require(Foundation.Utility.withDefaults)

local InputSize = require(Foundation.Enums.InputSize)
type InputSize = InputSize.InputSize

local InputVariant = require(Foundation.Enums.InputVariant)
type InputVariant = InputVariant.InputVariant

local Radius = require(Foundation.Enums.Radius)
type Radius = Radius.Radius

local SearchInputShape = require(Foundation.Enums.SearchInputShape)
type SearchInputShape = SearchInputShape.SearchInputShape

type Bindable<T> = Types.Bindable<T>

local SHAPE_TO_RADIUS: { [SearchInputShape]: Radius } = {
	[SearchInputShape.Pill] = Radius.Circle,
	[SearchInputShape.Box] = Radius.None,
}

export type SearchInputProps = {
	-- Typed text to display in the SearchInput
	text: Bindable<string>,
	-- Placeholder text for input (defaults to "Search")
	placeholder: string?,
	-- Called when the text is changed in the SearchInput
	onChanged: (text: string) -> (),
	-- Size of the SearchInput
	size: InputSize?,
	-- Whether the SearchInput is disabled
	isDisabled: boolean?,
	-- Whether the SearchInput is in an error state
	hasError: boolean?,
	-- Width of the SearchInput
	width: UDim?,
	-- Style variant of the SearchInput
	variant: InputVariant?,
	-- Shape of the SearchInput
	shape: SearchInputShape?,
	-- Called when the SearchInput gains focus
	onFocusGained: (() -> ())?,
	-- Called when the SearchInput loses focus
	onFocusLost: ((inputObject: InputObject?) -> ())?,
} & Types.CommonProps

local defaultProps = {
	size = InputSize.Medium,
	variant = InputVariant.Standard,
	shape = SearchInputShape.Pill,
	testId = "--foundation-search-input",
}

local function SearchInput(searchInputProps: SearchInputProps, ref: React.Ref<GuiObject>?)
	local props = withDefaults(searchInputProps, defaultProps)
	local tokens = useTokens()
	--[[
		https://roblox.atlassian.net/browse/UIBLOX-4297
		CLEAN AFTER CLEANING UP ALL 3 FLAGS: FFlagFoundationTextInputAlignStrokeBehavior, FFlagFoundationInternalTextInputVariants, FFlagFoundationInternalTextInputCornerRadius
	]]
	local textInputVariantProps =
		useTextInputVariants(tokens, props.size :: InputSize, props.variant, nil, nil, nil, nil, true)
	local defaultWidth = useScaledValue(Constants.DEFAULT_INPUT_FIELD_WIDTH_PIXELS)

	-- TODO: https://roblox.atlassian.net/browse/UIBLOX-4313 we should figure out if this should be default padding on InternalTextInput instead
	local searchIconPosition = React.useMemo(function()
		return UDim2.fromOffset(0, (textInputVariantProps.outerContainer.minHeight - tokens.Stroke.Standard) / 2)
	end, { textInputVariantProps.outerContainer.minHeight, tokens.Stroke.Standard } :: { unknown })

	return React.createElement(
		View,
		withCommonProps(props, {
			Size = if props.width
				then UDim2.new(props.width, UDim.new(0, 0))
				else UDim2.new(UDim.new(0, defaultWidth), UDim.new(0, 0)),
			tag = "auto-y",
		}),
		{
			Input = React.createElement(InternalTextInput, {
				forceEnableFlagsForSearchInput = true,
				ref = ref,
				hasError = props.hasError,
				isDisabled = props.isDisabled,
				text = props.text,
				size = props.size,
				radius = SHAPE_TO_RADIUS[props.shape],
				variant = props.variant,
				horizontalPadding = {
					left = textInputVariantProps.innerContainer.horizontalPadding,
					right = textInputVariantProps.innerContainer.horizontalPadding,
				},
				onChanged = props.onChanged,
				onFocus = props.onFocusGained,
				onFocusLost = props.onFocusLost,
				placeholder = if props.placeholder
					then props.placeholder
					else Translator:FormatByKey("CommonUI.Controls.Action.Search"),
				leadingElement = React.createElement(View, {
					Position = searchIconPosition,
					tag = "anchor-center-left auto-xy",
				}, {
					Icon = React.createElement(Icon, {
						name = BuilderIcons.Icon.MagnifyingGlass,
						size = props.size,
						testId = `{props.testId}--search-icon`,
					}),
				}),
				testId = `{props.testId}--input`,
			}),
		}
	)
end

return React.memo(React.forwardRef(SearchInput))
