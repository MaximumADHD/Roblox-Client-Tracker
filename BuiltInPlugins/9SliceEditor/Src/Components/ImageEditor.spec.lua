return function()
	local Plugin = script.Parent.Parent.Parent
	local Roact = require(Plugin.Packages.Roact)
	local TestHelper = require(Plugin.Src.Util.TestHelper)
	local ImageEditor = require(script.Parent.ImageEditor)

	local Rhodium = require(Plugin.Packages.Dev.Rhodium)
	local Orientation = require(Plugin.Src.Util.Orientation)

	local function getSliderParentFromContainer(container)
		local background = container:FindFirstChildWhichIsA("ImageButton", true)
		local sliderParent = background.ImagePreview
		return sliderParent
	end
	
	it("should create and destroy without errors", function()
		TestHelper.withTestComponent(ImageEditor, {
			pixelDimensions = Vector2.new(10, 10),
			sliceRect = {1, 1, 1, 1},
			selectedObject = Roact.createElement("ImageLabel")
		}, function ()
		end)
	end)

	it("should render an ImageButton background", function()
		TestHelper.withTestComponent(ImageEditor, {
			pixelDimensions = Vector2.new(100, 100),
			sliceRect = {10, 20, 40, 50},
			selectedObject = Roact.createElement("ImageLabel")
		}, function (container)
			local background = container:FindFirstChildWhichIsA("ImageButton", true)
			expect(background).to.be.ok()
		end)
	end)

	it("there should be 4 sliders", function()
		TestHelper.withTestComponent(ImageEditor, {
			pixelDimensions = Vector2.new(100, 100),
			sliceRect = {10, 20, 40, 50},
			selectedObject = Roact.createElement("ImageLabel"),
		}, function (container)
			local sliderParent = getSliderParentFromContainer(container)
			expect(sliderParent:FindFirstChild("LeftDragSlider")).to.be.ok()
			expect(sliderParent:FindFirstChild("RightDragSlider")).to.be.ok()
			expect(sliderParent:FindFirstChild("TopDragSlider")).to.be.ok()
			expect(sliderParent:FindFirstChild("BottomDragSlider")).to.be.ok()
		end)
	end)

	it("dragging left slider should adjust slice center property correctly", function()
		local imageXSize = 100 -- { X0, X1, Y0, Y1 } format
		local initialSliceRect = {10, 90, 10, 90}
		local newSliceRect = nil

		TestHelper.withTestComponent(ImageEditor, {
			pixelDimensions = Vector2.new(imageXSize, 100),
			sliceRect = initialSliceRect,
			selectedObject = Roact.createElement("ImageLabel"),
			setSliceRect = function (newValue, shouldClamp)
				newSliceRect = newValue
			end,
		}, function (container)
			local sliderParent = getSliderParentFromContainer(container)
			local leftSlider = sliderParent.LeftDragSlider
			expect(leftSlider).to.be.ok()

			local element = Rhodium.Element.new(leftSlider)
			expect(element:getRbxInstance()).to.be.ok()
			expect(element:waitForRbxInstance(5)).to.be.ok()

			TestHelper.waitForHeartbeat()

			local startPos = element:getCenter()
			local dragAmountPx = 25
			Rhodium.VirtualInput.Mouse.mouseMove(startPos)
			wait()
			element:mouseDrag(dragAmountPx, 0, 1)
			local endPos = element:getCenter()
			-- Should have dragged right
			expect(endPos.x - startPos.x > 0).to.equal(true)
			wait()
			expect(newSliceRect).to.be.ok()

			local displayedImageSize = sliderParent.AbsoluteSize

			local newSliceVal = initialSliceRect[Orientation.Left.rawValue()] +
				dragAmountPx / displayedImageSize.X * imageXSize
			expect(TestHelper.numericalArrayFuzzyEquality(newSliceRect,
				{newSliceVal, 90, 10, 90}, 1)).to.equal(true)
		end)
	end)

	it("dragging bottom slider should adjust slice center property correctly", function()
		local imageYSize = 100 -- { X0, X1, Y0, Y1 } format
		local initialSliceRect = {10, 90, 10, 90}
		local newSliceRect = nil

		TestHelper.withTestComponent(ImageEditor, {
			pixelDimensions = Vector2.new(100, imageYSize),
			sliceRect = initialSliceRect,
			selectedObject = Roact.createElement("ImageLabel"),
			setSliceRect = function (newValue, shouldClamp)
				newSliceRect = newValue
			end,
		}, function (container)
			local sliderParent = getSliderParentFromContainer(container)
			local bottomSlider = sliderParent.BottomDragSlider
			expect(bottomSlider).to.be.ok()

			local element = Rhodium.Element.new(bottomSlider)
			expect(element:getRbxInstance()).to.be.ok()
			expect(element:waitForRbxInstance(5)).to.be.ok()

			TestHelper.waitForHeartbeat()

			local startPos = element:getCenter()
			local dragAmountPx = 40
			Rhodium.VirtualInput.Mouse.mouseMove(startPos)
			wait()
			element:mouseDrag(0, -dragAmountPx, 1) -- Drag up
			local endPos = element:getCenter()
			
			-- Should have dragged up
			expect(endPos.y - startPos.y < 0).to.equal(true)
			wait()
			expect(newSliceRect).to.be.ok()

			local displayedImageSize = sliderParent.AbsoluteSize

			local newSliceVal = initialSliceRect[Orientation.Bottom.rawValue()] -
				dragAmountPx / displayedImageSize.Y * imageYSize
			expect(TestHelper.numericalArrayFuzzyEquality(newSliceRect,
				{10, 90, 10, newSliceVal}, 1)).to.equal(true)
		end)
	end)

	it("dragging on background shouldn't adjust slice center", function()
		local imageXSize = 100 -- { X0, X1, Y0, Y1 } format
		local initialSliceRect = {10, 90, 10, 90}
		local newSliceRect = nil

		TestHelper.withTestComponent(ImageEditor, {
			pixelDimensions = Vector2.new(imageXSize, 100),
			sliceRect = initialSliceRect,
			selectedObject = Roact.createElement("ImageLabel"),
			setSliceRect = function (newValue, shouldClamp)
				newSliceRect = newValue
			end,
		}, function (container)
			local sliderParent = getSliderParentFromContainer(container)
			expect(sliderParent).to.be.ok()
			local element = Rhodium.Element.new(sliderParent)
			expect(element:getRbxInstance()).to.be.ok()

			TestHelper.waitForHeartbeat()

			local centerPos = element:getCenter()
			local dragAmountPx = 20
			Rhodium.VirtualInput.Mouse.mouseDrag(centerPos, centerPos +
				Vector2.new(dragAmountPx, dragAmountPx), 0.5)
			
			expect(newSliceRect).to.be.equal(nil) -- setSliceRect was not called with a new value
		end)
	end)
end
