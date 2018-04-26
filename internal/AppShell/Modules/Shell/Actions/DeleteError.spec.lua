return function()
	it("should return a table", function()
		local action = require(script.Parent.DeleteError)

		expect(action).to.be.a("table")
	end)

	it("should return a table when called as a function", function()
		local action = require(script.Parent.DeleteError)()

		expect(action).to.be.a("table")
	end)

	it("should return a table with an error with same Title, Msg, Code set as the passed in error", function()
		local Modules = game:GetService("CoreGui").RobloxGui.Modules
		local ShellModules = Modules:FindFirstChild("Shell")
		local Errors = require(ShellModules:FindFirstChild('Errors'))
		local DefaultError = Errors.Default
		local action = require(script.Parent.AddError)(DefaultError)
		local error = action.error
		expect(error).to.be.a("table")
		expect(error.Title).to.equal(DefaultError.Title)
		expect(error.Msg).to.equal(DefaultError.Msg)
		expect(error.Code).to.equal(DefaultError.Code)
	end)

	it("should set the name", function()
		local action = require(script.Parent.DeleteError)

		expect(action.name).to.equal("DeleteError")
	end)

	it("should set the type", function()
		local action = require(script.Parent.DeleteError)()

		expect(action.type).to.equal("DeleteError")
	end)
end