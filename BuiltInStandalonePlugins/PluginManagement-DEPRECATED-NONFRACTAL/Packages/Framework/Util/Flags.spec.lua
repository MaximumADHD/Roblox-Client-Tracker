return function()
	local Flags = require(script.Parent.Flags)

	it("should expect a table", function()
		expect(function()
			Flags.new()
		end).to.throw()
	end)

	it("should return a table", function()
		local flags = Flags.__mock({
			Feature = "Flag",
		})
		expect(flags).to.be.ok()
	end)

	describe("setLocalOverride", function()
		it("should throw if the feature does not exist", function()
			local flags = Flags.__mock({
				Feature = "Flag",
			})
			expect(function()
				flags:setLocalOverride("NoFeatureHere", true)
			end).to.throw()
		end)

		it("should override the value", function()
			local flags = Flags.__mock({
				Feature = "Flag",
			})
			expect(flags:get("Feature")).to.equal(false)
			flags:setLocalOverride("Feature", true)
			expect(flags:get("Feature")).to.equal(true)
			flags:setLocalOverride("Feature", false)
			expect(flags:get("Feature")).to.equal(false)
		end)
	end)

	describe("clearLocalOverride", function()
		it("should throw if the feature does not exist", function()
			local flags = Flags.__mock({
				Feature = "Flag",
			})
			expect(function()
				flags:clearLocalOverride("NoFeatureHere", true)
			end).to.throw()
		end)

		it("should clear the override", function()
			local flags = Flags.__mock({
				Feature = "Flag",
			})
			flags:setLocalOverride("Feature", true)
			expect(flags:get("Feature")).to.equal(true)
			flags:clearLocalOverride("Feature")
			expect(flags:get("Feature")).to.equal(false)
		end)

		it("should still work even if no local override is set", function()
			local flags = Flags.__mock({
				Feature = "Flag",
			})
			flags:clearLocalOverride("Feature")
			expect(flags:get("Feature")).to.equal(false)
		end)
	end)

	describe("setLocalOverrides", function()
		it("should set the local override for every feature", function()
			local flags = Flags.__mock({
				Feature = "Flag",
				OtherFeature = "OtherFlag",
			})
			expect(flags:get("Feature")).to.equal(false)
			expect(flags:get("OtherFeature")).to.equal(false)
			flags:setLocalOverrides(true)
			expect(flags:get("Feature")).to.equal(true)
			expect(flags:get("OtherFeature")).to.equal(true)
			flags:setLocalOverrides(false)
			expect(flags:get("Feature")).to.equal(false)
			expect(flags:get("OtherFeature")).to.equal(false)
		end)
	end)

	describe("clearLocalOverrides", function()
		it("should clear the local override for every feature", function()
			local flags = Flags.__mock({
				Feature = "Flag",
				OtherFeature = "OtherFlag",
			})
			expect(flags:get("Feature")).to.equal(false)
			expect(flags:get("OtherFeature")).to.equal(false)
			flags:setLocalOverrides(true)
			expect(flags:get("Feature")).to.equal(true)
			expect(flags:get("OtherFeature")).to.equal(true)
			flags:clearLocalOverrides()
			expect(flags:get("Feature")).to.equal(false)
			expect(flags:get("OtherFeature")).to.equal(false)
		end)
	end)
end
