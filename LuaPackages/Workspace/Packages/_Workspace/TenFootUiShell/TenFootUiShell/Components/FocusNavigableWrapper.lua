local TenFootUiShell = script:FindFirstAncestor("TenFootUiShell")
local Packages = TenFootUiShell.Parent
local React = require(Packages.React)
local ReactFocusNavigation = require(Packages.ReactFocusNavigation)

type ReactNode = React.ReactNode

type FocusBumperProps = {
	onFocus: () -> (),
	position: UDim2,
	size: UDim2,
}

local function FocusBumper(props: FocusBumperProps)
	local eventHandlerMapRef = ReactFocusNavigation.useEventHandler("focus", props.onFocus, "Target")
	return React.createElement("Frame", {
		Name = "FocusBumper",
		Position = props.position,
		Size = props.size,
		Selectable = true,
		BackgroundTransparency = 1,
		ref = eventHandlerMapRef,
	})
end

export type Props = {
	position: UDim2?,
	size: UDim2?,
	children: ReactNode?,
	onSelectStart: () -> ()?,
	onSelectEnd: () -> ()?,
	onSelectUp: () -> ()?,
	onSelectDown: () -> ()?,
}

--[[
	This component is used to wrap the SurfaceGui instances that make up the 
	10ft UI navigation shell. It's purpose is to allow us to move the selection
	cursor from one SurfaceGui to another and to register the root focus-navigation 
	for each of the SurfaceGuis.

	TODO: Remove in CLIXBOX-2955
]]
local FocusNavigableWrapper = React.forwardRef(function(props: Props, ref: React.Ref<Instance>?)
	return React.createElement(
		"Frame",
		{
			Name = "FocusNavigableWrapper",
			Position = props.position or UDim2.new(0, 0, 0, 0),
			Size = props.size or UDim2.new(1, 0, 1, 0),
			BackgroundTransparency = 1,
		},
		React.createElement("Frame", {
			Name = "FocusNavigableWrapperInner",
			Position = props.position or UDim2.new(0, 0, 0, 0),
			Size = props.size or UDim2.new(1, 0, 1, 0),
			BackgroundTransparency = 1,
			SelectionBehaviorUp = Enum.SelectionBehavior.Stop,
			SelectionBehaviorDown = Enum.SelectionBehavior.Stop,
			SelectionBehaviorLeft = Enum.SelectionBehavior.Stop,
			SelectionBehaviorRight = Enum.SelectionBehavior.Stop,
			ref = ref,
		}, props.children),
		props.onSelectStart
			and React.createElement(
				FocusBumper,
				{ onFocus = props.onSelectStart, position = UDim2.new(0, 0, 0, 0), size = UDim2.new(0, 1, 1, 0) }
			),
		props.onSelectEnd
			and React.createElement(
				FocusBumper,
				{ onFocus = props.onSelectEnd, position = UDim2.new(1, -1, 0, 0), size = UDim2.new(0, 1, 1, 0) }
			),
		props.onSelectUp
			and React.createElement(
				FocusBumper,
				{ onFocus = props.onSelectUp, position = UDim2.new(0, 0, 0, 0), size = UDim2.new(1, 0, 0, 1) }
			),
		props.onSelectDown
			and React.createElement(
				FocusBumper,
				{ onFocus = props.onSelectDown, position = UDim2.new(0, 0, 1, -1), size = UDim2.new(1, 0, 0, 1) }
			)
	)
end)
return FocusNavigableWrapper
