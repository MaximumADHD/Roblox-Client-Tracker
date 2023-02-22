return function()
	local AppCommonLib = script:FindFirstAncestor("AppCommonLib")
	local Packages = AppCommonLib.Parent

	local jestExpect = require(Packages.Dev.JestGlobals).expect
	local jest = require(Packages.Dev.JestGlobals).jest

	local getNumericalApplicationId = require(script.Parent.getNumericalApplicationId)

	describe("getNumericalApplicationId", function()
		local applicationStorageService
		beforeEach(function()
			applicationStorageService = {
				GetItem = jest.fn().mockReturnValue(nil),
			}
		end)

		describe("WHEN installation id is number", function()
			it("SHOULD always return a number if given one", function()
				applicationStorageService.GetItem = jest.fn().mockReturnValue(100)

				local result = getNumericalApplicationId(applicationStorageService)

				jestExpect(result).toBe(100)
			end)
		end)

		describe("WHEN installation id is a string", function()
			it("SHOULD always return the last two digits of a number", function()
				applicationStorageService.GetItem = jest.fn().mockReturnValue("12312")

				local result = getNumericalApplicationId(applicationStorageService)

				jestExpect(result).toBe(12)
			end)

			it("SHOULD always return the final numerical digits excluding letters", function()
				applicationStorageService.GetItem = jest.fn().mockReturnValue("AAA100")

				local result = getNumericalApplicationId(applicationStorageService)

				jestExpect(result).toBe(0)
			end)

			it("SHOULD return nil if string evaluates as empty", function()
				applicationStorageService.GetItem = jest.fn().mockReturnValue("AAA")

				local result = getNumericalApplicationId(applicationStorageService)

				jestExpect(result).toBeNil()
			end)
		end)

		describe("WHEN installation id is not a string or number", function()
			it("SHOULD return nil when given a table", function()
				applicationStorageService.GetItem = jest.fn().mockReturnValue({})

				local result = getNumericalApplicationId(applicationStorageService)

				jestExpect(result).toBeNil()
			end)

			it("SHOULD return false if rollout percentage is 100 or over", function()
				applicationStorageService.GetItem = jest.fn().mockReturnValue(nil)

				local result = getNumericalApplicationId(applicationStorageService)

				jestExpect(result).toBeNil()
			end)
		end)
	end)
end
