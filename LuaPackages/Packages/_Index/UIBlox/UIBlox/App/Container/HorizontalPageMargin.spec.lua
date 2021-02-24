return function()
	beforeAll(function(context)
		local HorizontalPageMargin = require(script.Parent.HorizontalPageMargin)
		local Packages = script:FindFirstAncestor("Packages")
		local Roact = require(Packages.Roact)

		context.mount = function(c)
			local joinedProps = {
				size = UDim2.fromOffset(c.screenSize, c.screenSize),
				backgroundColor3 = Color3.fromRGB(0, 0, 0),
			}

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

	describe("WHEN screen size is small", testWhen_ScreenSizeAs_ExpectMarginAs(360, 12))
	describe("WHEN screen size is medium", testWhen_ScreenSizeAs_ExpectMarginAs(480, 24))
	describe("WHEN screen size is large", testWhen_ScreenSizeAs_ExpectMarginAs(600, 48))
end
