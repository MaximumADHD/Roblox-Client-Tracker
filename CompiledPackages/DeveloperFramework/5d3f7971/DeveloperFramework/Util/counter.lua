local function counter()
	local i = 0
	return function()
		i += 1
		return i
	end
end

return counter
