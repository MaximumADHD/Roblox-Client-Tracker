-- Helper interpolates t with range [0,1] into the range [a,b].
local function lerp(a, b, t)
	return a * (1 - t) + b * t
end

return lerp
