return function()
	local LoadingRoot = script.Parent
	local UIBloxRoot = LoadingRoot.Parent
	local Roact = require(UIBloxRoot.Parent.Roact)
	local TextureScroller = require(LoadingRoot.TextureScroller)

	it("should create and destroy without errors", function()
		local element = Roact.createElement(TextureScroller, {
			Image = "rbxasset://textures/ui/LuaApp/graphic/shimmer_darkTheme.png",
			imageScrollCycleTime = 2,
			imagePositionStart = UDim2.new(-1, 0, 0, 0),
			imagePositionEnd = UDim2.new(1, 0, 0, 0),
		})

		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("checking texture positions on a normal scroll", function()
		local element = Roact.createElement(TextureScroller, {
			Size = UDim2.new(0, 100, 0, 100),
			Position = UDim2.new(0, 0, 0, 0),
			Image = "rbxasset://textures/ui/LuaApp/graphic/shimmer_darkTheme.png",
			ImageTransparency = 0,
			imagePositionStart = UDim2.new(-1, 0, 0, 0),
			imagePositionEnd = UDim2.new(1, 0, 0, 0),
			imageScrollCycleTime = 2,
		})

		local instance = Roact.mount(element)
		local textureScrollerInstance = instance._instance
		local textureInstance = textureScrollerInstance.imageRef.current
		textureScrollerInstance.renderSteppedCallback(0)
		expect(textureInstance.Position.X.Scale).to.be.near(-1)
		expect(textureInstance.Position.X.Offset).to.equal(0)
		expect(textureInstance.Position.Y.Scale).to.equal(0)
		expect(textureInstance.Position.Y.Offset).to.equal(0)
		textureScrollerInstance.renderSteppedCallback(0.2)
		expect(textureInstance.Position.X.Scale).to.be.near(-0.8)
		expect(textureInstance.Position.X.Offset).to.equal(0)
		expect(textureInstance.Position.Y.Scale).to.equal(0)
		expect(textureInstance.Position.Y.Offset).to.equal(0)
		textureScrollerInstance.renderSteppedCallback(0.3)
		expect(textureInstance.Position.X.Scale).to.be.near(-0.5)
		expect(textureInstance.Position.X.Offset).to.equal(0)
		expect(textureInstance.Position.Y.Scale).to.equal(0)
		expect(textureInstance.Position.Y.Offset).to.equal(0)
		textureScrollerInstance.renderSteppedCallback(0.5)
		expect(textureInstance.Position.X.Scale).to.be.near(0)
		expect(textureInstance.Position.X.Offset).to.equal(0)
		expect(textureInstance.Position.Y.Scale).to.equal(0)
		expect(textureInstance.Position.Y.Offset).to.equal(0)
		textureScrollerInstance.renderSteppedCallback(1)
		expect(textureInstance.Position.X.Scale).to.be.near(-1)
		expect(textureInstance.Position.X.Offset).to.equal(0)
		expect(textureInstance.Position.Y.Scale).to.equal(0)
		expect(textureInstance.Position.Y.Offset).to.equal(0)
		expect(textureScrollerInstance.lerpValue).to.be.near(0)
		textureScrollerInstance.renderSteppedCallback(100)
		expect(textureInstance.Position.X.Scale).to.be.near(-1)
		expect(textureInstance.Position.X.Offset).to.equal(0)
		expect(textureInstance.Position.Y.Scale).to.equal(0)
		expect(textureInstance.Position.Y.Offset).to.equal(0)
		expect(textureScrollerInstance.lerpValue).to.be.near(0)
		textureScrollerInstance.renderSteppedCallback(-0.2)
		expect(textureInstance.Position.X.Scale).to.be.near(0.8)
		expect(textureInstance.Position.X.Offset).to.equal(0)
		expect(textureInstance.Position.Y.Scale).to.equal(0)
		expect(textureInstance.Position.Y.Offset).to.equal(0)
		Roact.unmount(instance)
	end)

	it("checking texture positions on a complex movement", function()
		local element = Roact.createElement(TextureScroller, {
			Size = UDim2.new(0, 100, 0, 100),
			Position = UDim2.new(0, 0, 0, 0),
			Image = "rbxasset://textures/ui/LuaApp/graphic/shimmer_darkTheme.png",
			ImageTransparency = 0,
			imagePositionStart = UDim2.new(-1, 50, 2, 35),
			imagePositionEnd = UDim2.new(1, 100, -2, 176),
			imageScrollCycleTime = 1.3,
		})

		local instance = Roact.mount(element)
		local textureScrollerInstance = instance._instance
		local textureInstance = textureScrollerInstance.imageRef.current
		textureScrollerInstance.renderSteppedCallback(0)
		expect(textureInstance.Position.X.Scale).to.equal(-1)
		expect(textureInstance.Position.X.Offset).to.equal(50)
		expect(textureInstance.Position.Y.Scale).to.equal(2)
		expect(textureInstance.Position.Y.Offset).to.equal(35)
		textureScrollerInstance.renderSteppedCallback(0.2)
		expect(textureInstance.Position.X.Scale).to.be.near(-0.6923, 0.001)
		expect(textureInstance.Position.X.Offset).to.equal(57) -- int(57.6923)
		expect(textureInstance.Position.Y.Scale).to.be.near(1.3846, 0.001)
		expect(textureInstance.Position.Y.Offset).to.equal(56) -- int(56.6923)
		textureScrollerInstance.renderSteppedCallback(0.033)
		textureScrollerInstance.renderSteppedCallback(0.033)
		textureScrollerInstance.renderSteppedCallback(0.034)
		textureScrollerInstance.renderSteppedCallback(1)
		expect(textureInstance.Position.X.Scale).to.equal(-1)
		expect(textureInstance.Position.X.Offset).to.equal(50)
		expect(textureInstance.Position.Y.Scale).to.equal(2)
		expect(textureInstance.Position.Y.Offset).to.equal(35)
		Roact.unmount(instance)
	end)
end