local Packages = script.Parent.Parent.Parent.Parent

local enumerate = require(Packages.enumerate)

return enumerate(script.Name, {
	SelectedKnob = "SelectedKnob",
	UnselectedKnob = "UnselectedKnob",
	NavHighlight = "NavHighlight",
	InputFields = "InputFields",
	BulletUp = "BulletUp",
	BulletDown = "BulletDown",
	SelectionCell = "SelectionCell",
	Invisible = "Invisible",
	SkinToneCircle = "SkinToneCircle",
	RoundedSlot = "RoundedSlot",
	RoundedRectNoInset = "RoundedRectNoInset",
	Toggle = "Toggle",
	SmallPill = "SmallPill",
	LargePill = "LargePill",
	RoundedRect = "RoundedRect",
	InputButton = "InputButton",
	Square = "Square",
})
