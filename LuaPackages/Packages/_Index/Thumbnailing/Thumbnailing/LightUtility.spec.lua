return function()
	local Lighting = game:GetService("Lighting")
	local LightUtility = require(script.Parent.LightUtility)

	describe("AddDefaultPointLightRelativeTo", function()
		it("SHOULD return a function", function()
			expect(LightUtility.AddDefaultPointLightRelativeTo).to.be.a("function")
		end)
		it("SHOULD add a point light", function()
			LightUtility.AddDefaultPointLightRelativeTo(CFrame.new())
			local parent = workspace:FindFirstChild("ThumbnailLightAnchor_0")
			expect(parent).never.to.equal(nil)
			if parent then
				local light = parent:FindFirstChild("PointLight_0")
				expect(light).never.to.equal(nil)
				if light then
					expect(typeof(parent)).to.equal("Instance")
					expect(typeof(light)).to.equal("Instance")
				end
			end
		end)
	end)

	describe("AddLightsFromExtraParams", function()
		it("SHOULD return a function", function()
			expect(LightUtility.AddLightsFromExtraParams).to.be.a("function")
		end)
		it("SHOULD do nothing if no light args are added", function()
			local changedSomething = LightUtility.AddLightsFromExtraParams({}, CFrame.new())
			expect(changedSomething).to.equal(false)
		end)
		it("SHOULD change ambient light if requested", function()
			local changedSomething = LightUtility.AddLightsFromExtraParams({
				timeOfDay = 14,
				brightness = 0.1234,
			}, CFrame.new())
			expect(changedSomething).to.equal(true)
			expect(Lighting.Brightness).to.be.near(0.1234, 0.00001)
			expect(Lighting.ClockTime).to.equal(14)
		end)
		it("SHOULD add point lights", function()
			local changedSomething = LightUtility.AddLightsFromExtraParams({
				pointLights = {
					{
						pos = "0/-30/6",
						color = "0/255/0",
					},
				},
			}, CFrame.new())
			expect(changedSomething).to.equal(true)
			local parent = workspace:FindFirstChild("ThumbnailLightAnchor_1") :: Part
			local light = parent:FindFirstChild("PointLight_1")
			expect(typeof(parent)).to.equal("Instance")
			expect(typeof(light)).to.equal("Instance")
			expect(parent.Position.X).to.equal(3)
			expect(parent.Position.Y).to.equal(0)
			expect(parent.Position.Magnitude).to.equal(6)
		end)
	end)
end
