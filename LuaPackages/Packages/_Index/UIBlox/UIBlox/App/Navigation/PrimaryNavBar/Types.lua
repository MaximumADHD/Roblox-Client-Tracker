--!strict
local Navigation = script.Parent.Parent
local App = Navigation.Parent
local UIBlox = App.Parent
local Packages = UIBlox.Parent
local React = require(Packages.React)
local ImagesTypes = require(App.ImageSet.ImagesTypes)

export type ContextBarProps = {
	-- position of context bar
	position: UDim2?,
	-- anchor point of context bar
	anchorPoint: Vector2?,
	-- list of items to display on the context bar
	items: {
		[number]: {
			-- icon of the shortcut
			icon: string | ImagesTypes.ImageSetImage,
			-- shortcut description
			text: string,
		},
	},
}

export type IconTabItem = {
	title: string,
	icon: string,
	onActivated: (() -> any)?,
	iconComponent: any?,
}

export type IconTabItemProps = {
	item: IconTabItem,
	selected: boolean,
	controlState: number?,
}

export type IconTabGroupProps = {
	items: { [number]: IconTabItem },
}

export type ContainerProps = {
	size: Vector2?,
	automaticSize: any?,
	spacing: number?,
	padding: number?,
	showRoundedBackground: boolean?,
	showOverlay: boolean?,
	roundCornerRadius: number?,
	roundedBackgroundHeight: number?,
	backgroundTransparency: number?,
	backgroundColor3: Color3?,
}

export type HorizontalContainerProps = ContainerProps

return {}
