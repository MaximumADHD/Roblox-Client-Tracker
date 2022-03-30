return function()
	local FFlagDevFrameworkSplitPane = game:GetFastFlag("DevFrameworkSplitPane")
	if not FFlagDevFrameworkSplitPane then
		return
	end

	local Framework = script.Parent.Parent.Parent
	local Roact = require(Framework.Parent.Roact)
	local provideMockContext = require(Framework.TestHelpers.provideMockContext)

	local SplitPane = require(script.Parent)

	local function createSplitPane(props)
		return provideMockContext(nil, {
			SplitPane = Roact.createElement(SplitPane, props),
		})
	end

	it("should create and destroy without errors", function()
		local element = createSplitPane({
			Sizes = {
				UDim.new(0.5, 0),
				UDim.new(0.5, 0)
			},
			MinSizes = {
				UDim.new(0, 50),
				UDim.new(0, 50)
			},
			OnSizesChange = function(sizes) end,
		})
		local frame = Instance.new("Frame")
		local instance = Roact.mount(element, frame)
		frame.Parent = game.Workspace
		expect(frame.SplitPane["Pane 1"]).to.be.ok()
		expect(frame.SplitPane["Pane 2"]).to.be.ok()
		expect(frame.SplitPane["Drag 1"]).to.be.ok()
		Roact.unmount(instance)
	end)
end
