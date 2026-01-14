local Foundation = script:FindFirstAncestor("Foundation")

local Packages = Foundation.Parent

local Dash = require(Packages.Dash)
local React = require(Packages.React)
local ReactIs = require(Packages.ReactIs)

local Flags = require(Foundation.Utility.Flags)
local Types = require(Foundation.Components.Types)
local getBackgroundStyleWithStateLayer = require(script.Parent.getBackgroundStyleWithStateLayer)
local getOriginalBackgroundStyle = require(script.Parent.getOriginalBackgroundStyle)
local getStateLayerStyle = require(script.Parent.getStateLayerStyle)
local useCursor = require(Foundation.Providers.Cursor.useCursor)
local useGuiControlState = require(Foundation.Utility.Control.useGuiControlState)
local useTokens = require(Foundation.Providers.Style.useTokens)
local withDefaults = require(Foundation.Utility.withDefaults)

local StateLayerAffordance = require(Foundation.Enums.StateLayerAffordance)
local StateLayerMode = require(Foundation.Enums.StateLayerMode)
type StateLayerMode = StateLayerMode.StateLayerMode
local ControlState = require(Foundation.Enums.ControlState)
type ControlState = ControlState.ControlState
type StateChangedCallback = Types.StateChangedCallback
type ColorStyle = Types.ColorStyle
type ColorStyleValue = Types.ColorStyleValue

-- TODO: https://roblox.atlassian.net/browse/UIBLOX-2446 make this union type
export type InteractableProps = {
	-- The component to render. After deprecation, many `BaseInteractableProps` could support bindings.
	component: (React.ReactElement | string)?,

	-- Interactable passes on any other props to the component
	[any]: any,
} & Types.BaseInteractableProps

local defaultProps = {
	component = "ImageButton",
	isDisabled = false,
}

--selene: allow(roblox_internal_custom_color)
local DEFAULT_GRAY = Color3.fromRGB(163, 162, 165)

local function Interactable(interactableProps: InteractableProps, forwardedRef: React.Ref<GuiObject>?)
	local props = withDefaults(interactableProps, defaultProps)
	local guiObjectRef = React.useRef(nil)
	local tokens = useTokens()
	local cursor = useCursor(props.cursor)
	local controlState, updateControlState = React.useBinding(ControlState.Initialize :: ControlState)
	local realBackgroundStyle = React.useRef(nil)

	local onStateChanged = React.useCallback(function(newState: ControlState)
		if controlState:getValue() == ControlState.Default and guiObjectRef.current ~= nil then
			local guiObjectColor3 = if Flags.FoundationDisableStylingPolyfill
				then guiObjectRef.current:GetStyled("BackgroundColor3")
				else guiObjectRef.current.BackgroundColor3
			local guiObjectTransparency = if Flags.FoundationDisableStylingPolyfill
				then guiObjectRef.current:GetStyled("BackgroundTransparency")
				else guiObjectRef.current.BackgroundTransparency
			if guiObjectColor3 ~= DEFAULT_GRAY or guiObjectTransparency ~= 0 then
				realBackgroundStyle.current = {
					Color3 = guiObjectColor3,
					Transparency = guiObjectTransparency,
				}
			end
		end
		updateControlState(newState)
		if props.onStateChanged ~= nil then
			props.onStateChanged(newState)
		end
	end, { props.onStateChanged })

	local originalBackgroundStyle = React.useMemo(function(): ColorStyle
		return getOriginalBackgroundStyle(props.BackgroundColor3, props.BackgroundTransparency)
	end, { props.BackgroundColor3, props.BackgroundTransparency } :: { unknown })

	local getBackgroundStyle = React.useCallback(
		function(guiState, backgroundStyle: ColorStyleValue): ColorStyleValue
			if
				guiState == ControlState.Initialize
				or guiState == ControlState.Default
				or guiState == ControlState.Disabled
				or (props.stateLayer and props.stateLayer.affordance == StateLayerAffordance.None)
			then
				return backgroundStyle
			end

			local finalBackgroundStyle = {
				Color3 = backgroundStyle.Color3,
				Transparency = backgroundStyle.Transparency,
			}

			if backgroundStyle.Color3 == nil then
				finalBackgroundStyle.Color3 = if realBackgroundStyle.current
					then realBackgroundStyle.current.Color3
					else nil
			end
			if backgroundStyle.Transparency == nil then
				finalBackgroundStyle.Transparency = if realBackgroundStyle.current
					then realBackgroundStyle.current.Transparency
					else nil
			end

			local stateLayerStyle = getStateLayerStyle(tokens, props.stateLayer, guiState)

			return getBackgroundStyleWithStateLayer(finalBackgroundStyle, stateLayerStyle)
		end,
		{
			tokens,
			props.BackgroundColor3,
			props.BackgroundTransparency,
			props.stateLayer,
		} :: { unknown }
	)

	local backgroundStyleBinding = React.useMemo(function()
		if ReactIs.isBinding(originalBackgroundStyle) then
			return React.joinBindings({
				controlState = controlState,
				backgroundStyle = originalBackgroundStyle :: React.Binding<ColorStyleValue>,
			}):map(function(values)
				return getBackgroundStyle(values.controlState, values.backgroundStyle)
			end)
		end

		return controlState:map(function(guiState)
			return getBackgroundStyle(guiState, originalBackgroundStyle :: ColorStyleValue)
		end :: (any) -> ColorStyleValue)
	end, { originalBackgroundStyle, controlState, getBackgroundStyle } :: { unknown })

	local wrappedRef = useGuiControlState(guiObjectRef, onStateChanged)

	React.useImperativeHandle(forwardedRef, function()
		return guiObjectRef.current
	end, {})

	local interactableComponentProps = {
		BackgroundColor3 = backgroundStyleBinding:map(function(backgroundStyle)
			return backgroundStyle.Color3
		end),
		BackgroundTransparency = backgroundStyleBinding:map(function(backgroundStyle)
			return backgroundStyle.Transparency
		end),
		Active = not props.isDisabled,
		Interactable = not props.isDisabled,
		[React.Event.Activated] = if not props.isDisabled then props.onActivated else nil,
		-- TODO: Replace with SecondaryActivated when available
		[React.Event.MouseButton2Click] = if not props.isDisabled then props.onSecondaryActivated else nil,
		ref = wrappedRef,
		SelectionImageObject = props.SelectionImageObject or cursor,
	}
	local mergedProps = Dash.union(props, interactableComponentProps)

	-- To avoid passing these props to the component, we set them to nil
	mergedProps.component = nil
	mergedProps.isDisabled = nil
	mergedProps.onActivated = nil
	mergedProps.onSecondaryActivated = nil
	mergedProps.onStateChanged = nil
	mergedProps.stateLayer = nil
	mergedProps.cursor = nil

	return React.createElement(props.component, mergedProps)
end

return React.memo(React.forwardRef(Interactable))
