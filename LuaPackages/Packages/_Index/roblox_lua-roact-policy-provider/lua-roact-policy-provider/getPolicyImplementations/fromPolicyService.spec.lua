return function()
	local Packages = script.Parent.Parent.Parent
	local Mock = require(Packages.Mock)
	local MagicMock = Mock.MagicMock

	local fromPolicyService = require(script.Parent.fromPolicyService)

	describe("GIVEN a fully mocked dependencies", function()
		local mockPolicyService = MagicMock.new()
		mockPolicyService.GetPolicyInfoForPlayerAsync = function()
			return "mockGetPolicyInfoForPlayerAsyncResponse"
		end

		local dependencies = {
			PolicyService = mockPolicyService,
			PlayersService = MagicMock.new(),
		}

		describe("WHEN invoked", function()
			local fromPolicyServiceInstance = fromPolicyService(dependencies)()

			it("SHOULD return a table", function()
				expect(fromPolicyServiceInstance).to.be.a("table")
			end)

			it("SHOULD return a table with read and `onPolicyChanged` fields", function()
				expect(fromPolicyServiceInstance.read).to.be.a("function")
				expect(fromPolicyServiceInstance.onPolicyChanged).to.be.a("function")
			end)

			describe("WHEN `onPolicyChanged` is invoked", function()
				local timesEverCalled = 0
				local lastValue
				local connection = fromPolicyServiceInstance.onPolicyChanged(function(value)
					timesEverCalled = timesEverCalled + 1
					lastValue = value
				end)
				it("SHOULD return a Disconnect-able object when `onPolicyChanged` is invoked", function()
					expect(connection).to.be.ok()
					expect(connection.Disconnect).to.be.ok()
				end)

				it("SHOULD fire when it resolves with data", function()
					expect(timesEverCalled).to.equal(1)
					expect(lastValue).to.equal("mockGetPolicyInfoForPlayerAsyncResponse")
				end)
			end)

			describe("WHEN `read` is invoked", function()
				local result = fromPolicyServiceInstance.read()
				it("SHOULD return nil", function()
					expect(result).to.never.be.ok()
				end)
			end)
		end)
	end)

	describe("GIVEN a PlayersService with no LocalPlayer", function()
		local mockPlayersService = MagicMock.new()
		mockPlayersService.LocalPlayer = nil

		local dependencies = {
			PolicyService = MagicMock.new(),
			PlayersService = mockPlayersService,
		}

		describe("WHEN invoked", function()
			local fromPolicyServiceInstance = fromPolicyService(dependencies)()

			it("SHOULD return a table", function()
				expect(fromPolicyServiceInstance).to.be.a("table")
			end)

			describe("WHEN `onPolicyChanged` is invoked", function()
				local timesEverCalled = 0
				local connection = fromPolicyServiceInstance.onPolicyChanged(function(value)
					timesEverCalled = timesEverCalled + 1
				end)
				it("SHOULD return a Disconnect-able object when `onPolicyChanged` is invoked", function()
					expect(connection).to.be.ok()
					expect(connection.Disconnect).to.be.ok()
				end)

				it("SHOULD never fire when it rejects", function()
					expect(timesEverCalled).to.equal(0)
				end)
			end)
		end)
	end)

	describe("GIVEN a PolicyService that throws", function()
		local mockPolicyService = MagicMock.new()
		mockPolicyService.GetPolicyInfoForPlayerAsync = function()
			error("Throw")
		end

		local dependencies = {
			PolicyService = mockPolicyService,
			PlayersService = MagicMock.new(),
		}

		describe("WHEN invoked", function()
			local fromPolicyServiceInstance = fromPolicyService(dependencies)()

			it("SHOULD return a table", function()
				expect(fromPolicyServiceInstance).to.be.a("table")
			end)

			describe("WHEN `onPolicyChanged` is invoked", function()
				local timesEverCalled = 0
				local connection = fromPolicyServiceInstance.onPolicyChanged(function(value)
					timesEverCalled = timesEverCalled + 1
				end)
				it("SHOULD return a Disconnect-able object when `onPolicyChanged` is invoked", function()
					expect(connection).to.be.ok()
					expect(connection.Disconnect).to.be.ok()
				end)

				it("SHOULD never fire when it rejects", function()
					expect(timesEverCalled).to.equal(0)
				end)
			end)
		end)
	end)

	describe("GIVEN a PolicyService that returns nil", function()
		local mockPolicyService = MagicMock.new()
		mockPolicyService.GetPolicyInfoForPlayerAsync = function()
			return nil
		end

		local dependencies = {
			PolicyService = mockPolicyService,
			PlayersService = MagicMock.new(),
		}

		describe("WHEN invoked", function()
			local fromPolicyServiceInstance = fromPolicyService(dependencies)()

			it("SHOULD return a table", function()
				expect(fromPolicyServiceInstance).to.be.a("table")
			end)

			describe("WHEN `onPolicyChanged` is invoked", function()
				local timesEverCalled = 0
				local connection = fromPolicyServiceInstance.onPolicyChanged(function(value)
					timesEverCalled = timesEverCalled + 1
				end)
				it("SHOULD return a Disconnect-able object when `onPolicyChanged` is invoked", function()
					expect(connection).to.be.ok()
					expect(connection.Disconnect).to.be.ok()
				end)

				it("SHOULD never fire when it rejects", function()
					expect(timesEverCalled).to.equal(0)
				end)
			end)
		end)
	end)
end
