local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local Packages = ExperienceChat.Parent
local Autocomplete = script:FindFirstAncestor("Autocomplete")
local List = require(Packages.llama).List

local TrieNode = require(Autocomplete.Trie.TrieNode)

local Trie = {}
Trie.__index = Trie

function Trie.new()
	local trie = {}
	setmetatable(trie, Trie)
	trie.root = TrieNode.new("")
	return trie
end

function Trie:insert(word: string)
	local node = self.root
	for i = 1, #word do
		local char = string.sub(word, i, i)
		if not node.children[char] then
			node.children[char] = TrieNode.new(char)
		end
		node = node.children[char]
	end
	node.isEndOfWord = true
end

function Trie:autocomplete(prefix: string)
	local res = {}
	local node = self.root
	for i = 1, #prefix do
		local c = string.sub(prefix, i, i)
		if node.children[c] then
			node = node.children[c]
		else
			return res
		end
	end
	res = self:helper(node, res, string.sub(prefix, 1, #prefix - 1))
	return res
end

function Trie:helper(node: any, res: { string }, prefix: string)
	if node.isEndOfWord then
		res = List.push(res, prefix .. node.data)
	end
	for _, child in pairs(node.children) do
		res = self:helper(child, res, prefix .. node.data)
	end
	return res
end

return Trie
