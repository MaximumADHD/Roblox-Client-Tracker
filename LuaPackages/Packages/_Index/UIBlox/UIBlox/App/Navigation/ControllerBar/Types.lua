--!strict
local ControllerBar = script.Parent
local Navigation = ControllerBar.Parent
local App = Navigation.Parent
local ImagesTypes = require(App.ImageSet.ImagesTypes)

export type ShortcutStaticProps = {
	-- icon of the shortcut
	icon: string | ImagesTypes.ImageSetImage,
	-- shortcut description
	text: string,
	-- text before icon to indicate key action
	actionText: string?,
	-- icon does not have circular progress
	hasProgress: false?,
}

export type AnimationProps = {
	-- the icon progress, and if not provided, it will connect
	-- to input event and play animation by itself
	progress: number?,
	-- key code to trigger animation
	keyCode: Enum.KeyCode?,
	-- icon when key is not holding
	icon: string | ImagesTypes.ImageSetImage,
	-- icon when holding key
	iconHolding: (string | ImagesTypes.ImageSetImage)?,
	-- callback on animation finished
	onHoldComplete: (() -> any)?,

	-- delay time to play animation after pressing key or button
	animationTriggerTime: number?,
	-- animation time of progress from 0 to 100%
	-- when holding key or button
	animationKeyHoldingTime: number?,
	-- animation time of progress from 100% to 0
	-- after releasing key or button
	animationCoolDownTime: number?,
}

export type ShortcutProgressProps = {
	-- shortcut description
	text: string,
	-- icon has circular progress
	hasProgress: true,
	-- text before icon to indicate key action
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
