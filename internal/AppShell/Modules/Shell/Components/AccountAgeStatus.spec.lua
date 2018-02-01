return function()
	local Modules = game:GetService("CoreGui").RobloxGui.Modules
	local Store = require(Modules.Common.Rodux).Store
	local AccountAgeStatus = require(script.Parent.AccountAgeStatus)
	local SetUnder13 = require(Modules.Shell.Actions.SetUnder13)

	it("should construct and destroy the object", function()
		local reducer = require(Modules.Shell.Reducers.AppShellReducer)
		local store = Store.new(reducer, {})
		local object = AccountAgeStatus.new(store, nil)

		expect(object).to.be.ok()
		expect(object).to.be.a("table")

		object:Destruct()

		expect(object.rbx).never.to.be.ok()
		expect(object.StoreChangedCn).never.to.be.ok()

		store:Destruct()
	end)

	it("should update status on store changed", function()
		local reducer = require(Modules.Shell.Reducers.AppShellReducer)
		local store = Store.new(reducer, {})
		local object = AccountAgeStatus.new(store, nil)

		expect(object.rbx.AccountAgeText.Text).to.equal("")

		store:Dispatch(SetUnder13(true))
		store:Flush()

		expect(object.rbx.AccountAgeText.Text).never.to.equal("")

		store:Destruct()
	end)
end