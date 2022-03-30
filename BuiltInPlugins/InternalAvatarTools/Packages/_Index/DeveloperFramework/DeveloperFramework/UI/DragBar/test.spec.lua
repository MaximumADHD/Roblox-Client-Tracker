return function()
	local FFlagDevFrameworkSplitPane = game:GetFastFlag("DevFrameworkSplitPane")
	if not FFlagDevFrameworkSplitPane then
		return
	end

	local Framework = script.Parent.Parent.Parent
	local Roact = require(Framework.Parent.Roact)
	local provideMockContext = require(Framework.TestHelpers.provideMockContext)

	local DragBar = require(script.Parent)

	local function createDragBar(props)
		return provideMockContext(nil, {
			DragBar = Roact.createElement(DragBar, props),
		})
	end

	it("should create and destroy without errors", function()
		local element = createDragBar({})
		local frame = Instance.new("Frame")
		local instance = Roact.mount(element, frame)
		expect(frame.DragBar).to.be.ok()
		Roact.unmount(instance)
	end)
end
