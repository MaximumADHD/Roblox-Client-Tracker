local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local Packages = ExperienceChat.Parent
local globals = require(Packages.Dev.Jest).Globals
local expect = globals.expect
local List = require(Packages.llama).List
local Trie = require(script.Parent.Trie)

return function()
	describe("GIVEN a Trie object", function()
		local trie = Trie.new()

		beforeAll(function()
			expect(trie).never.toBeNil()
			expect(trie.root).never.toBeNil()
		end)

		it("SHOULD correctly insert into Trie object", function()
			local mockString: string = "abc"
			trie:insert(mockString)

			expect(trie.root.children["a"].data).toEqual("a")
			expect(trie.root.children["a"].isEndOfWord).toEqual(false)

			expect(trie.root.children["a"].children["b"].data).toEqual("b")
			expect(trie.root.children["a"].children["b"].isEndOfWord).toEqual(false)

			expect(trie.root.children["a"].children["b"].children["c"].data).toEqual("c")
			expect(trie.root.children["a"].children["b"].children["c"].isEndOfWord).toEqual(true)
		end)

		it("SHOULD autocomplete given a prefix", function()
			local mockString: string = "abd"
			trie:insert(mockString)

			local res = trie:autocomplete("ab")

			for i = 1, List.count(res) do
				expect(res[i]:find("ab", 1, true) == 1).toEqual(true)
			end
			expect(List.count(res)).toEqual(2)
		end)
	end)
end
