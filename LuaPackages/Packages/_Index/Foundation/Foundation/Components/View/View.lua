local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local Flags = require(Foundation.Utility.Flags)

local React = require(Packages.React)
local Dash = require(Packages.Dash)

local Logger = require(Foundation.Utility.Logger)

local Interactable = require(Foundation.Components.Interactable)

local Types = require(Foundation.Components.Types)
local withDefaults = require(Foundation.Utility.withDefaults)
local useDefaultTags = require(Foundation.Utility.useDefaultTags)
local withGuiObjectProps = require(Foundation.Utility.withGuiObjectProps)
local useStyledDefaults = require(Foundation.Utility.useStyledDefaults)
local GuiObjectChildren = require(Foundation.Utility.GuiObjectChildren)

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

local DEFAULT_TAGS = "gui-object-defaults"
local DEFAULT_TAGS_WITH_BG = `{DEFAULT_TAGS} x-default-transparency`

local function View(viewProps: ViewProps, ref: React.Ref<GuiObject>?)
	local defaultPropsWithStyles = if not Flags.FoundationDisableStylingPolyfill
		then useStyledDefaults("View", viewProps.tag, DEFAULT_TAGS, defaultProps)
		else nil

	local props = withDefaults(
		viewProps,
		if not Flags.FoundationDisableStylingPolyfill then defaultPropsWithStyles else defaultProps
	)

	local defaultTags = if props.backgroundStyle ~= nil then DEFAULT_TAGS_WITH_BG else DEFAULT_TAGS

	local tagsWithDefaults = useDefaultTags(props.tag, defaultTags)
	local tag = useStyleTags(tagsWithDefaults)

	local isInteractable = props.onStateChanged ~= nil or props.onActivated ~= nil or props.onSecondaryActivated ~= nil

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
			if isInteractable and not props.isDisabled then
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

	local viewComponentProps = {
		component = engineComponent,
		onActivated = props.onActivated,
		onSecondaryActivated = props.onSecondaryActivated,
		onStateChanged = props.onStateChanged,
		stateLayer = props.stateLayer,
		isDisabled = props.isDisabled,
		cursor = props.cursor,
	}
	local componentProps = if isInteractable
		then Dash.union(engineComponentProps, viewComponentProps)
		else engineComponentProps

	return React.createElement(component, componentProps, GuiObjectChildren(props))
end

return React.memo(React.forwardRef(View))
