return function()
	beforeAll(function(context)
		local HeaderBar = require(script.Parent.HeaderBarV2)
		context.HeaderBar = HeaderBar

		local Packages = script:FindFirstAncestor("Packages")
		local Roact = require(Packages.Roact)
		local UIBlox = require(script:FindFirstAncestor("UIBlox"))
		local testStyle = require(Packages.UIBlox.App.Style.Validator.TestStyle)
		local StyleProvider = UIBlox.Core.Style.Provider
		local Images = UIBlox.App.ImageSet.Images

		context.getPageMargin = require(Packages.UIBlox.App.Container.getPageMargin)
		context.Rhodium = require(Packages.Dev.Rhodium)
		context.Roact = Roact
		context.mount = function(c)
			local joinedProps = {
				title = c.title or "",
				renderCenter = c.renderCenter,
				renderLeft = c.renderLeft,
				renderRight = c.renderRight or function()
					return Roact.createFragment({
						otherRightButton = Roact.createElement("ImageButton", {
							Size = UDim2.fromOffset(0, 0),
							LayoutOrder = 1,
						}),

						farRightButton = Roact.createElement("ImageButton", {
							Size = UDim2.fromOffset(0, 0),
							LayoutOrder = 2,
						}),
					})
				end,
				backgroundTransparency = c.backgroundTransparency,
			}

			local screenGui = Instance.new("ScreenGui", game:GetService("StarterGui"))
			local tree = Roact.createElement(StyleProvider, {
				style = testStyle,
			}, {
				page = Roact.createElement("Frame", {
					Size = UDim2.fromOffset(c.pageWidth, c.pageWidth),
				}, {
					myTestBar = Roact.createElement(HeaderBar, joinedProps),
				}),
			})
			Roact.mount(tree, screenGui)
			return screenGui
		end

		context.findFirstImageSet = function(instance, imageSetPath)
			local imageSet = Images[imageSetPath]
			for _, object in ipairs(instance:GetDescendants()) do
				if object:IsA("ImageButton") or object:IsA("ImageLabel") then
					if object.Image == imageSet.Image
						and object.ImageRectOffset == imageSet.ImageRectOffset
						and object.ImageRectSize == imageSet.ImageRectSize then

						return object
					end
				end
			end

			return nil
		end
	end)

	local function testPageMargins(options)
		local getLeftAlignedInstance = options.getLeftAlignedInstance

		return function()
			-- this function fails with odd numbers
			local function testWhen_ScreenSizeAs_ExpectMarginAs(pageWidth, expectedMargin)
				return function()
					beforeAll(function(c)
						c.pageWidth = pageWidth
						c.screenGui = c:mount()

						local page = c.screenGui:FindFirstChildWhichIsA("GuiObject", true)
						assert(page, "could not find page")

						local leftAlignedInstance = getLeftAlignedInstance(c)

						c.leftMarginDistance = math.abs(page.AbsolutePosition.X - leftAlignedInstance.AbsolutePosition.X)

						local farRightButton = c.screenGui:FindFirstChild("farRightButton", true)
						assert(farRightButton, "could not find farRightButton")
						c.rightMarginDistance = math.abs(
							page.AbsolutePosition.X + page.AbsoluteSize.X - farRightButton.AbsolutePosition.X
						)
					end)

					it(string.format("SHOULD wrap children with %dpt margins on the left", expectedMargin), function(c)
						expect(c.leftMarginDistance).to.equal(expectedMargin)
					end)

					it(string.format("SHOULD wrap children with %dpt margins on the right", expectedMargin), function(c)
						expect(c.rightMarginDistance).to.equal(expectedMargin)
					end)
				end
			end

			describe("WHEN screen size is small", testWhen_ScreenSizeAs_ExpectMarginAs(350, 12))
			describe("WHEN screen size is small/medium threshold", testWhen_ScreenSizeAs_ExpectMarginAs(360, 24))
			describe("WHEN screen size is medium", testWhen_ScreenSizeAs_ExpectMarginAs(480, 24))
			describe("WHEN screen size is large", testWhen_ScreenSizeAs_ExpectMarginAs(600, 48))
		end
	end

	local function testSpacingBetweenButtons(expectedSpacing)
		return function()
			beforeAll(function(c)
				c.screenGui = c:mount()

				local otherRightButton = c.screenGui:FindFirstChild("otherRightButton", true)
				local farRightButton = c.screenGui:FindFirstChild("farRightButton", true)

				-- ! HACK: Update AbsolutePosition now before its queried by indexing...
				local _, _ = otherRightButton.AbsolutePosition, farRightButton.AbsolutePosition
				c.contentSpacing = math.abs(otherRightButton.AbsolutePosition.X - farRightButton.AbsolutePosition.X)
			end)

			it(string.format("SHOULD set contentSpacing to %dpt", expectedSpacing), function(c)
				expect(c.contentSpacing).to.equal(expectedSpacing)
			end)
		end
	end

	describe("GIVEN backgroundTransparency", function()
		beforeAll(function(c)
			c.backgroundTransparency = 0.567
		end)

		describe("WHEN mounted", function()
			beforeAll(function(c)
				c.screenGui = c:mount()
			end)

			it("SHOULD set the main background to match the transparency", function(c)
				local myTestBar = c.screenGui:FindFirstChild("myTestBar", true)
				local myThreeSectionBar = myTestBar:FindFirstChild("ThreeSectionBar", true)
				assert(myThreeSectionBar, "could not find backgroundInstance")

				expect(myThreeSectionBar.BackgroundTransparency).to.be.near(c.backgroundTransparency, 0.001)
			end)
		end)
	end)

	describe("GIVEN renderLeft = nil", function()
		-- root layout
		beforeAll(function(c)
			c.renderLeft = nil
		end)

		describe("GIVEN renderCenter as non nil", function()
			beforeAll(function(c)
				c.renderCenter = function()
					local Roact = c.Roact
					return Roact.createFragment({
						leftAligned = Roact.createElement("Frame", {
							Size = UDim2.fromScale(1, 1),
						}),
					})
				end
			end)

			describe("GIVEN title as empty string", function()
				beforeAll(function(c)
					c.title = ""
				end)

				describe("margins should be smart", testPageMargins({
					getLeftAlignedInstance = function(c)
						local leftAligned = c.screenGui:FindFirstChild("leftAligned", true)
						assert(leftAligned, "could not find leftAligned")
						return leftAligned
					end,
				}))

				describe("spacing between buttons on the right should be 0pt", testSpacingBetweenButtons(0))
			end)

			describe("GIVEN title as non-empty string", function()
				beforeAll(function(c)
					c.title = "hello"
				end)

				describe("margins should be smart", testPageMargins({
					getLeftAlignedInstance = function(c)
						local titleLabel = c.screenGui:FindFirstChildWhichIsA("TextLabel", true)
						assert(titleLabel and titleLabel.Text == c.title, "could not find title label")
						return titleLabel
					end,
				}))

				describe("spacing between buttons on the right should be 0pt", testSpacingBetweenButtons(0))
			end)
		end)
	end)

	describe("GIVEN renderLeft as non nil", function()
		-- common layout
		beforeAll(function(c)
			local Roact = c.Roact
			c.renderLeft = function()
				return Roact.createFragment({
					leftAligned = Roact.createElement("Frame", {
						Size = UDim2.fromScale(1, 1),
					}),
				})
			end
		end)

		describe("margins should be smart", testPageMargins({
			getLeftAlignedInstance = function(c)
				local leftAlignedInstance = c.screenGui:FindFirstChild("leftAligned", true)
				assert(leftAlignedInstance, "could not leftAlignedInstance")
				return leftAlignedInstance
			end,
		}))

		describe("spacing between buttons on the right should be 12pt", testSpacingBetweenButtons(12))

		describe("GIVEN renderCenter as non nil", function()
			beforeAll(function(c)
				local Roact = c.Roact
				c.renderCenter = function()
					return Roact.createFragment({
						center = Roact.createElement("Frame", {
							Size = UDim2.fromScale(1, 1),
						}),
					})
				end
			end)

			describe("WHEN mounted", function()
				beforeAll(function(c)
					local screenGui = c:mount()
					c.centerInstance = screenGui:FindFirstChild("center", true)
					assert(c.centerInstance, "could not find centerInstance")

					c.page = screenGui:FindFirstChildWhichIsA("GuiObject", true)
					assert(c.page, "could not find page")

					-- ! HACK: Update AbsolutePosition now before its queried by indexing...
					local _, _ = c.page.AbsolutePosition, c.centerInstance.AbsolutePosition
				end)

				it("SHOULD center renderCenter", function(c)
					local centerOfTitle = c.centerInstance.AbsolutePosition + (c.centerInstance.AbsoluteSize / 2)
					local centerOfPage = c.page.AbsolutePosition + (c.page.AbsoluteSize / 2)

					expect(centerOfTitle.X).to.be.near(centerOfPage.X, 1)
				end)
			end)
		end)
	end)

	describe("GIVEN renderLeft as renderLeft.backButton", function()
		beforeAll(function(c)
			c.renderLeft = c.HeaderBar.renderLeft.backButton()
		end)

		describe("WHEN mounted", function()
			beforeAll(function(c)
				c.screenGui = c:mount()
			end)

			it("SHOULD mount a back button", function(c)
				local backButton = c.findFirstImageSet(c.screenGui, "icons/navigation/pushBack")
				expect(backButton).to.be.ok()
			end)
		end)

		describe("GIVEN renderRight as nil", function()
			beforeAll(function(c)
				c.renderRight = nil
				c.title = "Title"
				c.pageWidth = 1000
			end)

			describe("WHEN mounted", function()
				beforeAll(function(c)
					c.screenGui = c:mount()
				end)

				it("SHOULD still center title text", function(c)
					local page = c.screenGui:FindFirstChildWhichIsA("GuiObject", true)
					assert(page, "could not find page")

					local titleText = c.screenGui:FindFirstChildWhichIsA("TextLabel", true)
					assert(titleText and titleText.Text == "Title", "could not find titleText")

					-- ! HACK: Update AbsolutePosition now before its queried by indexing...
					local _, _ = titleText.AbsolutePosition, page.AbsolutePosition

					local centerOfTitle = titleText.AbsolutePosition + (titleText.AbsoluteSize / 2)
					local centerOfPage = page.AbsolutePosition + (page.AbsoluteSize / 2)

					expect(centerOfTitle.X).to.be.near(centerOfPage.X, 1)
				end)
			end)
		end)
	end)

	describe("GIVEN ONLY renderCenter", function()
		beforeAll(function(c)
			c.renderCenter = function()
				local Roact = c.Roact
				return Roact.createFragment({
					thing = Roact.createElement("Frame", {
						Size = UDim2.fromScale(1, 1),
					}),
				})
			end
			c.renderRight = c.Roact.None -- overwriting default renderRight with nil
			c.pageWidth = 378
		end)

		describe("WHEN mounted", function()
			beforeAll(function(c)
				c.screenGui = c:mount()
			end)

			it("SHOULD fill the bar to its margins", function(c)
				local page = c.screenGui:FindFirstChildWhichIsA("GuiObject", true)
				assert(page, "could not find page")

				local thing = c.screenGui:FindFirstChild("thing", true)

				local _, _ = thing.AbsolutePosition, thing.AbsolutePosition

				local leftEdgeOfCenterRender = thing.AbsolutePosition
				local rightEdgeOfCenterRender = thing.AbsolutePosition + thing.AbsoluteSize

				expect(leftEdgeOfCenterRender.X).to.equal(c.getPageMargin(c.pageWidth))
				expect(rightEdgeOfCenterRender.X).to.equal(c.pageWidth-c.getPageMargin(c.pageWidth))
			end)
		end)
	end)
end
