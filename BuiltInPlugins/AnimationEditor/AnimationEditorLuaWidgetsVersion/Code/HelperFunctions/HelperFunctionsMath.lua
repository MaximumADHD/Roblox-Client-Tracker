-- singleton
local FastFlags = require(script.Parent.Parent.FastFlags)

local Math = {}

function Math:lerp(from, to, scale)
	return from+(scale*(to-from))
end

function Math:overlap(from, to)
	return from.AbsolutePosition.X+from.AbsoluteSize.X >= to.AbsolutePosition.X and
		from.AbsolutePosition.X <= to.AbsolutePosition.X+to.AbsoluteSize.X and
		
		from.AbsolutePosition.Y+from.AbsoluteSize.Y >= to.AbsolutePosition.Y and
		from.AbsolutePosition.Y <= to.AbsolutePosition.Y+to.AbsoluteSize.Y
end

-- returns how many numbers are after the decimal point
function Math:numDecimalPlaces(num)
	local numStr = tostring(num)
	local len = string.len(numStr)	
	local decimalPoint = string.find(numStr, "%.") 
	return decimalPoint and len-decimalPoint or 0
end

function Math:lerp(from, to, interp)
	local targetType = type(from)
	if targetType == 'Vector3' or targetType == 'CFrame' then
		return from:Lerp(to, interp)
	end
	return from + (to-from)*interp
end

function Math:roundToDecimalPlace(numToRound, numDecimalPlaces)
	local numToRoundPositive = math.abs(numToRound)
	if numDecimalPlaces >= 0 then
		local mult = 10^numDecimalPlaces
		local result = numToRoundPositive * mult
		local diff = result - math.floor(result)
		result = diff >= 0.5 and math.ceil(result) or math.floor(result)
		result = result / mult
		return numToRound >= 0 and result or -result
	end
end

function Math:truncate(numToTruncate, numDecimalPlaces)
	local numToTruncatePositive = math.abs(numToTruncate)
	if numDecimalPlaces > 0 then
		local mult = 10^numDecimalPlaces
		local result = math.floor(numToTruncatePositive * mult) / mult
		return numToTruncate >= 0 and result or -result
	end
	return numToTruncate >= 0 and math.floor(numToTruncate) or -math.floor(numToTruncatePositive)
end

function Math:isCloseToOne(num)
	return Math:isCloseToZero(num-1)
end

function Math:isCloseToZero(num)
	local Tol = 0.0001
	return math.abs(num) < Tol
end

-- how many decimal places of precision are required to show the difference between the two numbers
function Math:calculateNumDecimalPlacesForDiff(numOne, numTwo)		
	local MaxDecimalPlaces = 10
	local diff = math.abs(numOne-numTwo)
	for numDecimalPlaces=0, MaxDecimalPlaces do
		local res = Math:truncate(diff, numDecimalPlaces)
		if 0 ~= res then	
			return true, numDecimalPlaces
		end
	end
	return false
end

function Math:orthoNormalizeCFrame(cf)
	-- get the components of the cframe tranform matrix (not including the final column, which would be 0 for the orientation rows, and 1 for the position row)
	local x,y,z,a,b,c,d,e,f,g,h,i=cf:components()
	-- do cross product operations to calculate the orientation rows of the transform matrix
	local j,k,l=f*g-d*i,a*i-c*g,c*d-a*f
	local m,n,o=d*l-k*g,j*g-l*a,a*k-j*d
	-- get the magnitude of the orientation rows of the transform matrix
	local l1,l2,l3=(a^2+d^2+g^2)^0.5,(j^2+k^2+l^2)^0.5,(m^2+n^2+o^2)^0.5
	-- create a new cframe, using the magnitudes of the orientation rows to normalize them
	return CFrame.new(x,y,z,a/l1,j/l2,m/l3,d/l1,k/l2,n/l3,g/l1,l/l2,o/l3)
end

return Math