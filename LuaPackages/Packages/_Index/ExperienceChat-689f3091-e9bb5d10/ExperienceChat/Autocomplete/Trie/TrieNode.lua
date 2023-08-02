local TrieNode = {}
TrieNode.__index = TrieNode

function TrieNode.new(str: string)
	local node = {}
	setmetatable(node, TrieNode)
	node.children = {}
	node.isEndOfWord = false
	node.data = str
	return node
end

return TrieNode
