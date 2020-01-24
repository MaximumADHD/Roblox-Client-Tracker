return function()
	local RoduxNetworking = require(script.Parent.RoduxNetworking)
	local Promise = require(script.Parent.Promise)
	local noOpt = function()
		return Promise.resolve()
	end
	local moduleScript = {
		Name = "moduleScript",
	}
	local builderConstructorFunction = function()
	end

	describe("GIVEN an options configuration", function()
		local options = {
			keyPath = "",
			networkImpl = noOpt
		}
		it("SHOULD return a unique object when .new is called", function()
			local instance1 = RoduxNetworking.new(options)
			local instance2 = RoduxNetworking.new(options)

			expect(instance1).to.be.ok()
			expect(instance2).to.be.ok()
			expect(instance1).to.never.equal(instance2)
		end)

		describe("API", function()
			local instance = RoduxNetworking.new(options)
			it("SHOULD return an object when GET is called", function()
				local result = instance:GET(moduleScript, builderConstructorFunction)
				expect(result).to.be.ok()
			end)

			it("SHOULD return an object when POST is called", function()
				local result = instance:POST(moduleScript, builderConstructorFunction)
				expect(result).to.be.ok()
			end)

			describe("WHEN setNetworkImpl is called", function()
				local newNetworkImpl = function()
					return Promise.reject()
				end
				instance:setNetworkImpl(newNetworkImpl)
				it("SHOULD return the given value when getNetworkImpl is called", function()
					expect(instance:getNetworkImpl()).to.equal(newNetworkImpl)
				end)
			end)
		end)
	end)
end