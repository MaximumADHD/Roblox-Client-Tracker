return function()
	local AppCommonLib = script:FindFirstAncestor("AppCommonLib")
	local Packages = AppCommonLib.Parent

	local jestExpect = require(Packages.Dev.JestGlobals).expect
	local jest = require(Packages.Dev.JestGlobals).jest

	local rolloutByApplicationId = require(script.Parent.rolloutByApplicationId)

	describe("rolloutByApplicationId", function()
		local applicationStorageService
		beforeEach(function()
			applicationStorageService = {
				GetItem = jest.fn().mockReturnValue(nil),
			}
		end)

		describe("Caching value", function()
			it(
				"SHOULD always return false if get rollout percentage is 50% based on original application id - even if it changes",
				function()
					applicationStorageService.GetItem = jest.fn().mockReturnValue(199)
					local getRollout = rolloutByApplicationId(function()
						return 50
					end, applicationStorageService)

					local result = getRollout()

					jestExpect(result).toBe(false)

					applicationStorageService.GetItem = jest.fn().mockReturnValue(100)

					local secondResult = getRollout()

					jestExpect(secondResult).toBe(false)
				end
			)

			it("SHOULD allow new functions to be generated with their own caching", function()
				applicationStorageService.GetItem = jest.fn().mockReturnValue(199)

				local result = rolloutByApplicationId(function()
					return 50
				end, applicationStorageService)()
				local secondResult = rolloutByApplicationId(function()
					return 100
				end, applicationStorageService)()

				jestExpect(result).toBe(false)
				jestExpect(secondResult).toBe(true)
			end)
		end)

		describe("WHEN installation id is number", function()
			it("SHOULD always return false if get rollout percentage is 0", function()
				applicationStorageService.GetItem = jest.fn().mockReturnValue(100)

				local result = rolloutByApplicationId(function()
					return 0
				end, applicationStorageService)()

				jestExpect(result).toBe(false)
			end)

			it("SHOULD always return true if get rollout percentage is 100", function()
				applicationStorageService.GetItem = jest.fn().mockReturnValue(100)

				local result = rolloutByApplicationId(function()
					return 100
				end, applicationStorageService)()

				jestExpect(result).toBe(true)
			end)

			it("SHOULD return true if last two digits are under rollout percentage", function()
				applicationStorageService.GetItem = jest.fn().mockReturnValue(10109)

				local result = rolloutByApplicationId(function()
					return 10
				end, applicationStorageService)()

				jestExpect(result).toBe(true)
			end)

			it("SHOULD return false if last two digits are under rollout percentage", function()
				applicationStorageService.GetItem = jest.fn().mockReturnValue(10101)

				local result = rolloutByApplicationId(function()
					return 1
				end, applicationStorageService)()

				jestExpect(result).toBe(false)
			end)
		end)

		describe("WHEN installation id is a string", function()
			it("SHOULD always return false if get rollout percentage is 0", function()
				applicationStorageService.GetItem = jest.fn().mockReturnValue("12312")

				local result = rolloutByApplicationId(function()
					return 0
				end, applicationStorageService)()

				jestExpect(result).toBe(false)
			end)

			it("SHOULD always return true if get rollout percentage is 100", function()
				applicationStorageService.GetItem = jest.fn().mockReturnValue("AAA100")

				local result = rolloutByApplicationId(function()
					return 100
				end, applicationStorageService)()

				jestExpect(result).toBe(true)
			end)

			it("SHOULD return true if last two digits are under rollout percentage", function()
				applicationStorageService.GetItem = jest.fn().mockReturnValue("MMMM10109")

				local result = rolloutByApplicationId(function()
					return 10
				end, applicationStorageService)()

				jestExpect(result).toBe(true)
			end)

			it("SHOULD return false if last two digits are under rollout percentage", function()
				applicationStorageService.GetItem = jest.fn().mockReturnValue("qqqq10101")

				local result = rolloutByApplicationId(function()
					return 1
				end, applicationStorageService)()

				jestExpect(result).toBe(false)
			end)

			it("SHOULD return false if rollout percentage is under 100 and string evaluates as empty", function()
				applicationStorageService.GetItem = jest.fn().mockReturnValue("AAA")

				local result = rolloutByApplicationId(function()
					return 99
				end, applicationStorageService)()

				jestExpect(result).toBe(false)
			end)

			it("SHOULD return false if rollout percentage is 100 or over and string evaluates as empty", function()
				applicationStorageService.GetItem = jest.fn().mockReturnValue("AAAA")

				local result = rolloutByApplicationId(function()
					return 100
				end, applicationStorageService)()

				jestExpect(result).toBe(true)
			end)

			it("SHOULD return false if rollout percentage is under 100 and string is empty", function()
				applicationStorageService.GetItem = jest.fn().mockReturnValue("")

				local result = rolloutByApplicationId(function()
					return 99
				end, applicationStorageService)()

				jestExpect(result).toBe(false)
			end)

			it("SHOULD return false if rollout percentage is 100 or over and string is empty", function()
				applicationStorageService.GetItem = jest.fn().mockReturnValue("")

				local result = rolloutByApplicationId(function()
					return 100
				end, applicationStorageService)()

				jestExpect(result).toBe(true)
			end)
		end)

		describe("WHEN installation id is not a string or number", function()
			it("SHOULD return false if rollout percentage is under 100", function()
				applicationStorageService.GetItem = jest.fn().mockReturnValue({})

				local result = rolloutByApplicationId(function()
					return 99
				end, applicationStorageService)()

				jestExpect(result).toBe(false)
			end)

			it("SHOULD return false if rollout percentage is 100 or over", function()
				applicationStorageService.GetItem = jest.fn().mockReturnValue({})

				local result = rolloutByApplicationId(function()
					return 100
				end, applicationStorageService)()

				jestExpect(result).toBe(true)
			end)
		end)
	end)
end
