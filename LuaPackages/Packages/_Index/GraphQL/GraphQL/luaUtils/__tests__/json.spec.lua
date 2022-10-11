return function()
	local luaUtils = script.Parent.Parent
	local json = require(luaUtils.json)

	describe("json.stringify", function()
		it("stringifies table", function()
			local obj = { name = "Dillion", number = 5, type = true }
			expect(json.stringify(obj)).to.equal('{"number":5, "type":true, "name":"Dillion"}')
		end)
	end)
end
