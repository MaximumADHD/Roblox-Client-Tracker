return function()
	local SwitchActions = require(script.Parent.Parent.SwitchActions)

	it("throws when indexing an unknown field", function()
		expect(function()
			return SwitchActions.foo
		end).to.throw("\"foo\" is not a valid member of SwitchActions")
	end)

	describe("token tests", function()
		it("returns same object for each token for multiple calls", function()
			expect(SwitchActions.JumpTo).to.equal(SwitchActions.JumpTo)
		end)

		it("should return matching string names for symbols", function()
			expect(tostring(SwitchActions.JumpTo)).to.equal("JUMP_TO")
		end)
	end)

	describe("creators", function()
		it("returns a JumpTo action for jumpTo()", function()
			local popTable = SwitchActions.jumpTo({
				routeName = "foo",
			})

			expect(popTable.type).to.equal(SwitchActions.JumpTo)
			expect(popTable.routeName).to.equal("foo")
			expect(popTable.preserveFocus).to.equal(true)
		end)
	end)
end
