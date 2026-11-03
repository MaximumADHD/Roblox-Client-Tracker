local Main = script:FindFirstAncestor("StudioFoundation")
local Packages = Main.Parent

local JestGlobals = require(Packages.Dev.JestGlobals)
local describe = JestGlobals.describe
local it = JestGlobals.it
local expect = JestGlobals.expect

local Foundation = require(Packages.Foundation)
local PopoverAlign = Foundation.Enums.PopoverAlign
local PopoverSide = Foundation.Enums.PopoverSide

local getPosition = require(script.Parent.getPosition)

describe("getPosition", function()
	it("should position from the top left of the subject when a point is given", function()
		local point = Vector2.new(100, 200)
		local position = getPosition(PopoverSide.Top, PopoverAlign.Start, point)

		expect(position.offset).toEqual(point)
		expect(position.targetAnchorPoint).toEqual(Vector2.new(0, 0))
	end)

	it("should reverse the align offset when align is End", function()
		local alignOffsetValue = 10
		local sideOffsetValue = 5

		local positionTop = getPosition(
			{ position = PopoverSide.Top, offset = sideOffsetValue },
			{ position = PopoverAlign.End, offset = alignOffsetValue }
		)
		expect(positionTop.offset.X).toEqual(-alignOffsetValue)
		expect(positionTop.offset.Y).toEqual(-sideOffsetValue)

		local positionLeft = getPosition(
			{ position = PopoverSide.Left, offset = sideOffsetValue },
			{ position = PopoverAlign.End, offset = alignOffsetValue }
		)
		expect(positionLeft.offset.X).toEqual(-sideOffsetValue)
		expect(positionLeft.offset.Y).toEqual(-alignOffsetValue)
	end)

	it("should not reverse the align offset when align is Start", function()
		local alignOffsetValue = 10
		local sideOffsetValue = 5

		local positionTop = getPosition(
			{ position = PopoverSide.Top, offset = sideOffsetValue },
			{ position = PopoverAlign.Start, offset = alignOffsetValue }
		)
		expect(positionTop.offset.X).toEqual(alignOffsetValue)
	end)

	it("should ignore align offset when align is Center", function()
		local alignOffsetValue = 10
		local sideOffsetValue = 5

		local positionTop = getPosition(
			{ position = PopoverSide.Top, offset = sideOffsetValue },
			{ position = PopoverAlign.Center, offset = alignOffsetValue }
		)
		expect(positionTop.offset.X).toEqual(0)
	end)
end)
