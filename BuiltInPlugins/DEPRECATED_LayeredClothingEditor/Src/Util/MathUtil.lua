local MathUtil = {}

function MathUtil:fuzzyEq(a, b)
	local epsilon = 0.001
	return math.abs(a - b) < epsilon
end

function MathUtil:fuzzyEq_CFrame(cf1, cf2)
	local rx1, ry1, rz1 = cf1:ToEulerAnglesXYZ()
	local rx2, ry2, rz2 = cf2:ToEulerAnglesXYZ()
	return	cf1.p:FuzzyEq(cf2.p) and
			MathUtil:fuzzyEq(rx1, rx2) and
			MathUtil:fuzzyEq(ry1, ry2) and
			MathUtil:fuzzyEq(rz1, rz2)
end

function MathUtil:adornLocalSpace(adornee, position)
	return adornee.CFrame:inverse() * CFrame.new(position)
end

function MathUtil:pointInRect(point, p1, p2, width, height)
	if point.X >= p1.X and point.X <= p1.X + width
		and point.Y >= p2.Y and point.Y <= p2.Y + height then
		return true
	end
	return false
end

return MathUtil