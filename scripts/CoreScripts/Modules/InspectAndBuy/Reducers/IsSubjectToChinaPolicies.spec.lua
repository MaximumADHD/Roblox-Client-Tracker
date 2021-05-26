return function()
	local CorePackages = game:GetService("CorePackages")
	local Rodux = require(CorePackages.Rodux)

	local InspectAndBuyFolder = script.Parent.Parent
	local IsSubjectToChinaPolicies = require(script.Parent.IsSubjectToChinaPolicies)

	local SetIsSubjectToChinaPolicies = require(InspectAndBuyFolder.Actions.SetIsSubjectToChinaPolicies)

	describe("IsSubjectToChinaPolicies", function()
		it("should default true", function()
			local store = Rodux.Store.new(IsSubjectToChinaPolicies)
			local state = store:getState()
			expect(state).to.equal(true)
		end)

		it("should mark the Inspect Menu as subject to china policies", function()
			local store = Rodux.Store.new(IsSubjectToChinaPolicies)
			local state = store:getState()

			local newState = IsSubjectToChinaPolicies(state, SetIsSubjectToChinaPolicies(true))
			expect(newState).to.equal(true)
		end)

		it("should mark the Inspect Menu as not subject to china policies", function()
			local store = Rodux.Store.new(IsSubjectToChinaPolicies)
			local state = store:getState()

			local newState = IsSubjectToChinaPolicies(state, SetIsSubjectToChinaPolicies(false))
			expect(newState).to.equal(false)
		end)
	end)
end