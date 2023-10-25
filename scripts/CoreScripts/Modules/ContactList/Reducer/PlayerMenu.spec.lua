return function()
	local ContactList = script.Parent.Parent
	local PlayerMenu = require(ContactList.Reducer.PlayerMenu)
	local OpenOrUpdateCFM = require(ContactList.Actions.OpenOrUpdateCFM)
	local CloseCFM = require(ContactList.Actions.CloseCFM)

	local CorePackages = game:GetService("CorePackages")

	local JestGlobals = require(CorePackages.JestGlobals)
	local expect = JestGlobals.expect

	it("should have the correct default values", function()
		local defaultState = PlayerMenu(nil, {})

		expect(defaultState).toEqual({
			isOpen = false,
			friend = {
				userId = nil,
				combinedName = "",
				userName = "",
			},
		})
	end)

	describe("using actions", function()
		it("should change with OpenOrUpdateCFM and CloseCFM", function()
			local oldState = PlayerMenu(nil, {})
			local openState = PlayerMenu(
				oldState,
				OpenOrUpdateCFM({
					userName = "testName",
					combinedName = "testDisplayName",
					userId = 1234567891,
				})
			)

			expect(oldState).never.toEqual(openState)
			expect(openState).toEqual({
				isOpen = true,
				friend = {
					userName = "testName",
					combinedName = "testDisplayName",
					userId = 1234567891,
				},
			})

			local closeState = PlayerMenu(openState, CloseCFM())

			expect(openState).never.toEqual(closeState)
			expect(closeState).toEqual({
				isOpen = false,
				friend = {
					userId = nil,
					combinedName = "",
					userName = "",
				},
			})
		end)
	end)
end
