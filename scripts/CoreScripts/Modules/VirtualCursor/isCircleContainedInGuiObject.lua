-- Given a GuiObject and a circle at some position, checks if the circle is fully contained by the gui object
return function(circlePos : Vector2, circleRad : number, guiObject : GuiObject)
	-- Assume circlePos is in same coordinate space as guiObject, i.e. GuiInset is already accounted for

	-- Since circle doesn't care about rotation, treat GuiObj as origin and do a bounding box check on circle
	-- Note that rotation isn't accounted by AbsolutePosition, and rotation always occurs from the center of the GuiObject
	local halfObjSize = 0.5 * guiObject.AbsoluteSize
	local objCenter = guiObject.AbsolutePosition + halfObjSize

	local relativeCirclePos = circlePos - objCenter
	-- Undo rotation of guiObject on the circle
	local circleDistFromObj = relativeCirclePos.Magnitude
	local circleAngleFromObj = math.atan2(relativeCirclePos.Y, relativeCirclePos.X)

	circleAngleFromObj -= math.rad(guiObject.AbsoluteRotation)
	relativeCirclePos = circleDistFromObj * Vector2.new(math.cos(circleAngleFromObj), math.sin(circleAngleFromObj))

	-- Do boundary checks to see if circle is inside rectangle
	return (-halfObjSize.X <= relativeCirclePos.X - circleRad and 	-- left
	    	 halfObjSize.X >= relativeCirclePos.X + circleRad and 	-- right
			-halfObjSize.Y <= relativeCirclePos.Y - circleRad and 	-- top
			 halfObjSize.Y >= relativeCirclePos.Y + circleRad)		-- bot
end
