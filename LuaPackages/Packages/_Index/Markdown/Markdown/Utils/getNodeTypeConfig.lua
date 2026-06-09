local Root = script:FindFirstAncestor("Utils").Parent

local Types = require(Root.Types)

local NodeTypeConfig = require(script.Parent.NodeTypeConfig)

local function getNodeTypeConfig(node: Types.Node): NodeTypeConfig.NodeTypeConfig?
	local config = NodeTypeConfig[node.type]
	if not config then
		warn(`No node type config found for node: {node.name} {node.text} of type: {node.type}`)
		return nil
	end
	return config
end

return getNodeTypeConfig
