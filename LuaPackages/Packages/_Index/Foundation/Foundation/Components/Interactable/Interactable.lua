local Foundation = script:FindFirstAncestor("Foundation")

local Packages = Foundation.Parent

local Cryo = require(Packages.Cryo)
local React = require(Packages.React)
local ReactIs = require(Packages.ReactIs)

local Types = require(Foundation.Components.Types)
local useGuiControlState = require(Foundation.Utility.Control.useGuiControlState)
local withDefaults = require(Foundation.Utility.withDefaults)
local useCursor = require(Foundation.Providers.Cursor.useCursor)
local useTokens = require(Foundation.Providers.Style.useTokens)
local getOriginalBackgroundStyle = require(script.Parent.getOriginalBackgroundStyle)
local getBackgroundStyleWithStateLayer = require(script.Parent.getBackgroundStyleWithStateLayer)
local getStateLayerStyle = require(script.Parent.getStateLayerStyle)

local StateLayerAffordance = require(Foundation.Enums.StateLayerAffordance)
local StateLayerMode = require(Foundation.Enums.StateLayerMode)
type StateLayerMode = StateLayerMode.StateLayerMode
local ControlState = require(Foundation.Enums.ControlState)
type ControlState = ControlState.ControlState
type StateChangedCallback = Types.StateChangedCallback
type ColorStyle = Types.ColorStyle
type ColorStyleValue = Types.ColorStyleValue

export type InteractableProps = {
	component: (React.ReactElement | string)?,
	isDisabled: boolean?,
	userInteractionEnabled: boolean?,
	onActivated: () -> ()?,
	onStateChanged: StateChangedCallback?,
	stateLayer: Types.StateLayer?,

	-- Interactable passes on any other props to the component
	[any]: any,
}

local defaultProps = {
	component = "ImageButton",
	isDisabled = false,
	userInteractionEnabled = true,
}

local DEFAULT_GRAY = Color3.fromRGB(163, 162, 165)

local function Interactable(interactableProps: InteractableProps, forwardedRef: React.Ref<GuiObject>?)
	local props = withDefaults(interactableProps, defaultProps)
	local guiObjectRef = React.useRef(nil)
	local tokens = useTokens()
	local cursor = useCursor()
	local controlState, updateControlState = React.useBinding(ControlState.Initialize :: ControlState)
	local realBackgroundStyle = React.useRef(nil)

	local onStateChanged = React.useCallback(function(newState: ControlState)
		if controlState:getValue() == ControlState.Default and guiObjectRef.current ~= nil then
			if guiObjectRef.current.BackgroundColor3 ~= DEFAULT_GRAY or guiObjectRef.current.Transparency ~= 0 then
				realBackgroundStyle.current = {
					Color3 = guiObjectRef.current.BackgroundColor3,
					Transparency = guiObjectRef.current.BackgroundTransparency,
				}
			end
		end
		updateControlState(newState)
		if props.onStateChanged ~= nil then
			props.onStateChanged(newState)
		end
	end, { props.onStateChanged })

	local onActivated = React.useCallback(function()
		if not props.isDisabled and props.userInteractionEnabled and props.onActivated ~= nil then
			props.onActivated()
		end
	end, { props.isDisabled :: any, props.onActivated })

	local originalBackgroundStyle = React.useMemo(function(): ColorStyle
		return getOriginalBackgroundStyle(props.BackgroundColor3, props.BackgroundTransparency)
	end, { props.BackgroundColor3, props.BackgroundTransparency })

	local getBackgroundStyle = React.useCallback(
		function(guiState, backgroundStyle: ColorStyleValue, isDisabled: boolean): ColorStyleValue
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
			props.isDisabled :: any,
			tokens,
			props.BackgroundColor3,
			props.BackgroundTransparency,
			props.stateLayer,
		}
	)

	local backgroundStyleBinding = React.useMemo(function()
		if ReactIs.isBinding(originalBackgroundStyle) then
			return React.joinBindings({ controlState = controlState, backgroundStyle = originalBackgroundStyle })
				:map(function(values)
					return getBackgroundStyle(values.controlState, values.backgroundStyle, props.isDisabled)
				end)
		end

		return controlState:map(function(guiState)
			return getBackgroundStyle(guiState, originalBackgroundStyle :: ColorStyleValue, props.isDisabled)
		end :: (any) -> ColorStyleValue)
	end, { originalBackgroundStyle :: any, controlState, getBackgroundStyle, props.isDisabled })

	-- This is a temporarily solution to handle the userInteractionEnabled prop until GuiState.NonInteractable is released
	-- userInteractionEnabled will just set a prop on an instance when GuiState.NonInteractable is released
	-- TODO: Refactor with GuiState.NonInteractable UISYS-2497
	local wrappedRef, guiStateTable = useGuiControlState(guiObjectRef, onStateChanged, props.userInteractionEnabled)

	React.useImperativeHandle(forwardedRef, function()
		return guiObjectRef.current
	end, {})

	React.useEffect(function()
		if props.isDisabled then
			guiStateTable.events.Disabled()
		else
			guiStateTable.events.Enabled()
		end
	end, { props.isDisabled :: any, guiStateTable })

	local mergedProps: any = Cryo.Dictionary.union(props, {
		BackgroundColor3 = backgroundStyleBinding:map(function(backgroundStyle)
			return backgroundStyle.Color3
		end),
		BackgroundTransparency = backgroundStyleBinding:map(function(backgroundStyle)
			return backgroundStyle.Transparency
		end),
		Active = not props.isDisabled,
		[React.Event.Activated] = if not props.isDisabled then onActivated else nil,
		ref = wrappedRef,
		SelectionImageObject = props.SelectionImageObject or cursor,
	})
	mergedProps.component = nil
	mergedProps.isDisabled = nil
	mergedProps.userInteractionEnabled = nil
	mergedProps.onActivated = nil
	mergedProps.onStateChanged = nil
	mergedProps.stateLayer = nil
	return React.createElement(props.component, mergedProps)
end

return React.memo(React.forwardRef(Interactable))
