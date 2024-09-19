local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local Flags = require(Foundation.Utility.Flags)

local React = require(Packages.React)
local Cryo = require(Packages.Cryo)

local Logger = require(Foundation.Utility.Logger)

local Interactable = require(Foundation.Components.Interactable)
local Padding = require(Foundation.Components.Padding)
local AspectRatio = require(Foundation.Components.AspectRatio)

local Types = require(Foundation.Components.Types)
local withDefaults = require(Foundation.Utility.withDefaults)
local useDefaultTags = require(Foundation.Utility.useDefaultTags)
local withGuiObjectProps = require(Foundation.Utility.withGuiObjectProps)
local useStyledDefaults = require(Foundation.Utility.useStyledDefaults)

local useStyleTags = require(Foundation.Providers.Style.useStyleTags)

local ControlState = require(Foundation.Enums.ControlState)
type ControlState = ControlState.ControlState
type StateChangedCallback = Types.StateChangedCallback
type Bindable<T> = Types.Bindable<T>
type ListLayout = Types.ListLayout
type GuiObjectProps = Types.GuiObjectProps
type CommonProps = Types.CommonProps

export type ViewProps = {
	GroupTransparency: Bindable<number>?,
} & GuiObjectProps & CommonProps

local defaultProps = {
	layout = {
		SortOrder = Enum.SortOrder.LayoutOrder,
	} :: ListLayout,
	AutoLocalize = false,
	BorderSizePixel = 0,
	isDisabled = false,
}

local defaultTags = "gui-object-defaults"

local function View(viewProps: ViewProps, ref: React.Ref<GuiObject>?)
	local defaultPropsWithStyles = if Flags.FoundationStylingPolyfill
		then useStyledDefaults("View", viewProps.tag, defaultTags, defaultProps)
		else nil
	local props =
		withDefaults(viewProps, if Flags.FoundationStylingPolyfill then defaultPropsWithStyles else defaultProps)

	local tagsWithDefaults = useDefaultTags(props.tag, defaultTags)
	local tag = useStyleTags(tagsWithDefaults)

	local isInteractable = props.onStateChanged ~= nil or props.onActivated ~= nil

	local usesCanvasGroup = React.useMemo(function()
		if props.GroupTransparency ~= nil then
			if type(props.GroupTransparency) == "table" then -- It's a binding
				return true -- The binding may change outside of this memo, so we must always use a CanvasGroup
			else
				return props.GroupTransparency > 0
			end
		end
		return false
	end, { props.GroupTransparency })

	local engineComponent = React.useMemo(function()
		if usesCanvasGroup then
			if isInteractable then
				Logger:warning("Some state changes are not supported with GroupTransparency")
			end
			return "CanvasGroup"
		elseif isInteractable then
			return "ImageButton" -- Required for some state changes to work, e.g. enter triggering SelectedPressed
		else
			return "Frame"
		end
	end, { usesCanvasGroup, isInteractable })

	local engineComponentProps = withGuiObjectProps(props, {
		-- When CanvasGroup and Frame support all states, we can remove this.
		AutoButtonColor = if engineComponent == "ImageButton" then false else nil,
		GroupTransparency = if usesCanvasGroup then props.GroupTransparency else nil,

		ref = ref,
		[React.Tag] = tag,
	})

	local component = if isInteractable then Interactable else engineComponent

	local componentProps = if isInteractable
		then Cryo.Dictionary.union(engineComponentProps, {
			component = engineComponent,
			onActivated = props.onActivated,
			onStateChanged = props.onStateChanged,
			stateLayer = props.stateLayer,
			isDisabled = props.isDisabled,
		})
		else engineComponentProps

	return React.createElement(component, componentProps, {
		Children = React.createElement(React.Fragment, {}, props.children) :: any,
		AspectRatio = if props.aspectRatio ~= nil
			then React.createElement(AspectRatio, { value = props.aspectRatio })
			else nil,
		CornerRadius = if props.cornerRadius ~= nil
			then React.createElement("UICorner", {
				CornerRadius = props.cornerRadius,
			})
			else nil,
		FlexItem = if props.flexItem ~= nil
			then React.createElement("UIFlexItem", {
				FlexMode = props.flexItem.FlexMode,
				GrowRatio = props.flexItem.GrowRatio,
				ShrinkRatio = props.flexItem.ShrinkRatio,
				ItemLineAlignment = props.flexItem.ItemLineAlignment,
			})
			else nil,
		ListLayout = if props.layout ~= nil and props.layout.FillDirection ~= nil
			then React.createElement("UIListLayout", {
				FillDirection = props.layout.FillDirection,
				ItemLineAlignment = props.layout.ItemLineAlignment,
				HorizontalAlignment = props.layout.HorizontalAlignment,
				HorizontalFlex = props.layout.HorizontalFlex,
				VerticalAlignment = props.layout.VerticalAlignment,
				VerticalFlex = props.layout.VerticalFlex,
				Padding = props.layout.Padding,
				SortOrder = props.layout.SortOrder,
				Wraps = props.layout.Wraps,
			})
			else nil,
		SizeConstraint = if props.sizeConstraint ~= nil
			then React.createElement("UISizeConstraint", props.sizeConstraint)
			else nil,
		Padding = if props.padding ~= nil then React.createElement(Padding, { value = props.padding }) else nil,
		Scale = if props.scale ~= nil
			then React.createElement("UIScale", {
				Scale = props.scale,
			})
			else nil,
		Stroke = if props.stroke ~= nil then React.createElement("UIStroke", props.stroke) else nil,
	})
end

return React.memo(React.forwardRef(View))
