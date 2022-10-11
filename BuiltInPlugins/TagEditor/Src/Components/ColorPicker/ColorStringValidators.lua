return {
	validateHex = function(text)
		return text:match("^%s*%#?(%x%x%x%x%x%x)%s*$") ~= nil
	end,

	validateRGB = function(text)
		local r, g, b = text:match("^%s*(%d?%d?%d)%s*,%s*(%d?%d?%d)%s*,%s*(%d?%d?%d)%s*%s*$")

		if r == nil or g == nil or b == nil then
			return false
		end

		if tonumber(r) > 255 or tonumber(g) > 255 or tonumber(b) > 255 then
			return false
		end

		return true
	end,

	validateHSV = function(text)
		local h, s, v = text:match("^%s*(%d?%d?%d)%s*,%s*(%d?%d?%d)%s*,%s*(%d?%d?%d)%s*%s*$")

		if h == nil or s == nil or v == nil then
			return false
		end

		if tonumber(h) > 360 then
			return false
		end

		if tonumber(s) > 100 or tonumber(v) > 100 then
			return false
		end

		return true
	end,
}
