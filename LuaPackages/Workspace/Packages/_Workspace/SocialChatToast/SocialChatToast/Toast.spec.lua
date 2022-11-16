return function()
	local ShowToast = require(script.Parent.Actions.ShowToast)
	local ToastComplete = require(script.Parent.Actions.ToastComplete)
	local ToastReducer = require(script.Parent.ToastReducer)
	local ToastModel = require(script.Parent.ToastModel)
	describe("Action Toast", function()
		it("should return nil when passed nil", function()
			local state = ToastReducer(nil, {})
			expect(state).to.equal(nil)
		end)

		it("Action ShowToast", function()
			local state = ToastReducer(nil, {})
			local myToast = ToastModel.new(123, "key")
			state = ToastReducer(state, ShowToast(myToast))

			expect(state).to.equal(myToast)
		end)

		it("Action ToastComplete", function()
			local state = ToastReducer(nil, {})
			state = ToastReducer(state, ToastComplete())

			expect(state).to.equal(nil)
		end)

		it("ToastComplete should clear current toast", function()
			local state = ToastReducer(nil, {})
			local myToast = ToastModel.new(123, "key")
			state = ToastReducer(state, ShowToast(myToast))

			expect(state).to.equal(myToast)

			state = ToastReducer(state, ToastComplete())

			expect(state).to.equal(nil)
		end)
	end)
end
