local Foundation = script:FindFirstAncestor("Foundation")
local Types = require(Foundation.Components.Types)

type ResponsiveValue<T> = Types.ResponsiveValue<T>

local function getGridSizeTag(size: number | ResponsiveValue<number>): string
	if typeof(size) == "number" then
		return `col-{size}`
	else
		local parts = {}

		for shortName, colCount in size do
			if typeof(colCount) == "number" then
				table.insert(parts, `{shortName}-col-{colCount}`)
			end
		end
		return table.concat(parts, " ")
	end
end

return getGridSizeTag
