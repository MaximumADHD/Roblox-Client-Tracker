return function(ids: {[number]: number | string}, dict: {[string]: any}): {[string]: any}
	local selected = {}

	for _, id in pairs(ids) do
		local stringId = tostring(id)
		local value = dict[stringId]
		if value then
			selected[stringId] = value
		end
	end

	return selected
end
