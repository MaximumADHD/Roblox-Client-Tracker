return function()
	local Framework = script.Parent.Parent.Parent
	local Roact = require(Framework.Parent.Roact)
	local TestHelpers = require(Framework.TestHelpers)
	local Pane = require(script.Parent)

	local function createPane(props)
		props = props or {}
		return TestHelpers.provideMockContext(nil, {
			Pane = Roact.createElement(Pane, props),
		})
	end

	it("should create and destroy without errors", function()
		local element = createPane()
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("check that the Roact.Ref is passed to the underlying frame", function()
		local ref = Roact.createRef()
		local element = createPane({
			[Roact.Ref] = ref
		})
		local instance = Roact.mount(element)
		expect(ref.current.ClassName).to.equal("Frame")
		Roact.unmount(instance)
	end)
end
