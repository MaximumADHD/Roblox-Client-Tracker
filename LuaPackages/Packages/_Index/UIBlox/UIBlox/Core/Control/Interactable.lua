--[[
	Interactable is a component that can be used as the base component that will handle and respond to Gui State changes using a callback function.
	It accepts all props that can be passed into a ImageButton or the props of the custom component that is passed in as the component prop.
]]

local Control = script.Parent
local Core = Control.Parent
local UIBlox = Core.Parent
local Packages = UIBlox.Parent

local React = require(Packages.React)
local Foundation = require(Packages.Foundation)

local ControlStateEnum = require(Core.Control.Enum.ControlState)
local useGuiControlState = require(Core.Control.Hooks.useGuiControlState)

local ImageSetComponent = require(UIBlox.Core.ImageSet.ImageSetComponent)

type ControlState = ControlStateEnum.ControlState
export type ControlStateChangedCallback = useGuiControlState.ControlStateChangedCallback

export type Props = {
	-- The custom component to render as the base component. By default, it is an ImageButton.
	component: (React.ReactElement | string)?,

	-- Whether the component is disabled. This will also make the Active = false.
	isDisabled: boolean?,

	-- Whether the component is user interactable
	userInteractionEnabled: boolean?,

	-- Callback for when the control state changes. Note: Changing this function will reset the control state.
	onStateChanged: ControlStateChangedCallback?,

	-- The children of the component
	children: { [string]: React.ReactNode }?,

	-- The feedback type for interaction feedback manager
	feedbackType: string?,

	-- Note that this component can accept all valid properties of the Roblox ImageButton instance or the props of the custom component.
	[any]: any,
}

local stateLayerProps = {
	affordance = Foundation.Enums.StateLayerAffordance.None,
}

local function Interactable(props: Props, forwardedRef: React.Ref<Instance>)
	local newProps = table.clone(props)
	newProps.isDisabled = newProps.isDisabled or newProps.userInteractionEnabled == false
	newProps.userInteractionEnabled = nil
	newProps.ref = forwardedRef
	newProps.component = newProps.component or ImageSetComponent.Button
	newProps.stateLayer = stateLayerProps

	local previousState = React.useRef(ControlStateEnum.Initialize)
	if props.onStateChanged then
		newProps.onStateChanged = function(newState: ControlState)
			local controlState = ControlStateEnum[newState]
			props.onStateChanged(previousState.current, controlState)
			previousState.current = controlState
		end
	end

	return React.createElement(Foundation.UNSTABLE.Interactable, newProps)
end

return React.forwardRef(Interactable) :: any
