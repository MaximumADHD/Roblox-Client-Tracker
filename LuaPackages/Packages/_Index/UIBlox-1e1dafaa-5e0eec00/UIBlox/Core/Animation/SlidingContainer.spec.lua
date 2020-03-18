return function()
	local UIBloxRoot = script.Parent.Parent.Parent
	local Roact = require(UIBloxRoot.Parent.Roact)
	local mockStyleComponent = require(UIBloxRoot.Utility.mockStyleComponent)
	local SlidingContainer = require(script.Parent.SlidingContainer)
	local SlidingDirection = require(script.Parent.Enum.SlidingDirection)

	local createSlidingContainer = function(props)
		return mockStyleComponent({
			SlidingContainer = Roact.createElement(SlidingContainer, props)
		})
	end

	it("should throw on empty slidingDirection", function()
		local element = createSlidingContainer({})
		expect(function()
			Roact.mount(element)
		end).to.throw()
	end)

	it("should create and destroy without errors with valid slidingDirection", function()
		local element = createSlidingContainer({
			slidingDirection = SlidingDirection.Down,
		})

		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should create and destroy without errors when show is true", function()
		local element = createSlidingContainer({
			show = true,
			slidingDirection = SlidingDirection.Right,
			[Roact.Children] = {
				Roact.createElement("Frame", {
					Size = UDim2.new(1, 0, 1, 0),
				}),
			},
		})

		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end