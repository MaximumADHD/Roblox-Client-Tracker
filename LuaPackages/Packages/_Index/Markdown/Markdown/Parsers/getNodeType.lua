local Root = script:FindFirstAncestor("Markdown")
local Types = require(Root.Types)

type ParserOptions = Types.ParserOptions

local NodeType = require(Root.Enums.NodeType)

local function getNodeType(name: string, options: ParserOptions): NodeType.NodeType
	local nodeConfiguration = options.nodeConfiguration[name]
	if nodeConfiguration then
		return nodeConfiguration.type
	end
	warn(`No node configuration found for {name}`)
	return NodeType.Block
end

return getNodeType
