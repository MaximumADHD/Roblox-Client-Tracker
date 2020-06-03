return function()
	describe("WHEN required", function()
		local fromStaticSource = require(script.Parent.fromStaticSource)

		it("SHOULD have the following interface", function()
			expect(fromStaticSource).to.be.a("function")
		end)

		describe("WHEN invoked", function()
			local fromStaticSourceInstance = fromStaticSource()
			it("SHOULD have the following interface", function()
				expect(fromStaticSourceInstance).to.be.a("function")
			end)

			describe("GIVEN a static value", function()
				local mockExternalPolicy = "mockExternalPolicy"

				describe("WHEN invoked", function()
					local fromStaticSourceInstanceWithExternalPolicy = fromStaticSourceInstance(mockExternalPolicy)

					it("SHOULD have the following interface", function()
						expect(fromStaticSourceInstanceWithExternalPolicy).to.be.a("table")
						expect(fromStaticSourceInstanceWithExternalPolicy.read).to.be.a("function")
						expect(fromStaticSourceInstanceWithExternalPolicy.onPolicyChanged).to.be.a("function")
					end)

					describe("WHEN read is invoked", function()
						local result = fromStaticSourceInstanceWithExternalPolicy.read()
						it("SHOULD return the static value", function()
							expect(result).to.equal(mockExternalPolicy)
						end)
					end)

					describe("WHEN onPolicyChanged is invoked", function()
						local result = fromStaticSourceInstanceWithExternalPolicy.onPolicyChanged()
						it("SHOULD return a Disconnect-able object", function()
							expect(result).to.be.ok()
							expect(result.Disconnect).to.be.ok()
						end)
					end)
				end)
			end)
		end)
	end)
end
