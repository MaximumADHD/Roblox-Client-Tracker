return function()
	local ContextItem = require(script.Parent.ContextItem)

	it("should be an abstract class", function()
		expect(ContextItem.new).never.to.be.ok()
		expect(function()
			ContextItem.new()
		end).to.throw()
	end)

	it("should be extendable", function()
		local testItem = ContextItem:extend("TestItem")
		expect(testItem).to.be.ok()
	end)

	it("should have a name", function()
		local testItem = ContextItem:extend("TestItem")
		expect(testItem.__name).to.equal("TestItem")
	end)

	it("should have a unique key", function()
		local testItem = ContextItem:extend("TestItem")
		local testItem2 = ContextItem:extend("TestItem")
		expect(testItem2.Key).never.to.equal(testItem.Key)
	end)

	it("should require overriding createProvider", function()
		local testItem = ContextItem:extend("TestItem")
		expect(function()
			testItem:createProvider()
		end).to.throw()

		function testItem:createProvider()
		end

		testItem:createProvider()
	end)
end