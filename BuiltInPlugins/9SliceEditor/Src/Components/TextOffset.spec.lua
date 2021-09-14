return function()
	local Plugin = script.Parent.Parent.Parent
	local TestHelper = require(Plugin.Src.Util.TestHelper)
	local Rhodium = require(Plugin.Packages.Dev.Rhodium)
	local withTestComponent = TestHelper.withTestComponent

	local TextOffset = require(script.Parent.TextOffset)
	local Orientation = require(Plugin.Src.Util.Orientation)

	it("should create and destroy without errors", function()
		withTestComponent(TextOffset, {
			orientation = Orientation.Left.rawValue(),
			pixelDimensions = Vector2.new(100, 100),
			sliceRect = {10, 90, 10, 90},
			setSliceRect = function()
			end,
		}, function()
		end)
	end)

	it("should create a text box", function()
		withTestComponent(TextOffset, {
			orientation = Orientation.Left.rawValue(),
			pixelDimensions = Vector2.new(100, 100),
			sliceRect = {10, 90, 10, 90},
			setSliceRect = function()
			end,
		}, function(container)
			local textBox = TestHelper.findFirstDescendantWhichIsA(container, "TextBox")
			expect(textBox).to.be.ok()
		end)
	end)

	it("text value should be equal to correct offset value for each side", function()
		local pixelDimensions = Vector2.new(100, 100)
		local sliceRect = {10, 20, 30, 40}
		local offsetValues = TestHelper.getOffsetsFromSliceRect(sliceRect, pixelDimensions)

		local orientations = {Orientation.Left.rawValue(), Orientation.Right.rawValue(),
			Orientation.Top.rawValue(), Orientation.Bottom.rawValue()}

		withTestComponent(TextOffset, {
				orientation = Orientation.Left.rawValue(),
				pixelDimensions = pixelDimensions,
				sliceRect = sliceRect,
				setSliceRect = function()
				end,
		}, function(container, updateProps)
			local textBox = TestHelper.findFirstDescendantWhichIsA(container, "TextBox")
			expect(textBox).to.be.ok()
			
			for _, orientation in ipairs(orientations) do
				updateProps({
					orientation = orientation
				})
				expect(textBox.Text).to.equal(tostring(offsetValues[orientation]))
			end
		end)
	end)

	it("non-numerical entry should reset text", function()
		local pixelDimensions = Vector2.new(100, 100)
		local sliceRect = {10, 20, 30, 40}
		local offsetValues = TestHelper.getOffsetsFromSliceRect(sliceRect, pixelDimensions)
		local orientations = {Orientation.Left.rawValue(), Orientation.Right.rawValue(),
			Orientation.Top.rawValue(), Orientation.Bottom.rawValue()}
			
		withTestComponent(TextOffset, {
				orientation = Orientation.Left.rawValue(),
				pixelDimensions = pixelDimensions,
				sliceRect = sliceRect,
				setSliceRect = function()
				end,
		}, function(container, updateProps)
			local textBox = TestHelper.findFirstDescendantWhichIsA(container, "TextBox")
			expect(textBox).to.be.ok()

			local element = Rhodium.Element.new(textBox)
			expect(element:getRbxInstance()).to.be.ok()

			for _, orientation in ipairs(orientations) do
				updateProps({
					orientation = orientation
				})

				element:click() -- Focus on text box
				textBox.Text = "&G*@234231#JN sf54dj~ random text!"
				wait()
				element:sendKey(Enum.KeyCode.Return) -- Press enter
				wait()
				-- Text should be reset
				expect(textBox.Text).to.equal(tostring(offsetValues[orientation]))
			end
		end)
	end)

	it("changing text value should change sliceRect correctly", function()
		local pixelDimensions = Vector2.new(100, 100)
		local sliceRect = {10, 90, 10, 90}
		local offsetValues = TestHelper.getOffsetsFromSliceRect(sliceRect, pixelDimensions)
		local orientations = {Orientation.Left.rawValue(), Orientation.Right.rawValue(),
			Orientation.Top.rawValue(), Orientation.Bottom.rawValue()}
		
		local newSliceOffsets = {57, 21, 2, 49}
		local newSliceRect = nil
		withTestComponent(TextOffset, {
				orientation = Orientation.Left.rawValue(),
				pixelDimensions = pixelDimensions,
				sliceRect = sliceRect,
				setSliceRect = function(sliceRect)
					newSliceRect = sliceRect
				end,
		}, function(container, updateProps)
			local textBox = TestHelper.findFirstDescendantWhichIsA(container, "TextBox")
			expect(textBox).to.be.ok()

			local element = Rhodium.Element.new(textBox)
			expect(element:getRbxInstance()).to.be.ok()

			for _, orientation in ipairs(orientations) do
				updateProps({
					orientation = orientation
				})

				element:click() -- Focus on text box
				textBox.Text = tostring(newSliceOffsets[orientation])
				wait()
				element:sendKey(Enum.KeyCode.Return) -- Press enter
				wait()
				-- Text should not be reset
				expect(textBox.Text).to.equal(tostring(newSliceOffsets[orientation]))

				local modifiedSliceOffsets = {unpack(offsetValues)}
				modifiedSliceOffsets[orientation] = newSliceOffsets[orientation]
				local correctSliceRect = TestHelper.getSliceRectFromOffsets(modifiedSliceOffsets, pixelDimensions)

				-- Check new sliceRect:
				expect(TestHelper.numericalArrayFuzzyEquality(newSliceRect,
					correctSliceRect, 1)).to.equal(true)
			end
		end)
	end)


end
