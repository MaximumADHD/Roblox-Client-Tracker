return function()
	local Packages = script.Parent.Parent
	local tutils = require(Packages.tutils)
	local Cryo = require(Packages.Cryo)

	-- Given an interface and a list of expected interface members,
	-- this expectation will fail the test
	local function expectInterface(actualInterface, expectedInterface)
		-- build a list of keys that are in the actualInterface
		local foundKeys = Cryo.List.map(expectedInterface, function(value)
			if actualInterface[value] then
				return value
			end
		end)

		-- compare the list of keys found in actualInterface and expectedInterface
		local result = tutils.shallowEqual(foundKeys, expectedInterface)
		if not result then
			local differences = tutils.listDifferences(expectedInterface, foundKeys)
			fail(string.format("Expected interface missing the following: %s", tutils.toString(differences)))
		end
	end

	describe("WHEN require is invoked", function()
		local PolicyProvider = require(script.Parent)

		it("SHOULD have the following public interface", function()
			expectInterface(PolicyProvider, { "withGetPolicyImplementation", "GetPolicyImplementations", "Logger" })
		end)

		it("SHOULD have all GetPolicyImplementations", function()
			expectInterface(PolicyProvider.GetPolicyImplementations, { "MemStorageService", "PolicyService", "Static" })
		end)

		describe("WHEN withGetPolicyImplementation is invoked", function()
			describe("GIVEN a stubbed GetPolicyImpl", function()
				local stubbedGetPolicyImpl = {
					read = function()
					end,
					onPolicyChanged = function()
					end,
				}
				it("SHOULD have the following public interface", function()
					local initializedProvider = PolicyProvider.withGetPolicyImplementation(stubbedGetPolicyImpl)
					expectInterface(initializedProvider, { "connect", "Provider" })
				end)
			end)

			describe("GIVEN a nothing", function()
				it("SHOULD throw", function()
					expect(function()
						PolicyProvider.withGetPolicyImplementation()
					end).to.throw()
				end)
			end)

			describe("GIVEN a GetPolicyImpl without a read", function()
				local withoutRead = {
					onPolicyChanged = function()
					end
				}
				it("SHOULD throw", function()
					expect(function()
						PolicyProvider.withGetPolicyImplementation(withoutRead)
					end).to.throw()
				end)
			end)

			describe("GIVEN a GetPolicyImpl without a onPolicyChanged", function()
				local withoutOnPolicyChanged = {
					read = function()
					end
				}
				it("SHOULD throw", function()
					expect(function()
						PolicyProvider.withGetPolicyImplementation(withoutOnPolicyChanged)
					end).to.throw()
				end)
			end)
		end)
	end)
end
