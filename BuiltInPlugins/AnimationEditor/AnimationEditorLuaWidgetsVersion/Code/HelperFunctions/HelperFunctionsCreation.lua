-- singleton

local Creation = {}

function Creation:make(ty, data)
	local obj = Instance.new(ty)
	for k, v in pairs(data) do
		if type(k) == 'number' then
			v.Parent = obj
		else
			obj[k] = v
		end
	end
	return obj
end

return Creation