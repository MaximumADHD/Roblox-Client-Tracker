local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local Flags = require(Foundation.Utility.Flags)

local React = require(Packages.React)
local Cryo = require(Packages.Cryo)

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
	local defaultPropsWithStyles = if Flags.FoundationStylingPolyfill
		then useStyledDefaults("View", viewProps.tag, DEFAULT_TAGS, defaultProps)
		else nil
	local props =
		withDefaults(viewProps, if Flags.FoundationStylingPolyfill then defaultPropsWithStyles else defaultProps)

	local defaultTags = DEFAULT_TAGS
	if Flags.FoundationMigrateStylingV2 then
		-- Once someone set the background it's their responsibility to provide both color and transparency. We negate the transparency added by gui-object-defaults to avoid UIBLOX-2074
		if props.backgroundStyle ~= nil then
			defaultTags = DEFAULT_TAGS_WITH_BG
		end
	end
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

	local componentProps = if isInteractable
		then Cryo.Dictionary.union(engineComponentProps, {
			component = engineComponent,
			onActivated = props.onActivated,
			onStateChanged = props.onStateChanged,
			stateLayer = props.stateLayer,
			isDisabled = props.isDisabled,
		})
		else engineComponentProps

	return React.createElement(component, componentProps, GuiObjectChildren(props))
end

return React.memo(React.forwardRef(View))
