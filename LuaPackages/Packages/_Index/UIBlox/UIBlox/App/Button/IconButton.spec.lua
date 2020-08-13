return function()
	local IconButton = require(script.Parent.IconButton)

	local App = script:FindFirstAncestor("App")
	local UIBlox = App.Parent
	local Core = UIBlox.Core
	local Packages = UIBlox.Parent

	local Roact = require(Packages.Roact)
	local mockStyleComponent = require(UIBlox.Utility.mockStyleComponent)
	local ControlState = require(Core.Control.Enum.ControlState)
	local IconSize = require(App.ImageSet.Enum.IconSize)

	describe("props", function()
		local BUTTON_NAME = "test:" .. tostring(math.random(0, 999))
		local runTest = function(props)
			local folder = Instance.new("Folder")
			local element = mockStyleComponent({
				[BUTTON_NAME] = Roact.createElement(IconButton, props),
			})

			local instance = Roact.mount(element, folder)

			return folder, function()
				Roact.unmount(instance)
				folder:Destroy()
			end
		end

		local function getImageLabel(folder)
			return folder:FindFirstChild("imageLabel", true)
		end

		local function getGuiObjectRoot(folder)
			return folder:FindFirstChild(BUTTON_NAME, true)
		end

		local function getIconColor3(folder)
			return getImageLabel(folder).ImageColor3
		end

		local function getIconTransparency(folder)
			return getImageLabel(folder).ImageTransparency
		end

		local function getGuiObjectRootAbsoluteSize(folder)
			return getGuiObjectRoot(folder).AbsoluteSize
		end

		local function getGuiObjectRootSize(folder)
			return getGuiObjectRoot(folder).Size
		end

		describe("iconSize", function()
			it("SHOULD resize gui object root AbsoluteSize", function()
				local smallFolder, smallCleanup = runTest({
					iconSize = IconSize.Small,
				})

				local mediumFolder, mediumCleanup = runTest({
					iconSize = IconSize.Medium,
				})

				expect(getGuiObjectRootAbsoluteSize(smallFolder)).to.never.equal(getGuiObjectRootAbsoluteSize(mediumFolder))

				smallCleanup()
				mediumCleanup()
			end)
		end)

		describe("appearance override props", function()
			it("SHOULD override ImageLabel.ImageColor3 with iconColor3", function()
				for _ = 1, 50 do
					local randomColor = BrickColor.random().Color
					local folder, cleanup = runTest({
						iconColor3 = randomColor,
					})

					expect(getIconColor3(folder)).to.equal(randomColor)

					cleanup()
				end
			end)

			it("SHOULD override ImageLabel.ImageTransparency with iconTransparency", function()
				for transparency = 0, 1, 0.1 do
					local folder, cleanup = runTest({
						iconTransparency = transparency,
					})

					expect(getIconTransparency(folder)).to.be.near(transparency, 0.001)

					cleanup()
				end
			end)

			it("SHOULD override root guiObject.AbsoluteSize with size", function()
				local testSizes = {
					UDim2.fromScale(0.5, 0.5),
					UDim2.fromScale(1, 1),
					UDim2.fromOffset(1000, 10),
					UDim2.fromOffset(0, 100),
				}
				for _, size in ipairs(testSizes) do
					local controlGroupFolder, cleanupControlGroup = runTest({
						size = nil,
					})

					local variableGroupFolder, cleanupVariableGroup = runTest({
						size = size,
					})

					local controlSize = getGuiObjectRootAbsoluteSize(controlGroupFolder)
					local variableSize = getGuiObjectRootAbsoluteSize(variableGroupFolder)
					expect(controlSize).to.never.equal(variableSize)

					expect(getGuiObjectRootSize(variableGroupFolder)).to.equal(size)

					cleanupControlGroup()
					cleanupVariableGroup()
				end
			end)
		end)

		describe("positional props", function()
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
			local function isShowingBackground(folder)
				return folder:FindFirstChild("background", true) ~= nil
			end

			local function isImageTransparent(folder)
				local imageLabel = folder:FindFirstChild("imageLabel", true)
				assert(imageLabel, "imageLabel never mounted")
				return imageLabel.ImageTransparency > 0
			end

			it("SHOULD render ControlState.Default with no issues", function()
				local folder, cleanup = runTest({
					[IconButton.debugProps.controlState] = ControlState.Default,
				})

				expect(isShowingBackground(folder)).to.equal(false)
				expect(isImageTransparent(folder)).to.equal(false)

				cleanup()
			end)

			it("SHOULD render ControlState.Hover with no issues", function()
				local folder, cleanup = runTest({
					[IconButton.debugProps.controlState] = ControlState.Hover,
				})

				expect(isShowingBackground(folder)).to.equal(true)
				expect(isImageTransparent(folder)).to.equal(false)

				cleanup()
			end)

			it("SHOULD render ControlState.Pressed with no issues", function()
				local folder, cleanup = runTest({
					[IconButton.debugProps.controlState] = ControlState.Pressed,
				})

				expect(isShowingBackground(folder)).to.equal(false)
				expect(isImageTransparent(folder)).to.equal(true)

				cleanup()
			end)

			it("SHOULD render ControlState.Disabled with no issues", function()
				local folder, cleanup = runTest({
					[IconButton.debugProps.controlState] = ControlState.Disabled,
				})

				expect(isShowingBackground(folder)).to.equal(false)
				expect(isImageTransparent(folder)).to.equal(true)

				cleanup()
			end)
		end)
	end)

end
