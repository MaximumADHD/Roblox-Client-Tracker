return function()
	local Plugin = script.Parent.Parent.Parent.Parent
	local Roact = require(Plugin.Packages.Roact)

	local MockWrapper = require(Plugin.Src.Context.MockWrapper)

	local Cubic = require(script.Parent.Cubic)

	local function createTestCubic(x1, y1, s1, x2, y2, s2, width, color, transparency, minClamp, maxClamp)
		return Roact.createElement(MockWrapper, {}, {
			Cubic = Roact.createElement(Cubic, {
				A = Vector2.new(x1, y1),
				ASlope = s1,
				B = Vector2.new(x2, y2),
				BSlope = s2,
				Width = width,
				Color = color,
				Transparency = transparency,
				MinClamp = minClamp,
				MaxClamp = maxClamp,
				FrameWidth = 200,
			}),
		})
	end

	it("should create and destroy without errors", function()
		local element = createTestCubic(0, 0, 0, 100, 100, 1, 1, Color3.fromRGB(255, 0, 0), 0.5)
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should accept clamp values", function()
		local element = createTestCubic(0, 0, 0, 100, 100, 1, 1, Color3.fromRGB(255, 0, 0), 0.5, 25, 75)
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should render correctly", function()
		local container = Instance.new("Folder")
		local element = createTestCubic(0, 0, 0, 100, 100, 1, 1, Color3.fromRGB(255, 0, 0), 0.5)
		local instance = Roact.mount(element, container)

		local cubic = container:FindFirstChildOfClass("Frame")
		expect(cubic).to.be.ok()
		local parts = cubic:GetChildren()
		expect(#parts > 1).to.equal(true)

		Roact.unmount(instance)
	end)
end
