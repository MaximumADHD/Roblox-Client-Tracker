return function()
	beforeAll(function(context)
		local HorizontalPageMargin = require(script.Parent.HorizontalPageMargin)
		local Packages = script:FindFirstAncestor("Packages")
		local Cryo = require(Packages.Cryo)
		local Roact = require(Packages.Roact)

		context.mount = function(c)
			local joinedProps = Cryo.Dictionary.join({
				size = UDim2.fromOffset(c.screenSize, c.screenSize),
				backgroundColor3 = Color3.fromRGB(0, 0, 0),
			}, c.props or {})

			local screenGui = Instance.new("ScreenGui", game:GetService("StarterGui"))
			local tree = Roact.createElement(HorizontalPageMargin, joinedProps, {
				child = Roact.createElement("Frame", {
					Size = UDim2.fromScale(1, 1),
				}),
			})
			Roact.mount(tree, screenGui)
			return screenGui
		end
	end)

	local function testWhen_ScreenSizeAs_ExpectMarginAs(screenSize, expectedMargin)
		return function()
			beforeAll(function(c)
				c.screenSize = screenSize
			end)

			describe("default behavior", function()
				beforeAll(function(c)
					c.result = c:mount()

					c.padding = c.result:FindFirstChild("padding", true)
					assert(c.padding, "padding not found")
				end)

				it(string.format("SHOULD wrap children with %dpt margins on the left and right", expectedMargin), function(c)
					expect(c.padding.PaddingLeft).to.equal(UDim.new(0, expectedMargin))
					expect(c.padding.PaddingRight).to.equal(UDim.new(0, expectedMargin))
				end)
			end)
		end
	end

	describe("WHEN screen size is small", testWhen_ScreenSizeAs_ExpectMarginAs(359, 12))
	describe("WHEN screen size is small/medium threshold", testWhen_ScreenSizeAs_ExpectMarginAs(360, 24))
	describe("WHEN screen size is medium", testWhen_ScreenSizeAs_ExpectMarginAs(480, 24))
	describe("WHEN screen size is large", testWhen_ScreenSizeAs_ExpectMarginAs(600, 48))

	describe("SHOULD respect props", function()
		beforeAll(function(c)
			c.props = nil
		end)

		it("SHOULD respect layoutOrder prop", function(c)
			c.props = {
				layoutOrder = 3
			}

			local screen = c:mount()

			local hpm = screen:FindFirstChild("RoactTree", true)
			expect(hpm.LayoutOrder).to.equal(3)
		end)

		it("SHOULD respect backgroundTransparency and backgroundColor3 props", function(c)
			c.props = {
				backgroundTransparency = 0.5,
				backgroundColor3 = Color3.fromRGB(255, 0, 0),
			}

			local screen = c:mount()

			local hpm = screen:FindFirstChild("RoactTree", true)
			expect(hpm.BackgroundTransparency).to.equal(0.5)
			expect(hpm.BackgroundColor3).to.equal(Color3.fromRGB(255, 0, 0))
		end)

		it("SHOULD respect anchorPoint and position props", function(c)
			c.props = {
				anchorPoint = Vector2.new(0.5, 0.5),
				position = UDim2.fromScale(0.5, 0.5),
			}

			local screen = c:mount()

			local hpm = screen:FindFirstChild("RoactTree", true)
			expect(hpm.AnchorPoint).to.equal(Vector2.new(0.5, 0.5))
			expect(hpm.Position).to.equal(UDim2.fromScale(0.5, 0.5))
		end)
	end)

end
