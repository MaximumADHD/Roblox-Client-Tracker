--[[
	This is a test script to test the functions in RectUtility. If you want to run
	the tests, then you need to set Disabled to true in the Properties widget. 
--]]

local Log = require(script.Parent.Parent.Log)
local RectUtility = require(script.Parent.Parent.RectUtility)

local function testPointIsInsideInMiddle()
	local rectangle = Rect.new(Vector2.new(1, 1), Vector2.new(3, 3))
	local pointMiddle = Vector2.new(2, 2)
	assert(RectUtility:containsPoint(rectangle, pointMiddle) == true, "Point was not inside rectangle")
end

local function testPointIsOnTopSide()
	local rectangle = Rect.new(Vector2.new(1, 1), Vector2.new(3, 3))
	local pointTopSide = Vector2.new(2, 1)
	assert(RectUtility:containsPoint(rectangle, pointTopSide) == true, "Point was not inside rectangle")
end

local function testPointIsOutsideAtOrigin()
	local rectangle = Rect.new(Vector2.new(1, 1), Vector2.new(3, 3))
	local pointOutsideAtOrigin = Vector2.new(0, 0)
	assert(RectUtility:containsPoint(rectangle, pointOutsideAtOrigin) == false, "Point was not outside rectangle")
end

local function testPointIsOutsideOnTop()
	local rectangle = Rect.new(Vector2.new(1, 1), Vector2.new(3, 3))
	local pointOutsideTop = Vector2.new(2, 0.5)
	assert(RectUtility:containsPoint(rectangle, pointOutsideTop) == false, "Point was not outside rectangle")
end

local function testPointIsOutsideBelow()
	local rectangle = Rect.new(Vector2.new(1, 1), Vector2.new(3, 3))
	local pointOutsideBelow = Vector2.new(2, 3.5)
	assert(RectUtility:containsPoint(rectangle, pointOutsideBelow) == false, "Point was not outside rectangle")
end

local function testPointIsOutsideLeft()
	local rectangle = Rect.new(Vector2.new(1, 1), Vector2.new(3, 3))
	local pointOutsideLeft = Vector2.new(0.5, 2)
	assert(RectUtility:containsPoint(rectangle, pointOutsideLeft) == false, "Point was not outside rectangle")
end

local function testPointIsOutsideRight()
	local rectangle = Rect.new(Vector2.new(1, 1), Vector2.new(3, 3))
	local pointOutsideRight = Vector2.new(0.5, 2)
	assert(RectUtility:containsPoint(rectangle, pointOutsideRight) == false, "Point was not outside rectangle")
end

local function rectUtilityTestSuite()
	Log:log("Running RectUtilityTest")

	testPointIsInsideInMiddle()
	testPointIsOnTopSide()

	testPointIsOutsideAtOrigin()
	testPointIsOutsideOnTop()
	testPointIsOutsideBelow()
	testPointIsOutsideLeft()
	testPointIsOutsideRight()
end

rectUtilityTestSuite()
