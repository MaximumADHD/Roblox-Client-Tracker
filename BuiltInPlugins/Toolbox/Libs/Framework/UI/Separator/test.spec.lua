return function()
	local Framework = script.Parent.Parent.Parent
	local Roact = require(Framework.Parent.Roact)
	local TestHelpers = require(Framework.TestHelpers)
	local Separator = require(script.Parent)
	local Util = require(Framework.Util)
	local Style = Util.Style

	local function createTestSeparator(props)
		props = props or {}

		return TestHelpers.provideMockContext(nil, {
			Separator = Roact.createElement(Separator, props),
		})
	end

	local instance

	afterEach(function()
		if instance then
			Roact.unmount(instance)
			instance = nil
		end
	end)

	it("should create and destroy without errors", function()
		local element = createTestSeparator()
		instance = Roact.mount(element)
	end)

	describe("has correct size", function()

		it("horizontally", function()
			local container = Instance.new("Folder")
			local element = createTestSeparator({
				DominantAxis = Enum.DominantAxis.Width,
				Style = Style.new({
					StretchMargin = 2,
					Weight = 1
				})
			})
			instance = Roact.mount(element, container)
			expect(container:FindFirstChild("Separator", true).Size).to.equal(UDim2.new(1, -4, 0, 1))
		end)

		it("vertically", function()
			local container = Instance.new("Folder")
			local element = createTestSeparator({
				DominantAxis = Enum.DominantAxis.Height,
				Style = Style.new({
					StretchMargin = 2,
					Weight = 1
				})
			})
			instance = Roact.mount(element, container)
			expect(container:FindFirstChild("Separator", true).Size).to.equal(UDim2.new(0, 1, 1, -4))
		end)
	end)
end