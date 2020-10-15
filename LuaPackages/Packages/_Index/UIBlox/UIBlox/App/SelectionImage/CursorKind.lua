local Packages = script.Parent.Parent.Parent.Parent

local enumerate = require(Packages.enumerate)

local RoundedRectCursor = require(script.Parent.Components.RoundedRect)
local RoundedRectNoInsetCursor = require(script.Parent.Components.RoundedRectNoInset)
local SmallPillCursor = require(script.Parent.Components.SmallPill)
local LargePillCursor = require(script.Parent.Components.LargePill)
local SelectedKnobCursor = require(script.Parent.Components.SelectedKnob)
local UnselectedKnobCursor = require(script.Parent.Components.UnselectedKnob)
local NavHighlightCursor = require(script.Parent.Components.NavHighlight)
local SkinToneCircleCursor = require(script.Parent.Components.SkinToneCircle)
local SquareCursor = require(script.Parent.Components.Square)
local ToggleCursor = require(script.Parent.Components.Toggle)
local InputFieldsCursor = require(script.Parent.Components.InputFields)
local BulletUpCursor = require(script.Parent.Components.BulletUp)
local BulletDownCursor = require(script.Parent.Components.BulletDown)
local SelectionCellCursor = require(script.Parent.Components.SelectionCell)

return enumerate(script.Name, {
	RoundedRect = RoundedRectCursor,
	RoundedRectNoInset = RoundedRectNoInsetCursor,
	SmallPill = SmallPillCursor,
	LargePill = LargePillCursor,
	SelectedKnob = SelectedKnobCursor,
	UnselectedKnob = UnselectedKnobCursor,
	NavHighlight = NavHighlightCursor,
	SkinToneCircle = SkinToneCircleCursor,
	Square = SquareCursor,
	Toggle = ToggleCursor,
	InputFields = InputFieldsCursor,
	BulletUp = BulletUpCursor,
	BulletDown = BulletDownCursor,
	SelectionCell = SelectionCellCursor,
})