return function()
	local Plugin = script.Parent.Parent.Parent
	local Roact = require(Plugin.Packages.Roact)

	local TestHelper = require(Plugin.Src.Util.TestHelper)
	local Rhodium = require(Plugin.Packages.Dev.Rhodium)
	local withTestComponent = TestHelper.withTestComponent

	local SliceEditor = require(script.Parent.SliceEditorMain)
	local Orientation = require(Plugin.Src.Util.Orientation)
	local Constants = require(Plugin.Src.Util.Constants)
	
	it("should create and destroy without errors", function()
		withTestComponent(SliceEditor, {
			selectedObject = Instance.new("ImageLabel"),
			pixelDimensions = Vector2.new(100, 100),
			onClose = function()
			end
		}, function()
		end)
	end)

	-- Get a table of the 4 text input components
	local function getOffsetInputComponents(parent)
		local offsetInputComponents = {
			[Orientation.Left.rawValue()] = parent:FindFirstChild("LeftInput", true),
			[Orientation.Right.rawValue()] = parent:FindFirstChild("RightInput", true),
			[Orientation.Top.rawValue()] = parent:FindFirstChild("TopInput", true),
			[Orientation.Bottom.rawValue()] = parent:FindFirstChild("BottomInput", true),
		}
		return offsetInputComponents
	end

	it("the initial instance's SliceCenter should be correctly reflected in initial offset text box text", function()
		local sliceCenter = Rect.new(8, 17, 75, 45)
		local pixelDimensions = Vector2.new(100, 100)
		local sliceRect = TestHelper.getSliceRectFromSliceCenterRect(sliceCenter)
		local offsets = TestHelper.getOffsetsFromSliceRect(sliceRect, pixelDimensions)
		
		local imageLabel = Instance.new("ImageLabel")
		imageLabel.ScaleType = Enum.ScaleType.Slice
		imageLabel.SliceCenter = sliceCenter

		withTestComponent("Frame", {
			Position = UDim2.fromOffset(100, 100),
			Size = UDim2.fromOffset(Constants.DIALOG_SIZE.x, Constants.DIALOG_SIZE.y),
			[Roact.Children] = {
				SliceEditor = Roact.createElement(SliceEditor, {
					selectedObject = imageLabel,
					pixelDimensions = pixelDimensions,
					onClose = function()
					end
				}),
			},
		}, function(container)
			local frameElement = container:GetChildren()[1]
			expect(frameElement).to.be.ok()
			local textEditor = frameElement:FindFirstChild("TextEditorComponent", true)
			expect(textEditor).to.be.ok()

			for orientation, component in pairs(getOffsetInputComponents(textEditor)) do
				expect(component).to.be.ok()
				local textBox = TestHelper.findFirstDescendantWhichIsA(component, "TextBox")
				expect(textBox).to.be.ok()
				expect(textBox.Text).to.equal(tostring(offsets[orientation]))
				
			end
		end)
	end)

	-- This behavior is to keep backwards compatability for sliceCenter functionality
	it("if initial sliceCenter exceeds image rect bounds, opening/closing 9 Slice Editor shouldn't clamp sliceCenter", function()
		local sliceCenter = Rect.new(-25, -70, 294, 407)
		local pixelDimensions = Vector2.new(50, 50)
		
		local imageLabel = Instance.new("ImageLabel")
		imageLabel.ScaleType = Enum.ScaleType.Slice
		imageLabel.SliceCenter = sliceCenter

		-- Mounts and unmounts 9 slice editor
		withTestComponent("Frame", {
			Position = UDim2.fromOffset(100, 100),
			Size = UDim2.fromOffset(Constants.DIALOG_SIZE.x, Constants.DIALOG_SIZE.y),
			[Roact.Children] = {
				SliceEditor = Roact.createElement(SliceEditor, {
					selectedObject = imageLabel,
					pixelDimensions = pixelDimensions,
					onClose = function()
					end
				}),
			},
		}, function(container)
			wait()
		end)

		-- Check unclamped sliceCenter was unchanged
		expect(imageLabel.SliceCenter).to.equal(sliceCenter)
	end)

	it("modifying text in editor should correctly update the original instance's SliceCenter property", function()
		local pixelDimensions = Vector2.new(100, 100)
		local sliceCenter = Rect.new(10, 10, 90, 90)
		
		local imageLabel = Instance.new("ImageLabel")
		imageLabel.ScaleType = Enum.ScaleType.Slice
		imageLabel.SliceCenter = sliceCenter

		local requestedOffsets = {22, -43, 40, 507}
		local expectedClampedOffsets = {22, 0, 40, 60}

		withTestComponent("Frame", {
			Position = UDim2.fromOffset(100, 100),
			Size = UDim2.fromOffset(Constants.DIALOG_SIZE.x, Constants.DIALOG_SIZE.y),
			[Roact.Children] = {
				SliceEditor = Roact.createElement(SliceEditor, {
					selectedObject = imageLabel,
					pixelDimensions = pixelDimensions,
					onClose = function()
					end
				}),
			},
		}, function(container)
			local frameElement = container:GetChildren()[1]
			expect(frameElement).to.be.ok()
			local textEditor = frameElement:FindFirstChild("TextEditorComponent", true)
			expect(textEditor).to.be.ok()

			for orientation, component in pairs(getOffsetInputComponents(textEditor)) do
				expect(component).to.be.ok()
				local textBox = TestHelper.findFirstDescendantWhichIsA(component, "TextBox")

				local element = Rhodium.Element.new(textBox)
				expect(element:getRbxInstance()).to.be.ok()

				element:click() -- Focus on text box
				textBox.Text = tostring(requestedOffsets[orientation])
				wait()
				element:sendKey(Enum.KeyCode.Return) -- Press enter
				wait()
				-- Text should be clamped
				expect(textBox.Text).to.equal(tostring(expectedClampedOffsets[orientation]))
			end
		end)

		local expectedSliceRect = TestHelper.getSliceRectFromOffsets(expectedClampedOffsets, pixelDimensions)
		local expectedSliceCenter = TestHelper.getSliceCenterRectFromSliceRect(expectedSliceRect)
		expect(imageLabel.SliceCenter).to.equal(expectedSliceCenter)
	end)

	it("clicking 'revert' button should revert the changes to sliceCenter", function()
		local pixelDimensions = Vector2.new(100, 100)
		local sliceCenter = Rect.new(1, 1, 90, 90)
		
		local imageLabel = Instance.new("ImageLabel")
		imageLabel.ScaleType = Enum.ScaleType.Slice
		imageLabel.SliceCenter = sliceCenter

		local requestedOffsets = {22, 11, 15, 20}

		withTestComponent("Frame", {
			Position = UDim2.fromOffset(100, 100),
			Size = UDim2.fromOffset(Constants.DIALOG_SIZE.x, Constants.DIALOG_SIZE.y),
			[Roact.Children] = {
				SliceEditor = Roact.createElement(SliceEditor, {
					selectedObject = imageLabel,
					pixelDimensions = pixelDimensions,
					onClose = function()
					end
				}),
			},
		}, function(container)
			local frameElement = container:GetChildren()[1]
			expect(frameElement).to.be.ok()
			local textEditor = frameElement:FindFirstChild("TextEditorComponent", true)
			expect(textEditor).to.be.ok()

			for orientation, component in pairs(getOffsetInputComponents(textEditor)) do
				expect(component).to.be.ok()
				local textBox = TestHelper.findFirstDescendantWhichIsA(component, "TextBox")

				local element = Rhodium.Element.new(textBox)
				expect(element:getRbxInstance()).to.be.ok()

				element:click() -- Focus on text box
				textBox.Text = tostring(requestedOffsets[orientation])
				wait()
				element:sendKey(Enum.KeyCode.Return) -- Press enter
				wait()
			end

			local expectedSliceRect = TestHelper.getSliceRectFromOffsets(requestedOffsets, pixelDimensions)
			local expectedSliceCenter = TestHelper.getSliceCenterRectFromSliceRect(expectedSliceRect)
			-- Slice center should be changed
			expect(imageLabel.SliceCenter).to.equal(expectedSliceCenter)

			local revertButton = frameElement:FindFirstChild("revertButton", true)
			expect(revertButton).to.be.ok()
			local revertButtonElement = Rhodium.Element.new(revertButton)
			revertButtonElement:click()

			-- Slice center should be reverted
			expect(imageLabel.SliceCenter).to.equal(sliceCenter)
		end)
	end)


	

end
