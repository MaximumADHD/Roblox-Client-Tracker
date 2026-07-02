local function blendTransparencies(transparencyA: number?, transparencyB: number?): number
	if transparencyA == nil then
		return transparencyB or 0
	elseif transparencyB == nil then
		return transparencyA or 0
	end
	return 1 - (1 - transparencyA) * (1 - transparencyB)
end

return blendTransparencies
