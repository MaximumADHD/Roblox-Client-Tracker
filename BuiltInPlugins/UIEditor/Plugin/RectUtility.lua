--[[
	The RectUtility module script contains functions for doing calculations on Rect instances.
--]]

local RectUtility = {}

-- Use pointOnSideOfLine to determine if the point is on one side or the other
-- of the line. It will return a negative number if it's one side and a positive
-- number if it's on the other side. It will finally return zero if the point
-- is on the line.
--
-- The Vector2s a and b are the start and end of the line. The Vector2 point is
-- the point that you want to determine which side it is on.
--
-- number RectUtility:pointOnSideOfLine(Vector2 a, Vector2 b, Vector2 p)
function RectUtility:pointOnSideOfLine(a, b, p)
	-- See https://math.stackexchange.com/questions/274712/calculate-on-which-side-of-a-straight-line-is-a-given-point-located
	local d = (p.X - a.X) * (b.Y - a.Y) - (p.Y - a.Y) * (b.X - a.X)
	return d
end

-- Returns true if the a point is inside or on the sides of a rectangle.
--
-- Assumes that the Rect is axis aligned.
--
-- RectUtility:containsPoint(Rect rectangle, Vector2 point)
function RectUtility:containsPoint(rectangle, point)
	local topLeftPoint = rectangle.Min
	local topRightPoint = Vector2.new(topLeftPoint.X + rectangle.Width, topLeftPoint.Y)
	local bottomRightPoint = rectangle.Max
	local bottomLeftPoint = Vector2.new(bottomRightPoint.X - rectangle.Width, bottomRightPoint.Y)

	local top = RectUtility:pointOnSideOfLine(topLeftPoint, topRightPoint, point)
	local right = RectUtility:pointOnSideOfLine(topRightPoint, bottomRightPoint, point)
	local bottom = RectUtility:pointOnSideOfLine(bottomRightPoint, bottomLeftPoint, point)
	local left = RectUtility:pointOnSideOfLine(bottomLeftPoint, topLeftPoint, point)

	-- If the point is on the right side of all the sides of the rectangle
	-- then it's inside the rectangle. Notice that the winding order matters.
	local isInside = top <= 0 and right <= 0 and bottom <= 0 and left <= 0

	return isInside
end

return RectUtility
