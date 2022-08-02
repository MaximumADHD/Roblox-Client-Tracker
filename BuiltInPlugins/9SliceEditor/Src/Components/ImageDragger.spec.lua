return function()
	local Plugin = script.Parent.Parent.Parent
	local TestHelper = require(Plugin.Src.Util.TestHelper)
	local withTestComponent = TestHelper.withTestComponent

	local ImageDragger = require(script.Parent.ImageDragger)
	local Orientation = require(Plugin.Src.Util.Orientation)

	local function getDraggerTopLevelComponent(container)
		return container:GetChildren()[1]
	end

	it("should create and destroy without errors", function()
		withTestComponent(ImageDragger, {
			orientation = Orientation.Left.rawValue(),
			pixelDimensions = Vector2.new(20, 20),
			sliceRect = {2, 2, 2, 2},
		}, function()
		end)
	end)


	it("should render an image button", function()
		withTestComponent(ImageDragger, {
			orientation = Orientation.Left.rawValue(),
			pixelDimensions = Vector2.new(20, 20),
			sliceRect = {2, 2, 2, 2},
		}, function(container)
			local dragger = getDraggerTopLevelComponent(container)
			expect(dragger:IsA("Frame")).to.equal(true)
		end)
	end)

	it("should have correct position for a vertical dragger", function ()
		withTestComponent(ImageDragger, {
			orientation = Orientation.Left.rawValue(),
			pixelDimensions = Vector2.new(100, 100),
			sliceRect = {16, 50, 20, 47},
		}, function(container)
			local dragger = getDraggerTopLevelComponent(container)
			expect(dragger.Position.X.Scale).to.be.near(16/100)
		end)
	end)

	it("should have correct position for a horizontal dragger", function ()
		withTestComponent(ImageDragger, {
			orientation = Orientation.Top.rawValue(),
			pixelDimensions = Vector2.new(100, 100),
			sliceRect = {16, 50, 20, 47},
		}, function(container)
			local dragger = getDraggerTopLevelComponent(container)
			expect(dragger.Position.Y.Scale).to.be.near(20/100)
		end)
	end)

	it("horizontal dragger position should be within parent bounds", function ()
		withTestComponent(ImageDragger, {
			orientation = Orientation.Top.rawValue(),
			pixelDimensions = Vector2.new(50, 50),
			sliceRect = {10, 10, 10, 10},
		}, function(container, updatePropsFunc)
			local dragger = getDraggerTopLevelComponent(container)

			updatePropsFunc({
				sliceRect = {10, 10, -750, 10},
			})
			expect(dragger.Position.Y.Scale).to.be.near(0)
	
			updatePropsFunc({
				sliceRect = {10, 10, 280, 10},
			})
			expect(dragger.Position.Y.Scale).to.be.near(1)

			updatePropsFunc({
				orientation = Orientation.Bottom.rawValue(),
				sliceRect = {10, 10, 10, -70},
			})
			expect(dragger.Position.Y.Scale).to.be.near(0)

			updatePropsFunc({
				orientation = Orientation.Bottom.rawValue(),
				sliceRect = {10, 10, 10, 400},
			})
			expect(dragger.Position.Y.Scale).to.be.near(1)
		end)
	end)

	it("vertical dragger position should be within parent bounds", function ()
		withTestComponent(ImageDragger, {
			orientation = Orientation.Left.rawValue(),
			pixelDimensions = Vector2.new(50, 50),
			sliceRect = {10, 10, 10, 10},
		}, function(container, updatePropsFunc)
			local dragger = getDraggerTopLevelComponent(container)

			updatePropsFunc({
				sliceRect = {-800, 10, 10, 10},
			})
			expect(dragger.Position.X.Scale).to.be.near(0)
	
			updatePropsFunc({
				sliceRect = {500, 10, 280, 10},
			})
			expect(dragger.Position.X.Scale).to.be.near(1)

			updatePropsFunc({
				orientation = Orientation.Right.rawValue(),
				sliceRect = {10, -800, 10, 10},
			})
			expect(dragger.Position.X.Scale).to.be.near(0)

			updatePropsFunc({
				orientation = Orientation.Right.rawValue(),
				sliceRect = {10, 500, 10, 10},
			})
			expect(dragger.Position.X.Scale).to.be.near(1)
		end)
	end)
end
