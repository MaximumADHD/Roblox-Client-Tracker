return function()
	local root = script.Parent
	local mockNetworkImpl = function()
		return nil
	end

	local POST = require(root.POST)({
		keyPath = "hello.world",
		networkImpl = mockNetworkImpl,
	})

	describe("WHEN invoked", function()
		local endpoint = POST(script, function(requestBuilder)
			return requestBuilder("example.com")
		end)

		it("SHOULD return an object have all expected fields", function()
			expect(endpoint.API).to.be.ok()
			expect(endpoint.getStatus).to.be.ok()
			expect(endpoint.Succeeded).to.be.ok()
			expect(endpoint.Failed).to.be.ok()
		end)
	end)
end
