--!strict
local function equalObjects(...)
	local firstObject = select(1, ...)

	for i = 2, select("#", ...) do
		if firstObject ~= select(i, ...) then
			return false
		end
	end

	return true
end

return equalObjects
