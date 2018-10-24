local CorePackages = game:GetService("CorePackages")
local Roact = require(CorePackages.Roact)

local function join(...)
	local result = {}

	for i = 1, select("#", ...) do
		local dictionary = select(i, ...)

		if dictionary ~= nil then
			for key, value in pairs(dictionary) do
				--[[
					Here, we borrow Roact.None to represent removed
					values; someday we'll have a shared None object!
				]]
				if value == Roact.None then
					result[key] = nil
				else
					result[key] = value
				end
			end
		end
	end

	return result
end

return join