return function()
	local ErrorHandler = require(script.Parent.ErrorHandler)
	local Actions = script.Parent.Parent.Actions

	local AddError = require(Actions.AddError)
	local DeleteError = require(Actions.DeleteError)

	describe("initial state", function()
		it("should return an initial table when passed nil", function()
			local state = ErrorHandler(nil, {})
			expect(state).to.be.a("table")
		end)
	end)

	describe("Action AddError", function()
		it("should add the error to the errormap when an action with error dispatched", function()
			local Modules = game:GetService("CoreGui").RobloxGui.Modules
			local ShellModules = Modules:FindFirstChild("Shell")
			local Errors = require(ShellModules:FindFirstChild('Errors'))
			local DefaultError = Errors.Default
			local action = AddError(DefaultError)
			local state = ErrorHandler(nil, action)

			expect(state).to.be.a("table")
            expect(state:Length()).to.equal(1)
            expect(state:First()).to.equal(action.error)
		end)
	end)

	describe("Action DeleteError", function()
		it("should delete the corresponding error in the errormap when DeleteError", function()
			local Modules = game:GetService("CoreGui").RobloxGui.Modules
			local ShellModules = Modules:FindFirstChild("Shell")
			local Errors = require(ShellModules:FindFirstChild('Errors'))
			local DefaultError = Errors.Default
			local action = AddError(DefaultError)
			local state = ErrorHandler(nil, action)
			action = DeleteError(action.error)
			state = ErrorHandler(state, action)

			expect(state).to.be.a("table")
            expect(state:Length()).to.equal(0)
		end)
	end)
end