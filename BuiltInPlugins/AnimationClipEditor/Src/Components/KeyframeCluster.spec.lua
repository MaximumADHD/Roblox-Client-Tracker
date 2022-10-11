return function()
	local Plugin = script.Parent.Parent.Parent
	local Roact = require(Plugin.Packages.Roact)

	local MockWrapper = require(Plugin.Src.Context.MockWrapper)

	local KeyframeCluster = require(script.Parent.KeyframeCluster)

	local function createTestKeyframeCluster()
		return Roact.createElement(MockWrapper, {}, {
			Cluster = Roact.createElement(KeyframeCluster, {
				Size = UDim2.new(),
			}),
		})
	end

	it("should create and destroy without errors", function()
		local element = createTestKeyframeCluster()
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should render correctly", function()
		local container = Instance.new("Folder")
		local instance = Roact.mount(createTestKeyframeCluster(), container)
		local frame = container:FindFirstChildOfClass("Frame")

		expect(frame).to.be.ok()
		expect(frame.LeftDiamond).to.be.ok()
		expect(frame.RightDiamond).to.be.ok()

		Roact.unmount(instance)
	end)
end
