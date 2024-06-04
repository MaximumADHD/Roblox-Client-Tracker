--[[
	Interactable is a component that can be used as the base component that will handle and respond to Gui State changes using a callback function.
	It accepts all props that can be passed into a ImageButton or the props of the custom component that is passed in as the component prop.
]]

local Control = script.Parent
local Core = Control.Parent
local UIBlox = Core.Parent
local UIBloxConfig = require(UIBlox.UIBloxConfig)

local Packages = UIBlox.Parent

local shouldUseRefactorInteractable = UIBloxConfig.refactorInteractable or false

if shouldUseRefactorInteractable == false then
	return require(script.Parent.Interactable_DEPRECATED)
end

local Cryo = require(Packages.Cryo)
local React = require(Packages.React)

local ControlStateEnum = require(Core.Control.Enum.ControlState)
local ControlStateEventEnum = require(UIBlox.Core.Control.Enum.ControlStateEvent)
local useGuiControlState = require(Core.Control.Hooks.useGuiControlState)
local useInteractionFeedback = require(Core.Control.Hooks.useInteractionFeedback)

local ImageSetComponent = require(UIBlox.Core.ImageSet.ImageSetComponent)

type ControlState = ControlStateEnum.ControlState
export type ControlStateChangedCallback = useGuiControlState.ControlStateChangedCallback

type Table = { [any]: any }
export type Props = {
	-- The custom component to render as the base component. By default, it is an ImageButton.
	component: (React.ReactElement | string)?,

	-- Whether the component is disabled. This will also make the Active = false.
	isDisabled: boolean?,

	-- Whether the component is user interactable
	userInteractionEnabled: boolean?,

	-- Callback for when the control state changes. Note: Changing this function will reset the control state.
	onStateChanged: ControlStateChangedCallback,

	-- The children of the component
	children: Table?,

	-- The feedback type for interaction feedback manager
	feedbackType: string?,

	-- Note that this component can accept all valid properties of the Roblox ImageButton instance or the props of the custom component.
	[any]: any,
}

local function Interactable(props: Props, forwardedRef: React.Ref<Instance>)
	local guiObjectRef = React.useRef(nil)
	local isDisabled = React.useRef(nil) :: { current: boolean? }
	local triggerFeedback: any = if UIBloxConfig.enableInteractionFeedback then useInteractionFeedback() else nil

	-- This is a temporarily solution to handle the userInteractionEnabled prop until GuiState.NonInteractable is released
	-- userInteractionEnabled will just set a prop on an instance when GuiState.NonInteractable is released
	-- TODO: Refactor with GuiState.NonInteractable UISYS-2497
	local userInteractionEnabled =
		React.useRef(if props.userInteractionEnabled ~= nil then props.userInteractionEnabled else true)

	local onGuiStateChange = React.useCallback(function(oldState: ControlState, newState: ControlState)
		if UIBloxConfig.enableInteractionFeedback then
			triggerFeedback(props.feedbackType, oldState, newState)
		end
		if props.onStateChanged then
			props.onStateChanged(oldState, newState)
		end
	end, { props.onStateChanged, triggerFeedback, props.feedbackType } :: { any })

	local wrappedRef, guiStateTable = useGuiControlState(
		guiObjectRef :: React.Ref<Instance>,
		onGuiStateChange,
		userInteractionEnabled.current :: boolean
	)

	-- Copy ref onto forwardRef
	React.useImperativeHandle(forwardedRef, function()
		return guiObjectRef.current
	end, {})

	-- TODO: Refactor with GuiState.NonInteractable
	local wrappedActivated = React.useCallback(function(...)
		if userInteractionEnabled.current == false or props.isDisabled then
			return nil
		end
		if props[React.Event.Activated] then
			return props[React.Event.Activated](...)
		end
		return nil
	end, { props[React.Event.Activated], props.isDisabled } :: { any })

	React.useEffect(function()
		if props.isDisabled ~= nil then
			isDisabled.current = props.isDisabled
			if props.isDisabled then
				guiStateTable.events[ControlStateEventEnum.Disabled]()
			else
				guiStateTable.events[ControlStateEventEnum.Enabled]()
			end
		else
			if isDisabled.current == nil then
				isDisabled.current = false
				guiStateTable.events[ControlStateEventEnum.Enabled]()
			elseif isDisabled.current == true then
				isDisabled.current = false
				guiStateTable.events[ControlStateEventEnum.Enabled]()
			end
		end
	end, { props.isDisabled })

	-- TODO: Refactor with GuiState.NonInteractable UISYS-2497
	React.useEffect(function()
		if props.userInteractionEnabled ~= nil then
			userInteractionEnabled.current = props.userInteractionEnabled
		else
			userInteractionEnabled.current = true
		end
	end, { props.userInteractionEnabled })

	local component = props.component or ImageSetComponent.Button

	local mergedProps = Cryo.Dictionary.join(props, {
		ref = wrappedRef,
		onStateChanged = Cryo.None,
		isDisabled = Cryo.None,
		userInteractionEnabled = Cryo.None,
		feedbackType = Cryo.None,

		Active = if props.isDisabled ~= nil then not props.isDisabled else nil,
		[React.Event.Activated] = wrappedActivated,
	})

	return React.createElement(component, mergedProps)
end

return React.forwardRef(Interactable)
