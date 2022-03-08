-- Is a given number likely to be an AssetId?
-- Heuristic:
-- * assetId has at least 9 digits
-- * assetId has at most 5 zeros
-- * assetId doesn't have all the same digit
return function(assetId: string): boolean
	local digitCount = #assetId
	if digitCount < 9 then
		return false
	end
	if digitCount > 10 then
		return false
	end

	local firstDigit = string.sub(assetId, 1, 1)
	if not string.find(assetId, "[^"..firstDigit.."]") then
		-- All same digit
		return false
	end

	local zeroCount = 0
	local init = 1
	while true do
		-- Faster than string.sub calls because those create garbage
		init = string.find(assetId, "0", init, true)
		if init then
			zeroCount += 1
			init += 1
		else
			break
		end
	end

	return zeroCount <= 5
end