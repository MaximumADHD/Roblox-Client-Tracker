--!nocheck
return function()
	local SetFormFactor = require(script.Parent.SetFormFactor)

	local FormFactorReducer = require(script.Parent.FormFactorReducer)
	local FormFactorEnum = require(script.Parent.FormFactor)
	describe("FormFactor", function()
		it("should be unknown by default", function()
			local state = FormFactorReducer(nil, {})

			expect(state).to.equal(FormFactorEnum.UNKNOWN)
		end)

		it("should be unmodified by other actions", function()
			local oldState = FormFactorReducer(nil, {})
			local newState = FormFactorReducer(oldState, { type = "not a real action" })

			expect(oldState).to.equal(newState)
		end)

		it("should be changed using SetFormFactor", function()
			local state = FormFactorReducer(nil, {})

			state = FormFactorReducer(state, SetFormFactor(FormFactorEnum.COMPACT))
			expect(state).to.equal(FormFactorEnum.COMPACT)

			state = FormFactorReducer(state, SetFormFactor(FormFactorEnum.WIDE))
			expect(state).to.equal(FormFactorEnum.WIDE)
		end)
	end)
end
