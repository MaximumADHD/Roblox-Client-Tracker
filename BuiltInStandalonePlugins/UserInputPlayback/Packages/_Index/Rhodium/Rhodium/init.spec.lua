return function()
	local JestGlobals = require(script.Parent.Parent.Parent.Packages.Dev.JestGlobals)
	local expect = JestGlobals.expect
    
	describe("Rhodium", function()
		it("should load", function()
			local Rhodium = require(script.Parent)

			expect(Rhodium).never.toBeNil()
			expect(Rhodium.Element).never.toBeNil()
			expect(Rhodium.XPath).never.toBeNil()
			expect(Rhodium.VirtualInput).never.toBeNil()
		end)
	end)
end