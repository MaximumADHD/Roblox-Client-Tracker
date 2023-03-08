local function validateHSR(wrapLayer: WrapLayer?): (boolean, {string}?)
	if wrapLayer == nil then
		return false, { "Could not find WrapLayer!" }
	end

	if not (wrapLayer :: any):IsHSRReady() then
		return false, { "HSR data not ready!" }
	end

	return true
end

return validateHSR
