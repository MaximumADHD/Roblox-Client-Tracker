return function()
	local Bar = script.Parent
	local App = Bar.Parent
	local UIBlox = App.Parent
	local Packages = UIBlox.Parent
	local Roact = require(Packages.Roact)
	local mockStyleComponent = require(UIBlox.Utility.mockStyleComponent)

	local HeaderBar = require(UIBlox.App.Bar.HeaderBar)

	local BARSIZE_SMALL = UDim2.new(0, 320, 0, 40)
	local BARSIZE_MEDIUM = UDim2.new(0, 480, 0, 40)
	local BARSIZE_LARGE = UDim2.new(0, 600, 0, 40)
	local MARGIN_SMALL = 12
	local MARGIN_MEDIUM = 24
	local MARGIN_LARGE = 48

	describe("lifecycle", function()
		it("should mount and unmount without issues", function()
			local element = mockStyleComponent({
				bar = Roact.createElement(HeaderBar, {
					title = "Header Bar",
				}),
			})

			local instance = Roact.mount(element)
			Roact.unmount(instance)
		end)
	end)

	describe("renderCenter", function()
		it("should mount things correctly", function()
			local frame = Instance.new("Frame")
			local element = mockStyleComponent({
				barFrame = Roact.createElement("Frame", {
					Size = UDim2.new(0, 0, 0, 0),
				}, {
					bar = Roact.createElement(HeaderBar, {
						title = "Header Bar",
						renderCenter = function()
							return Roact.createElement("TextBox", {
								Size = UDim2.fromOffset(200, 36),
								Position = UDim2.fromScale(0.5, 0.5),
								AnchorPoint = Vector2.new(0.5, 0.5),
								Text = "Search Box Text",
							})
						end,
					}),
				})
			})

			local instance = Roact.mount(element, frame, "Frame")
			local barFrame = frame:FindFirstChild("barFrame", true)
			local bar = barFrame:FindFirstChild("bar")
			local centerFrame = bar:FindFirstChild("centerFrame", true)
			local centerContent = centerFrame:FindFirstChild("centerContent")
			expect(centerContent.Text).to.equal("Search Box Text")

			Roact.unmount(instance)
		end)
	end)

	describe("margin logic", function()
		it("should have correct left margin on different sized screens with renderLeft", function()
			local frame = Instance.new("Frame")
			local element = mockStyleComponent({
				barFrame = Roact.createElement("Frame", {
					Size = UDim2.new(0, 0, 0, 0),
				}, {
					bar = Roact.createElement(HeaderBar, {
						title = "Header Bar",
						isRootTitle = true,
					}),
				})
			})

			local instance = Roact.mount(element, frame, "Frame")
			local barFrame = frame:FindFirstChild("barFrame", true)
			local bar = barFrame:FindFirstChild("bar")
			local leftFrame = bar:FindFirstChild("leftFrame", true)
			local margin = leftFrame:FindFirstChild("$margin", true)
			expect(margin).to.be.ok()

			barFrame.Size = BARSIZE_SMALL
			local _ = bar.AbsoluteSize -- need to reference AbsoluteSize to trigger [Roact.Change.AbsoluteSize]
			expect(margin.PaddingLeft.Offset).to.equal(MARGIN_SMALL)

			barFrame.Size = BARSIZE_MEDIUM
			local _ = bar.AbsoluteSize -- need to reference AbsoluteSize to trigger [Roact.Change.AbsoluteSize]
			expect(margin.PaddingLeft.Offset).to.equal(MARGIN_MEDIUM)

			barFrame.Size = BARSIZE_LARGE
			local _ = bar.AbsoluteSize -- need to reference AbsoluteSize to trigger [Roact.Change.AbsoluteSize]
			expect(margin.PaddingLeft.Offset).to.equal(MARGIN_LARGE)

			Roact.unmount(instance)
		end)

		it("should have correct left margin on different sized screens without renderLeft", function()
			local frame = Instance.new("Frame")
			local element = mockStyleComponent({
				barFrame = Roact.createElement("Frame", {
					Size = UDim2.new(0, 0, 0, 0),
				}, {
					bar = Roact.createElement(HeaderBar, {
						title = "Header Bar",
						isRootTitle = false,
					}),
				})
			})

			local instance = Roact.mount(element, frame, "Frame")
			local barFrame = frame:FindFirstChild("barFrame", true)
			local bar = barFrame:FindFirstChild("bar")
			local centerFrame = bar:FindFirstChild("centerFrame", true)
			local UIPadding = centerFrame:FindFirstChild("UIPadding", true)
			expect(UIPadding).to.be.ok()

			barFrame.Size = BARSIZE_SMALL
			local _ = bar.AbsoluteSize -- need to reference AbsoluteSize to trigger [Roact.Change.AbsoluteSize]
			expect(UIPadding.PaddingLeft.Offset).to.equal(MARGIN_SMALL)

			barFrame.Size = BARSIZE_MEDIUM
			local _ = bar.AbsoluteSize -- need to reference AbsoluteSize to trigger [Roact.Change.AbsoluteSize]
			expect(UIPadding.PaddingLeft.Offset).to.equal(MARGIN_MEDIUM)

			barFrame.Size = BARSIZE_LARGE
			local _ = bar.AbsoluteSize -- need to reference AbsoluteSize to trigger [Roact.Change.AbsoluteSize]
			expect(UIPadding.PaddingLeft.Offset).to.equal(MARGIN_LARGE)

			Roact.unmount(instance)
		end)
	end)
end
