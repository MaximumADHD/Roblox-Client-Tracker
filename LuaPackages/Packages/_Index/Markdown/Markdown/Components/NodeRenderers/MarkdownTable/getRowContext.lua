local Root = script:FindFirstAncestor("Markdown")

local mergeContexts = require(Root.Utils.mergeContexts)
local Types = require(Root.Types)

local function getRowContext(row: Types.Node, context: Types.Context): Types.Context
	if row.name == "TABLE_HEADER" then
		return mergeContexts(context, {
			textStyles = {
				bold = true,
			},
		})
	end
	return context
end

return getRowContext
