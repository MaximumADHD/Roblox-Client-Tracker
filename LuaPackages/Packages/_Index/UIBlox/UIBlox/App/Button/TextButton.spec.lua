return function()
	local TextButton = require(script.Parent.TextButton)

	local App = script:FindFirstAncestor("App")
	local UIBlox = App.Parent
	local Core = UIBlox.Core
	local Packages = UIBlox.Parent

	local Roact = require(Packages.Roact)
	local mockStyleComponent = require(UIBlox.Utility.mockStyleComponent)
	local ControlState = require(Core.Control.Enum.ControlState)

	local noOpt = function()
	end
	local text = "Button"

	it("should create and destroy a button without errors", function()
		local folder = Instance.new("Folder")
		local element = mockStyleComponent({
			button = Roact.createElement(TextButton, {
				text = text,
				onActivated = noOpt,
				fontStyle = "Body",
				colorStyleDefault = "UIDefault",
				colorStyleHover = "UIDefault",
			}),
		})

		local instance = Roact.mount(element, folder)
		local label = folder:FindFirstChildWhichIsA("TextLabel", true)
		expect(label.Text).to.equal(text)

		Roact.unmount(instance)
	end)

	it("should create and destroy a button that is disabled without errors", function()
		local element = mockStyleComponent({
			button = Roact.createElement(TextButton, {
				text = text,
				onActivated = noOpt,
				isDisabled = true,
			}),
		})

		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should create and destroy a button without text without errors", function()
		local element = mockStyleComponent({
			button = Roact.createElement(TextButton, {
				onActivated = noOpt,
			}),
		})

		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should be created as a disabled button", function()
		local buttonState = nil
		local element = mockStyleComponent({
			button = Roact.createElement(TextButton, {
				onActivated = noOpt,
				onStateChanged = function(_, newState)
					buttonState = newState
				end,
				isDisabled = true,
			}),
		})

		local instance = Roact.mount(element)
		expect(buttonState).to.equal(ControlState.Disabled)
		Roact.unmount(instance)
	end)

	describe("text prop", function()
		local BUTTON_NAME = "test:" .. tostring(math.random(0, 999))
		local runTest = function(props)
			local folder = Instance.new("Folder")
			local element = mockStyleComponent({
				[BUTTON_NAME] = Roact.createElement(TextButton, props),
			})

			local instance = Roact.mount(element, folder)

			return folder, function()
				Roact.unmount(instance)
				folder:Destroy()
			end
		end

		it("SHOULD resize to text when not given size property", function()
			local folder1, cleanup1 = runTest({
				text = string.rep("!", 1),
				[TextButton.debugProps.getTextSize] = function()
					return Vector2.new(1, 1)
				end,
			})
			local folder2, cleanup2 = runTest({
				text = string.rep("!", 10),
				[TextButton.debugProps.getTextSize] = function()
					return Vector2.new(10, 1)
				end,
			})

			local firstSize = folder1:FindFirstChild(BUTTON_NAME, true).AbsoluteSize
			local secondSize = folder2:FindFirstChild(BUTTON_NAME, true).AbsoluteSize

			expect(firstSize).to.never.equal(secondSize)

			cleanup1()
			cleanup2()
		end)
	end)

	describe("positional props", function()
		local BUTTON_NAME = "test:" .. tostring(math.random(0, 999))
		local runTest = function(props)
			local folder = Instance.new("Folder")
			local element = mockStyleComponent({
				[BUTTON_NAME] = Roact.createElement(TextButton, props),
			})

			local instance = Roact.mount(element, folder)

			return folder, function()
				Roact.unmount(instance)
				folder:Destroy()
			end
		end

		it("SHOULD respect AnchorPoint", function()
			local function testAnchorPoint(anchorPoint)
				local folder, cleanup = runTest({
					anchorPoint = anchorPoint,
				})

				local guiObject = folder:FindFirstChild(BUTTON_NAME, true)
				expect(guiObject.AnchorPoint).to.equal(anchorPoint)

				cleanup()
			end

			testAnchorPoint(Vector2.new(0, 0))
			testAnchorPoint(Vector2.new(0, 1))
			testAnchorPoint(Vector2.new(1, 0))
			testAnchorPoint(Vector2.new(1, 1))
			testAnchorPoint(Vector2.new(0.5, 0.5))
		end)

		it("SHOULD respect Position", function()
			local function testPosition(position)
				local folder, cleanup = runTest({
					position = position,
				})

				local guiObject = folder:FindFirstChild(BUTTON_NAME, true)
				expect(guiObject.Position).to.equal(position)

				cleanup()
			end

			testPosition(UDim2.new(0, 0, 0, 0))
			testPosition(UDim2.new(0.5, 10, 1, 20))
			testPosition(UDim2.fromScale(1, 1))
			testPosition(UDim2.fromOffset(100, 000))
		end)

		it("SHOULD respect LayoutOrder", function()
			local function testLayoutOrder(layoutOrder)
				local folder, cleanup = runTest({
					layoutOrder = layoutOrder,
				})

				local guiObject = folder:FindFirstChild(BUTTON_NAME, true)
				expect(guiObject.LayoutOrder).to.equal(layoutOrder)

				cleanup()
			end

			testLayoutOrder(0)
			testLayoutOrder(1)
			testLayoutOrder(2)
		end)

		it("SHOULD respect Size", function()
			local function testSize(size)
				local folder, cleanup = runTest({
					size = size,
				})

				local guiObject = folder:FindFirstChild(BUTTON_NAME, true)
				expect(guiObject.Size).to.equal(size)

				cleanup()
			end

			testSize(UDim2.new(0, 0, 0, 0))
			testSize(UDim2.new(0.5, 10, 1, 20))
			testSize(UDim2.fromScale(1, 1))
			testSize(UDim2.fromOffset(100, 000))
		end)
	end)

	describe("debugProps.controlState", function()
		local BUTTON_NAME = "test:" .. tostring(math.random(0, 999))
		local runTest = function(props)
			local folder = Instance.new("Folder")
			local element = mockStyleComponent({
				[BUTTON_NAME] = Roact.createElement(TextButton, props),
			})

			local instance = Roact.mount(element, folder)

			return folder, function()
				Roact.unmount(instance)
				folder:Destroy()
			end
		end

		local function isShowingBackground(folder)
			return folder:FindFirstChild("background", true) ~= nil
		end

		local function isTextTransparent(folder)
			local textLabel = folder:FindFirstChild("textLabel", true)
			assert(textLabel, "textLabel never mounted")
			return textLabel.TextTransparency > 0
		end

		it("SHOULD render ControlState.Default with no issues", function()
			local folder, cleanup = runTest({
				[TextButton.debugProps.controlState] = ControlState.Default,
			})

			expect(isShowingBackground(folder)).to.equal(false)
			expect(isTextTransparent(folder)).to.equal(false)

			cleanup()
		end)

		it("SHOULD render ControlState.Hover with no issues", function()
			local folder, cleanup = runTest({
				[TextButton.debugProps.controlState] = ControlState.Hover,
			})

			expect(isShowingBackground(folder)).to.equal(true)
			expect(isTextTransparent(folder)).to.equal(false)

			cleanup()
		end)

		it("SHOULD render ControlState.Pressed with no issues", function()
			local folder, cleanup = runTest({
				[TextButton.debugProps.controlState] = ControlState.Pressed,
			})

			expect(isShowingBackground(folder)).to.equal(false)
			expect(isTextTransparent(folder)).to.equal(true)

			cleanup()
		end)

		it("SHOULD render ControlState.Disabled with no issues", function()
			local folder, cleanup = runTest({
				[TextButton.debugProps.controlState] = ControlState.Disabled,
			})

			expect(isShowingBackground(folder)).to.equal(false)
			expect(isTextTransparent(folder)).to.equal(true)

			cleanup()
		end)
	end)
end
