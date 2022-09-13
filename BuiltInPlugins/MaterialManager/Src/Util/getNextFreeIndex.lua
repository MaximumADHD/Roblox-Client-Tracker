local Plugin = script.Parent.Parent.Parent
local _Types = require(Plugin.Src.Types)

return function(numbers: _Types.Array<number?>): number
    local index = 1
	if numbers and #numbers > 0 then
		table.sort(numbers)
		for _, num in ipairs(numbers) do
			if index < num then
				break
			end
			index += 1
		end
	end
    return index
end
