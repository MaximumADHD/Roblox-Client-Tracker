local Packages = script.Parent.Parent.Parent.Parent

local enumerate = require(Packages.enumerate)

local RoundedRectCursor = require(script.Parent.Components.RoundedRect)
local RoundedRectNoInsetCursor = require(script.Parent.Components.RoundedRectNoInset)
local SmallPillCursor = require(script.Parent.Components.SmallPill)
local LargePillCursor = require(script.Parent.Components.LargePill)

return enumerate(script.Name, {
	RoundedRect = RoundedRectCursor,
	RoundedRectNoInset = RoundedRectNoInsetCursor,
	SmallPill = SmallPillCursor,
	LargePill = LargePillCursor,
})