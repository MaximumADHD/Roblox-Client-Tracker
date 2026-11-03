local Root = script:FindFirstAncestor("Markdown")

local Types = require(Root.Types)

local function shouldUseTopPadding(node: Types.Node)
	return node.offset ~= 0
end

return shouldUseTopPadding
