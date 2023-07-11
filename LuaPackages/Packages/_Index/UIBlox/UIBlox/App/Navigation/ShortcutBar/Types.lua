local ControllerBar = script.Parent
local Navigation = ControllerBar.Parent
local App = Navigation.Parent
local UIBlox = App.Parent
local Packages = UIBlox.Parent
local React = require(Packages.React)
local ImagesTypes = require(App.ImageSet.ImagesTypes)

export type ShortcutStaticProps = {
	-- Icon of the shortcut
	icon: string | ImagesTypes.ImageSetImage,
	-- Shortcut description
	text: string,
	-- Text before icon to indicate key action
	actionText: string?,
	-- Icon does not have circular progress
	hasProgress: false?,
}

export type AnimationProps = {
	-- The icon progress, and if not provided, it will connect
	-- to input event and play animation by itself
	progress: React.Binding<number>?,
	-- Key code to trigger animation
	keyCode: Enum.KeyCode?,
	-- Icon when key is not holding
	icon: string | ImagesTypes.ImageSetImage,
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

export type ShortcutProgressProps = {
	-- Shortcut description
	text: string,
	-- Icon has circular progress
	hasProgress: true,
	-- Text before icon to indicate key action
	actionText: string?,
} & AnimationProps

export type ShortcutPublicProps = ShortcutStaticProps | ShortcutProgressProps

export type ShortcutProps = {
	index: number,
	iconLabelGap: number?,
	actionTextSpacingLeading: number?,
	publicProps: ShortcutPublicProps,
}

return {}
