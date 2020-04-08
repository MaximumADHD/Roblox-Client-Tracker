return function()
	local CorePackages = game:GetService("CorePackages")
	local Immutable = require(CorePackages.AppTempCommon.Common.Immutable)
	local User = require(CorePackages.AppTempCommon.LuaApp.Models.User)

	it("should detect if provided users are identical", function()
		local clone1 = User.fromData(1, "Andy", true)
		local clone2 = Immutable.Set(clone1, "isFriend", true)

		local result = User.compare(clone1, clone2)
		expect(result).to.equal(true)

		result = User.compare(clone2, clone1)
		expect(result).to.equal(true)
	end)

	it("should detect when there is one or more fields with different values", function()
		local andy = User.fromData(1, "Andy", true)
		local ollie = Immutable.Set(andy, "name", "Ollie")

		local result = User.compare(andy, ollie)
		expect(result).to.equal(false)

		result = User.compare(ollie, andy)
		expect(result).to.equal(false)
	end)

	it("should detect descrepancy when one user model contains more fields than the other", function()
		local andy = User.fromData(1, "Andy", true)
		local secretlyNotAndy = Immutable.Set(andy, "someDifferentField", "I'm Ollie!")

		local result = User.compare(andy, secretlyNotAndy)
		expect(result).to.equal(false)

		result = User.compare(secretlyNotAndy, andy)
		expect(result).to.equal(false)
	end)

	it("should throw if invalid input is provided", function()
		local aString = "I'm not a table."
		local teddy = User.fromData(1, "Teddy", true)

		expect(function() User.compare(nil, nil) end).to.throw()
		expect(function() User.compare(aString, nil) end).to.throw()
		expect(function() User.compare(nil, aString) end).to.throw()
		expect(function() User.compare(aString, aString) end).to.throw()
		expect(function() User.compare(teddy, aString) end).to.throw()
		expect(function() User.compare(aString, teddy) end).to.throw()
	end)

	it("should return false if any one of the input is empty or nil)", function()
		local emptyTable = {}
		local teddy = User.fromData(1, "Teddy", true)

		local result = User.compare(teddy, nil)
		expect(result).to.equal(false)

		result = User.compare(nil, teddy)
		expect(result).to.equal(false)

		result = User.compare(teddy, emptyTable)
		expect(result).to.equal(false)

		result = User.compare(emptyTable, teddy)
		expect(result).to.equal(false)
	end)

	describe("fromDataTable", function()
		it("should properly set user data", function()
			local data = {
				id = 1,
				name = "FooBar",
				displayName = "FooBar+DN",
				isFriend = false,
			}
			local user = User.fromDataTable(data)

			expect(user.id).to.equal("1")
			expect(user.name).to.equal("FooBar")
			expect(user.displayName).to.equal("FooBar+DN")
			expect(user.isFriend).to.equal(false)
		end)

		it("should still set user data without a displayName property", function()
			local data = {
				id = 1,
				name = "FooBar",
				isFriend = false,
			}
			local user = User.fromDataTable(data)

			expect(user.id).to.equal("1")
			expect(user.name).to.equal("FooBar")
			expect(user.displayName).to.equal("FooBar")
			expect(user.isFriend).to.equal(false)
		end)
	end)
end
