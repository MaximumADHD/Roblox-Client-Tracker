local Round = require(script.Parent.Round)

function fuzzyCompare(value1, value2, delta)
	if not delta then
		delta = 0.0001
	end
	
	if (value2 >= value1 - delta and value2 <= value1 + delta) then
		return true
	end
	return false
end

function fuzzyCompareVector3(value1, value2, delta)
	if fuzzyCompare(value1.x, value2.x, delta) and 
		fuzzyCompare(value1.y, value2.y, delta) and
		fuzzyCompare(value1.z, value2.z, delta) then
			return true
		end
	return false
end

function fuzzyCompareCFrame(value1, value2, delta)
	local x1, y1, z1, r001, r011, r021, r101, r111, r121, r201, r211, r221 = value1:components()
	local x2, y2, z2, r002, r012, r022, r102, r112, r122, r202, r212, r222 = value2:components()
	
	
	if --fuzzyCompare(x1, x2, delta) and
		--fuzzyCompare(y1, y2, delta) and
		--fuzzyCompare(z1, z2, delta) and
		fuzzyCompare(r001, r002, delta) and
		fuzzyCompare(r011, r012, delta) and
		fuzzyCompare(r021, r022, delta) and
		fuzzyCompare(r101, r102, delta) and
		fuzzyCompare(r111, r112, delta) and
		fuzzyCompare(r121, r122, delta) and
		fuzzyCompare(r201, r202, delta) and
		fuzzyCompare(r211, r212, delta) and
		fuzzyCompare(r221, r222, delta) then
		return true
	end
	return false
end

function fuzzyRound(value)
	return Round.roundToNearest(value, 0.0001)
end

function visiblyIdentityCFrame(value, delta)
	local x, y, z, r00, r01, r02, r10, r11, r12, r20, r21, r22 = value:components()
	
	local r0 = false
	local r1 = false
	local r2 = false
	
	if fuzzyCompare(math.abs(r00), 1) then
		if r0 then return false end
		r0 = true
	elseif not fuzzyCompare(r00, 0) then
		return false
	end
	
	if fuzzyCompare(math.abs(r01), 1) then
		if r0 then return false end
		r0 = true
	elseif not fuzzyCompare(r01, 0) then
		return false
	end
	
	if fuzzyCompare(math.abs(r02), 1) then
		if r0 then return false end
		r0 = true
	elseif not fuzzyCompare(r02, 0) then
		return false
	end
	
	if not r0 then
		return false
	end
	
	if fuzzyCompare(math.abs(r10), 1) then
		if r1 then return false end
		r1 = true
	elseif not fuzzyCompare(r10, 0) then
		return false
	end
	
	if fuzzyCompare(math.abs(r11), 1) then
		if r1 then return false end
		r1 = true
	elseif not fuzzyCompare(r11, 0) then
		return false
	end
	
	if fuzzyCompare(math.abs(r12), 1) then
		if r1 then return false end
		r1 = true
	elseif not fuzzyCompare(r12, 0) then
		return false
	end
	
	if not r1 then
		return false
	end
	
	if fuzzyCompare(math.abs(r20), 1) then
		if r2 then return false end
		r2 = true
	elseif not fuzzyCompare(r20, 0) then
		return false
	end
	
	if fuzzyCompare(math.abs(r21), 1) then
		if r2 then return false end
		r2 = true
	elseif not fuzzyCompare(r21, 0) then
		return false
	end
	
	if fuzzyCompare(math.abs(r22), 1) then
		if r2 then return false end
		r2 = true
	elseif not fuzzyCompare(r22, 0) then
		return false
	end
	
	if not r2 then
		return false
	end
	
	return true
end

local module = {}

module.fuzzyCompare = fuzzyCompare
module.fuzzyCompareVector3 = fuzzyCompareVector3

module.visiblyIdentityCFrame = visiblyIdentityCFrame

return module
