export type IconTabItem = {
	-- Title of the IconTab
	title: string,
	-- Icon url string to show image, such as Home, Chat.
	icon: string,
	-- Action when clicking on this item
	onActivated: (() -> any)?,
	-- Either a functional or stateful component. Used instead of icon, such as Avatar
	-- Will be passed the following props:
	-- 	placement : Placement (enum)
	-- 	hovered : boolean
	-- 	selected : boolean
	-- 	pressed : boolean
	iconComponent: any?,
	-- IconTab has a 0.8 transparency background in 'Selected' state by default. (overrides background if provided)
	showRoundedBackground: boolean?,
	-- IconTab has a 50% overlay in 'Pressed' state by default. (overrides overlay if provided)
	showOverlay: boolean?,
}

export type Padding = {
	left: number?,
	right: number?,
	top: number?,
	bottom: number?,
}

export type IconTabGroupProps = {
	selection: { number }?,
	-- List of `IconTab`s to display on the IconTabGroup
	items: { [number]: IconTabItem },
	-- Padding around the entire IconTabGroup
	padding: Padding?,
	-- Horizontal spacing between each IconTab
	itemSpacing: UDim?,
	-- Padding around each item
	itemPadding: Padding?,
}

export type ContainerProps = {
	size: Vector2?,
	automaticSize: any?,
	spacing: number?,
	padding: number?,
	showRoundedBackground: boolean?,
	roundedBackgroundSize: any?,
	roundedBackgroundPosition: any?,
	roundedBackgroundColor: Color3?,
	roundedBackgroundTransparency: number?,
	showOverlay: boolean?,
}

export type HorizontalContainerProps = ContainerProps

return {}
