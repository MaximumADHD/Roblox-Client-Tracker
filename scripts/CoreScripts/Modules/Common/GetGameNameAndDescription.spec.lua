--!nonstrict
local CorePackages = game:GetService("CorePackages")

local Modules = script.Parent.Parent
local MockRequest = require(Modules.LuaApp.TestHelpers.MockRequest)
local HttpResponse = require(Modules.LuaApp.Http.HttpResponse)
local StatusCodes = require(CorePackages.Workspace.Packages.Http).StatusCodes

local Promise = require(CorePackages.Promise)

local GetGameNameAndDescription = require(script.Parent.GetGameNameAndDescription)
local EnableInGameMenuV3 = require(Modules.InGameMenuV3.Flags.GetFFlagEnableInGameMenuV3)

local testName = "Test Name"
local testDescription = "Test Description"
local testCreator = "Test Creator"

return function()
	describe("GetGameNameAndDescription", function()
		local responseBody = {
			data = {
				[1] = {
					name = testName,
					description = testDescription,
					creator = {
						name = testCreator,
					}
				}
			}
		}

		local mockNetworking = MockRequest.simpleSuccessRequest(responseBody)

		if EnableInGameMenuV3() then
			it("should return a promise that resolves with the name, description and creator", function()
				local testGameId = 1818
				local resultPromise = GetGameNameAndDescription(mockNetworking, testGameId)

				local success, result = resultPromise:timeout(5):await()

				expect(success).to.equal(true)
				expect(result.Name).to.equal(testName)
				expect(result.Description).to.equal(testDescription)
				expect(result.Creator).to.equal(testCreator)
			end)
		end

		it("should return a promise that resolves with the name and description", function()
			local testGameId = 1818
			local resultPromise = GetGameNameAndDescription(mockNetworking, testGameId)

			local success, result = resultPromise:timeout(5):await()

			expect(success).to.equal(true)
			expect(result.Name).to.equal(testName)
			expect(result.Description).to.equal(testDescription)
		end)

		it("should return a promise that resolves with the name and description when already cached", function()
			local testGameId = 1819
			local firstPromise = GetGameNameAndDescription(mockNetworking, testGameId)
			firstPromise:timeout(5):await()

			local resultPromise = GetGameNameAndDescription(mockNetworking, testGameId)

			local success, result = resultPromise:timeout(5):await()

			expect(success).to.equal(true)
			expect(result.Name).to.equal(testName)
			expect(result.Description).to.equal(testDescription)
		end)

		it("should return a promise that resolves with the name and description when there is a request in progress", function()
			local testGameId = 1820
			local resolveNetworking = nil
			local resolveUrl = nil

			local inProgressMockNetworking = function(url, requestMethod, options)
				resolveUrl = url
				return Promise.new(function(resolve, reject)
					resolveNetworking = resolve
				end)
			end

			local firstPromise = GetGameNameAndDescription(inProgressMockNetworking, testGameId)
			local secondPromise = GetGameNameAndDescription(mockNetworking, testGameId)

			resolveNetworking(HttpResponse.new(resolveUrl, responseBody, 0, StatusCodes.OK))

			local success, result = firstPromise:timeout(5):await()
			expect(success).to.equal(true)
			expect(result.Name).to.equal(testName)
			expect(result.Description).to.equal(testDescription)

			success, result = secondPromise:timeout(5):await()
			expect(success).to.equal(true)
			expect(result.Name).to.equal(testName)
			expect(result.Description).to.equal(testDescription)
		end)

		it("should be successfully even if there is no game description", function()
			local noDescriptionResponseBody = {
				data = {
					[1] = {
						name = testName,
					}
				}
			}

			local testGameId = 1919

			local noDescriptionMockNetworking = MockRequest.simpleSuccessRequest(noDescriptionResponseBody)

			local resultPromise = GetGameNameAndDescription(noDescriptionMockNetworking, testGameId)

			local success, result = resultPromise:timeout(5):await()

			expect(success).to.equal(true)
			expect(result.Name).to.equal(testName)
			expect(result.Description).to.equal("")
		end)
	end)
end
