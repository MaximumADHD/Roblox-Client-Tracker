return function()
	local Packages = script.Parent.Parent.Parent
	local Mock = require(Packages.Mock)
	local MagicMock = Mock.MagicMock

	local fromMemStorageService = require(script.Parent.oldFromMemStorageService)

	describe("GIVEN a behavior", function()
		local behavior = "mockBehavior"
		describe("GIVEN a MemStorageService and HttpService with functional GetItem, BindAndFire and JSONDecode", function()
			local mockMemStorageService = MagicMock.new()
			mockMemStorageService.GetItem = function()
				return "jsonExternalPolicy"
			end
			local updateMemStorageService = Instance.new("BindableEvent")
			mockMemStorageService.BindAndFire = function(_, _, func)
				return updateMemStorageService.Event:Connect(function(value, a)
					func(value)
				end)
			end
			local mockHttpService = MagicMock.new()
			mockHttpService.JSONDecode = function()
				return "decodedExternalPolicy"
			end

			local fromMemStorageServiceInstance = fromMemStorageService({
				MemStorageService = mockMemStorageService,
				HttpService = mockHttpService,
			})(behavior)
			it("SHOULD return the policy when `read` is invoked", function()
				local result = fromMemStorageServiceInstance.read()
				expect(result).to.equal("decodedExternalPolicy")
			end)

			it("SHOULD return a Disconnect-able object when `onPolicyChanged` is invoked", function()
				local result = fromMemStorageServiceInstance.onPolicyChanged()
				expect(result).to.be.ok()
				expect(result.Disconnect).to.be.ok()
				result:Disconnect()
			end)

			it("SHOULD invoke passed in function with JSONDecode results when updateMemStorageService is fired", function()
				local wasEverCalled = false
				local result = fromMemStorageServiceInstance.onPolicyChanged(function(value)
					wasEverCalled = true
					expect(value).to.equal("decodedExternalPolicy")
				end)

				updateMemStorageService:Fire("jsonExternalPolicyUpdated")

				result:Disconnect()

				expect(wasEverCalled).to.equal(true)
			end)

			it("SHOULD NOT invoke passed in function with JSONDecode results "..
				"when updateMemStorageService is fired with the same value", function()
				local timesEverCalled = 0
				local result = fromMemStorageServiceInstance.onPolicyChanged(function(value)
					timesEverCalled = timesEverCalled + 1
					expect(value).to.equal("decodedExternalPolicy")
				end)

				updateMemStorageService:Fire("foo")
				updateMemStorageService:Fire("foo")

				result:Disconnect()

				expect(timesEverCalled).to.equal(1)
			end)

			it("SHOULD NOT invoke passed in function with JSONDecode results "..
				"when updateMemStorageService is fired with the same value, while ignore nils", function()
				local timesEverCalled = 0
				local result = fromMemStorageServiceInstance.onPolicyChanged(function(value)
					timesEverCalled = timesEverCalled + 1
					expect(value).to.equal("decodedExternalPolicy")
				end)

				updateMemStorageService:Fire("bar")
				updateMemStorageService:Fire(nil)
				updateMemStorageService:Fire("bar")

				result:Disconnect()

				expect(timesEverCalled).to.equal(1)
			end)
		end)

		describe("GIVEN a functional MemStorageService and broken HttpService JSONDecode", function()
			local mockMemStorageService = MagicMock.new()
			mockMemStorageService.GetItem = function()
				return "jsonExternalPolicy"
			end
			local updateMemStorageService = Instance.new("BindableEvent")
			mockMemStorageService.BindAndFire = function(_, _, func)
				return updateMemStorageService.Event:Connect(function(value, a)
					func(value)
				end)
			end
			local mockHttpService = MagicMock.new()
			mockHttpService.JSONDecode = function()
				return nil
			end

			local fromMemStorageServiceInstance = fromMemStorageService({
				MemStorageService = mockMemStorageService,
				HttpService = mockHttpService,
			})(behavior)
			it("SHOULD return nil when `read` is invoked", function()
				local result = fromMemStorageServiceInstance.read()
				expect(result).to.equal(nil)
			end)

			it("SHOULD invoke passed in function with JSONDecode results when updateMemStorageService is fired", function()
				local wasEverCalled = false
				local result = fromMemStorageServiceInstance.onPolicyChanged(function(value)
					wasEverCalled = true
					expect(value).to.equal(nil)
				end)

				updateMemStorageService:Fire("jsonExternalPolicyUpdated")

				result:Disconnect()

				expect(wasEverCalled).to.equal(true)
			end)
		end)

		describe("GIVEN a MemStorageService that always returns invalid results", function()
			local mockMemStorageService = MagicMock.new()
			mockMemStorageService.GetItem = function()
				return nil
			end
			local updateMemStorageService = Instance.new("BindableEvent")
			mockMemStorageService.BindAndFire = function(_, _, func)
				return updateMemStorageService.Event:Connect(function(value, a)
					func(value)
				end)
			end
			local mockHttpService = MagicMock.new()

			local fromMemStorageServiceInstance = fromMemStorageService({
				MemStorageService = mockMemStorageService,
				HttpService = mockHttpService,
			})(behavior)
			it("SHOULD return nil when `read` is invoked", function()
				local result = fromMemStorageServiceInstance.read()
				expect(result).to.equal(nil)
			end)

			it("SHOULD never invoke passed function with JSONDecode results when updateMemStorageService is fired", function()
				local wasEverCalled = false
				local result = fromMemStorageServiceInstance.onPolicyChanged(function(value)
					wasEverCalled = true
				end)

				updateMemStorageService:Fire(nil)

				result:Disconnect()

				expect(wasEverCalled).to.equal(false)
			end)
		end)

		describe("GIVEN a PlayersService with a missing LocalPlayer", function()
			local mockMemStorageService = MagicMock.new()
			mockMemStorageService.GetItem = function()
				return "mockStorageItemJSON"
			end

			local mockHttpService = MagicMock.new()
			local mockPlayersService = MagicMock.new()
			mockPlayersService.LocalPlayer = nil

			local fromMemStorageServiceInstance = fromMemStorageService({
				MemStorageService = mockMemStorageService,
				PlayersService = mockPlayersService,
				HttpService = mockHttpService,
			})(behavior)

			it("SHOULD still return a value when `read` is invoked", function()
				local result = fromMemStorageServiceInstance.read()
				expect(result).to.be.ok()
			end)
		end)

		describe("GIVEN a HttpService that can throw based on MemStorageService's GetItem", function()
			local mockMemStorageService = MagicMock.new()
			mockMemStorageService.GetItem = function()
				return "garbage"
			end
			local updateMemStorageService = Instance.new("BindableEvent")
			mockMemStorageService.BindAndFire = function(_, _, func)
				return updateMemStorageService.Event:Connect(function(value, a)
					func(value)
				end)
			end

			local mockHttpService = MagicMock.new()
			mockHttpService.JSONDecode = function(_, value)
				if value == "validJson" then
					return { foo = true }
				end

				error("invalid json")
			end

			local fromMemStorageServiceInstance = fromMemStorageService({
				MemStorageService = mockMemStorageService,
				HttpService = mockHttpService,
			})(behavior)

			it("SHOULD return nil since GetItem returns garbage", function()
				local result = fromMemStorageServiceInstance.read()
				expect(result).to.never.be.ok()
			end)

			it("SHOULD never invoke passed function with JSONDecode results when updateMemStorageService is fired", function()
				local numberOfTimesCalled = 0
				local result = fromMemStorageServiceInstance.onPolicyChanged(function(value)
					numberOfTimesCalled = numberOfTimesCalled + 1
				end)

				updateMemStorageService:Fire("validJson")
				updateMemStorageService:Fire("garbage")
				updateMemStorageService:Fire("validJson")

				result:Disconnect()

				expect(numberOfTimesCalled).to.equal(1)
			end)
		end)

		describe("GIVEN a new instance of fromMemStorageService", function()
			local validJson = "validJson"
			local mockMemStorageService = MagicMock.new()
			mockMemStorageService.GetItem = function()
				return validJson
			end
			local updateMemStorageService = Instance.new("BindableEvent")
			mockMemStorageService.BindAndFire = function(_, _, func)
				return updateMemStorageService.Event:Connect(function(value, a)
					func(value)
				end)
			end

			local mockHttpService = MagicMock.new()
			mockHttpService.JSONDecode = function(_, value)
				return "tableFromJson"
			end

			local fromMemStorageServiceInstance = fromMemStorageService({
				MemStorageService = mockMemStorageService,
				HttpService = mockHttpService,
			})(behavior)

			describe("WHEN read returns a value and onPolicyChanged returns the same value", function()
				it("SHOULD not fire onPolicyChanged function", function()
					local numberOfTimesCalled = 0
					fromMemStorageServiceInstance.onPolicyChanged(function()
						numberOfTimesCalled = numberOfTimesCalled + 1
					end)
					local result = fromMemStorageServiceInstance.read()
					-- intentionally fire the same value that we read
					updateMemStorageService:Fire(validJson)

					expect(numberOfTimesCalled).to.equal(0)
				end)
			end)
		end)
	end)
end