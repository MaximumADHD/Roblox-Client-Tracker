export type CursorType =
	"SelectedKnob"
	| "UnselectedKnob"
	| "NavHighlight"
	| "InputFields"
	| "BulletUp"
	| "BulletDown"
	| "SelectionCell"
	| "Invisible"
	| "SkinToneCircle"
	| "RoundedSlot"
	| "RoundedRectNoInset"
	| "Toggle"
	| "SmallPill"
	| "LargePill"
	| "RoundedRect"
	| "InputButton"
	| "Square"

local CursorTypeEnum = {
	SelectedKnob = "SelectedKnob" :: "SelectedKnob",
	UnselectedKnob = "UnselectedKnob" :: "UnselectedKnob",
	NavHighlight = "NavHighlight" :: "NavHighlight",
	InputFields = "InputFields" :: "InputFields",
	BulletUp = "BulletUp" :: "BulletUp",
	BulletDown = "BulletDown" :: "BulletDown",
	SelectionCell = "SelectionCell" :: "SelectionCell",
	Invisible = "Invisible" :: "Invisible",
	SkinToneCircle = "SkinToneCircle" :: "SkinToneCircle",
	RoundedSlot = "RoundedSlot" :: "RoundedSlot",
	RoundedRectNoInset = "RoundedRectNoInset" :: "RoundedRectNoInset",
	Toggle = "Toggle" :: "Toggle",
	SmallPill = "SmallPill" :: "SmallPill",
	LargePill = "LargePill" :: "LargePill",
	RoundedRect = "RoundedRect" :: "RoundedRect",
	InputButton = "InputButton" :: "InputButton",
	Square = "Square" :: "Square",
}

return CursorTypeEnum
