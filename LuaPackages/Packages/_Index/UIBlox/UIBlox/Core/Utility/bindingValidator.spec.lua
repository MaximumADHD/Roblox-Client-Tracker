return function()
	local UtilityRoot = script.Parent
	local UIBloxRoot = UtilityRoot.Parent.Parent
	local t = require(UIBloxRoot.Parent.t)
	local Roact = require(UIBloxRoot.Parent.Roact)

	local bindingValidator = require(script.Parent.bindingValidator)
	local numberBindingValidator = bindingValidator(t.number)

	it("should return false for non-bindings", function()
		expect(numberBindingValidator("")).to.equal(false)
		expect(numberBindingValidator({})).to.equal(false)
		expect(numberBindingValidator(function() end)).to.equal(false)
	end)

	it("should return false if binding value type not match", function()
		local binding = Roact.createBinding("0")
		expect(numberBindingValidator(binding)).to.equal(false)
	end)

	it("should return true if binding value matches expected type", function()
		local binding = Roact.createBinding(0)
		expect(numberBindingValidator(binding)).to.equal(true)
	end)
end
