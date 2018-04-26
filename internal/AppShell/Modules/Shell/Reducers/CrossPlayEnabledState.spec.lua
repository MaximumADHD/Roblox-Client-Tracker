return function()
	local CrossPlayEnabledStateReducer = require(script.Parent.CrossPlayEnabledState)
	local Actions = script.Parent.Parent.Actions

	local RequestCrossPlayEnabled = require(Actions.RequestCrossPlayEnabled)
	local SetCrossPlayEnabled = require(Actions.SetCrossPlayEnabled)
	local PostCrossPlayEnabledFailed = require(Actions.PostCrossPlayEnabledFailed)
	local GetCrossPlayEnabledFailed = require(Actions.GetCrossPlayEnabledFailed)

	describe("initial state", function()
		it("should return an initial table when passed nil", function()
			local state = CrossPlayEnabledStateReducer(nil, {})
            expect(state).to.be.a("table")
            expect(state.isRequesting).to.equal(false)
		end)
	end)

	describe("Action RequestCrossPlayEnabled", function()
		it("should set isRequesting to true in the store", function()
			local action = RequestCrossPlayEnabled()
			local state = CrossPlayEnabledStateReducer({}, action)

			expect(state).to.be.a("table")
			expect(state.isRequesting).to.equal(true)
		end)
	end)

	describe("Action SetCrossPlayEnabled", function()
		it("should set enabled, lastUpdated and reset isRequesting to false in the store", function()
			local action = SetCrossPlayEnabled(true)
			local state = CrossPlayEnabledStateReducer({}, action)

			expect(state).to.be.a("table")
			expect(state.enabled).to.equal(true)
			expect(state.lastUpdated).to.be.a("number")
			expect(state.isRequesting).to.equal(false)
		end)

		it("should clear enabled, lastUpdated to nil and reset isRequesting to false when SetCrossPlayEnabled with nil", function()
			local action = SetCrossPlayEnabled(true)
			local state = CrossPlayEnabledStateReducer({}, action)

			action = SetCrossPlayEnabled()
			state = CrossPlayEnabledStateReducer(state, action)

			expect(state).to.be.a("table")
			expect(state.enabled).never.to.be.ok()
			expect(state.lastUpdated).never.to.be.ok()
			expect(state.isRequesting).to.equal(false)
        end)
	end)

	describe("Action PostCrossPlayEnabledFailed", function()
		it("should set isRequesting to false in the store", function()
			local action = PostCrossPlayEnabledFailed()
			local state = CrossPlayEnabledStateReducer({}, action)

			expect(state).to.be.a("table")
			expect(state.isRequesting).to.equal(false)
		end)
	end)

	describe("Action GetCrossPlayEnabledFailed", function()
		it("should set isRequesting to false in the store", function()
			local action = GetCrossPlayEnabledFailed()
			local state = CrossPlayEnabledStateReducer({}, action)

			expect(state).to.be.a("table")
			expect(state.isRequesting).to.equal(false)
		end)
	end)
end