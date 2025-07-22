local ControllerBar = script.Parent
local Navigation = ControllerBar.Parent
local App = Navigation.Parent
local UIBlox = App.Parent
local InputType = require(UIBlox.Enums.InputType)
local Packages = UIBlox.Parent
local React = require(Packages.React)
local ImagesTypes = require(App.ImageSet.ImagesTypes)
local Foundation = require(Packages.Foundation)

export type Icon = string | ImagesTypes.ImageSetImage

export type IconMap = {
	[InputType.InputType]: Icon,
}

type ShortcutStaticProps = {
	-- Shortcut description
	text: string,
	-- Text before icon to indicate key action
	actionText: string?,
	-- Icon does not have circular progress
	hasProgress: false?,
}

type AnimationInternalProps = {
	-- The icon progress, and if not provided, it will connect
	-- to input event and play animation by itself
	progress: React.Binding<number>?,
	-- Key code to trigger animation
	keyCode: Enum.KeyCode?,
	-- Icon when holding key
	iconHolding: (string | ImagesTypes.ImageSetImage)?,
	-- Callback on animation finished
	onHoldComplete: (() -> any)?,

	-- Delay time to play animation after pressing key or button
	animationTriggerTime: number?,
	-- Animation time of progress from 0 to 100% when holding key or button
	animationKeyHoldingTime: number?,
	-- Animation time of progress from 100% to 0 after releasing key or button
	animationCoolDownTime: number?,
}

export type AnimationProps = AnimationInternalProps & {
	icon: Icon,
}

type ShortcutProgressInternalProps = {
	-- Shortcut description
	text: string,
	-- Icon has circular progress
	hasProgress: true,
	-- Text before icon to indicate key action
	actionText: string?,
} & AnimationInternalProps

export type ShortcutProgressProps = ShortcutProgressInternalProps & AnimationProps

type ShortcutNoIconProps = ShortcutStaticProps | ShortcutProgressInternalProps

-- Internal icon only, no map of icons
export type ShortcutInternalProps = ShortcutNoIconProps & {
	icon: Icon,
}

export type ShortcutProps = {
	index: number,
	iconLabelGap: number?,
	actionTextSpacingLeading: number?,
	publicProps: ShortcutInternalProps,
	size: UDim2?,
	automaticSize: Enum.AutomaticSize?,
	renderIcon: ((props: { layoutOrder: number }) -> React.Element<any>?)?,
	labelTextSize: number?,
	labelColorStyle: Foundation.ColorStyle?,
	labelFontStyle: Foundation.FontStyle?,
}

export type ShortcutPublicProps = {
	icon: Icon | IconMap | Enum.KeyCode | { [number]: Enum.KeyCode },
} & ShortcutNoIconProps

return {}
