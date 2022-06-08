type TextureMaps = string

local TextureMaps: {[string]: TextureMaps} = {
	ColorMap = "ColorMap",
	MetalnessMap = "MetalnessMap",
	NormalMap = "NormalMap",
	RoughnessMap = "RoughnessMap",
}

return function(): {[string]: TextureMaps}
	return TextureMaps
end
