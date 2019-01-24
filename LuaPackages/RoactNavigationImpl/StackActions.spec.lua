return function()
	local StackActions = require(script.Parent.StackActions)

	describe("StackActions token tests", function()
		it("should return same object for each token for multiple calls", function()
			expect(StackActions.Pop).to.equal(StackActions.Pop)
			expect(StackActions.PopToTop).to.equal(StackActions.PopToTop)
			expect(StackActions.Push).to.equal(StackActions.Push)
			expect(StackActions.Reset).to.equal(StackActions.Reset)
			expect(StackActions.Replace).to.equal(StackActions.Replace)
			expect(StackActions.CompleteTransition).to.equal(StackActions.CompleteTransition)
		end)

		it("should return matching string names for symbols", function()
			expect(tostring(StackActions.Pop)).to.equal("POP")
			expect(tostring(StackActions.PopToTop)).to.equal("POP_TO_TOP")
			expect(tostring(StackActions.Push)).to.equal("PUSH")
			expect(tostring(StackActions.Reset)).to.equal("RESET")
			expect(tostring(StackActions.Replace)).to.equal("REPLACE")
			expect(tostring(StackActions.CompleteTransition)).to.equal("COMPLETE_TRANSITION")
		end)
	end)

	describe("StackActions function tests", function()
		it("should return a pop action for pop()", function()
			local popTable = StackActions.pop({
				n = "n",
			})

			expect(popTable.type).to.equal(StackActions.Pop)
			expect(popTable.n).to.equal("n")
		end)

		it("should return a pop to top action for popToTop()", function()
			local popToTopTable = StackActions.popToTop()

			expect(popToTopTable.type).to.equal(StackActions.PopToTop)
		end)

		it("should return a push action for push()", function()
			local pushTable = StackActions.push({
				routeName = "routeName",
				params = "params",
				action = "action",
			})

			expect(pushTable.type).to.equal(StackActions.Push)
			expect(pushTable.routeName).to.equal("routeName")
			expect(pushTable.params).to.equal("params")
			expect(pushTable.action).to.equal("action")
		end)

		it("should return a reset action for reset()", function()
			local resetTable = StackActions.reset({
				index = "index",
				actions = "actions",
				key = "key",
			})

			expect(resetTable.type).to.equal(StackActions.Reset)
			expect(resetTable.index).to.equal("index")
			expect(resetTable.key).to.equal("key")
		end)
	end)
end
