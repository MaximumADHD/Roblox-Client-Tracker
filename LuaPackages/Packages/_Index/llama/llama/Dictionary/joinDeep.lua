
local None = require(script.Parent.Parent.None)
local copyDeep = require(script.Parent.copyDeep)

local function joinDeep(...)
	local new = {}

	for dictionaryIndex = 1, select("#", ...) do
		local dictionary = select(dictionaryIndex, ...)

		if dictionary then
			for k, v in pairs(dictionary) do
				if v == None then
					new[k] = nil
				elseif type(v) == "table" then
					if new[k] == nil or type(new[k] ~= "table") then
						new[k] = copyDeep(v)
					else
						new[k] = joinDeep(new[k], v)
					end
				else
					new[k] = v
				end
			end
		end
	end

	return new
end

return joinDeep