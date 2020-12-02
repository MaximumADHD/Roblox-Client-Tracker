return function()
	local Input = require(script.Parent.Input).PublicInterface
	local inputBindingsEqual = require(script.Parent.inputBindingsEqual)

	it("should return true if the binding lists are identical", function()
		local bindings = {}

		expect(inputBindingsEqual(bindings, bindings)).to.equal(true)
	end)

	it("should return false if any a binding in the first list does not exist in the second", function()
		local action = function() end
		local bindings1 = {
			A = Input.onBegin(Enum.KeyCode.ButtonA, action),
		}
		local bindings2 = {
			B = Input.onBegin(Enum.KeyCode.ButtonA, action),
		}

		expect(inputBindingsEqual(bindings1, bindings2)).to.equal(false)
	end)

	it("should return false if any a binding in the second list does not exist in the first", function()
		local action = function() end
		local bindings1 = {
			A = Input.onBegin(Enum.KeyCode.ButtonA, action),
		}
		local bindings2 = {
			B = Input.onBegin(Enum.KeyCode.ButtonA, action),
			A = Input.onBegin(Enum.KeyCode.ButtonA, action),
		}

		expect(inputBindingsEqual(bindings1, bindings2)).to.equal(false)
	end)

	it("should return false if any bindings of the same name have different kinds", function()
		local action = function() end
		local bindings1 = {
			A = Input.onBegin(Enum.KeyCode.ButtonA, action),
		}
		local bindings2 = {
			A = Input.onEnd(Enum.KeyCode.ButtonA, action),
		}

		expect(inputBindingsEqual(bindings1, bindings2)).to.equal(false)
	end)

	it("should return false if any bindings of the same name have different keycodes", function()
		local action = function() end
		local bindings1 = {
			A = Input.onBegin(Enum.KeyCode.ButtonA, action),
		}
		local bindings2 = {
			A = Input.onBegin(Enum.KeyCode.ButtonB, action),
		}

		expect(inputBindingsEqual(bindings1, bindings2)).to.equal(false)
	end)

	it("should return false if any bindings of the same name have different actions", function()
		local bindings1 = {
			A = Input.onBegin(Enum.KeyCode.ButtonA, function() end),
		}
		local bindings2 = {
			A = Input.onBegin(Enum.KeyCode.ButtonA, function() end),
		}

		expect(inputBindingsEqual(bindings1, bindings2)).to.equal(false)
	end)

	describe("differing metas", function()
		it("should return false if both metas are not equal and one or both are not tables", function()
			local action = function() end
			local bindings1 = {
				A = Input.onBegin(Enum.KeyCode.ButtonA, action, "binding1"),
			}
			local bindings2 = {
				A = Input.onBegin(Enum.KeyCode.ButtonA, action, "binding2"),
			}

			expect(inputBindingsEqual(bindings1, bindings2)).to.equal(false)
		end)

		it("should return false if both metas are tables and an entry in the first table does not exist in the second", function()
			local action = function() end
			local bindings1 = {
				A = Input.onBegin(Enum.KeyCode.ButtonA, action, {
					A = "A",
				}),
			}
			local bindings2 = {
				A = Input.onBegin(Enum.KeyCode.ButtonA, action, {
					B = "B",
				}),
			}

			expect(inputBindingsEqual(bindings1, bindings2)).to.equal(false)
		end)

		it("should return false if both metas are tables and an entry in the second table does not exist in the first", function()
			local action = function() end
			local bindings1 = {
				A = Input.onBegin(Enum.KeyCode.ButtonA, action, {
					A = "A",
				}),
			}
			local bindings2 = {
				A = Input.onBegin(Enum.KeyCode.ButtonA, action, {
					B = "B",
					A = "A",
				}),
			}

			expect(inputBindingsEqual(bindings1, bindings2)).to.equal(false)
		end)

		it("should return false if both metas are tables and any entries of the same name are not equal", function()
			local action = function() end
			local bindings1 = {
				A = Input.onBegin(Enum.KeyCode.ButtonA, action, {
					A = "A",
				}),
			}
			local bindings2 = {
				A = Input.onBegin(Enum.KeyCode.ButtonA, action, {
					A = "B",
				}),
			}

			expect(inputBindingsEqual(bindings1, bindings2)).to.equal(false)
		end)
	end)
end