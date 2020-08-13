return function()
	local Bar = script.Parent
	local App = Bar.Parent
	local UIBlox = App.Parent
	local Packages = UIBlox.Parent
	local Roact = require(Packages.Roact)
	local mockStyleComponent = require(UIBlox.Utility.mockStyleComponent)

	local RootHeaderBar = require(UIBlox.App.Bar.RootHeaderBar)

	local BARSIZE_SMALL = UDim2.new(0, 320, 0, 40)
	local BARSIZE_MEDIUM = UDim2.new(0, 480, 0, 40)
	local BARSIZE_LARGE = UDim2.new(0, 600, 0, 40)
	local MARGIN_SMALL = 12
	local MARGIN_MEDIUM = 24
	local MARGIN_LARGE = 48

	describe("lifecycle", function()
		it("should mount and unmount without issues", function()
			local element = mockStyleComponent({
				bar = Roact.createElement(RootHeaderBar, {
					title = "Root Header Bar",
				}),
			})

			local instance = Roact.mount(element)
			Roact.unmount(instance)
		end)
	end)

	describe("margin logic", function()
		it("should have margin of 12 on small screens", function()
			local frame = Instance.new("Frame")
			local element = mockStyleComponent({
				barFrame = Roact.createElement("Frame", {
					Size = UDim2.new(0, 0, 0, 0),
				}, {
					bar = Roact.createElement(RootHeaderBar, {
						title = "Root Header Bar",
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

			Roact.unmount(instance)
		end)

		it("should have margin of 24 on medium screens", function()
			local frame = Instance.new("Frame")
			local element = mockStyleComponent({
				barFrame = Roact.createElement("Frame", {
					Size = UDim2.new(0, 0, 0, 0),
				}, {
					bar = Roact.createElement(RootHeaderBar, {
						title = "Root Header Bar",
					}),
				})
			})

			local instance = Roact.mount(element, frame, "Frame")
			local barFrame = frame:FindFirstChild("barFrame", true)
			local bar = barFrame:FindFirstChild("bar")
			local leftFrame = bar:FindFirstChild("leftFrame", true)
			local margin = leftFrame:FindFirstChild("$margin", true)
			expect(margin).to.be.ok()

			barFrame.Size = BARSIZE_MEDIUM
			local _ = bar.AbsoluteSize -- need to reference AbsoluteSize to trigger [Roact.Change.AbsoluteSize]
			expect(margin.PaddingLeft.Offset).to.equal(MARGIN_MEDIUM)

			Roact.unmount(instance)
		end)

		it("should have margin of 48 on large screens", function()
			local frame = Instance.new("Frame")
			local element = mockStyleComponent({
				barFrame = Roact.createElement("Frame", {
					Size = UDim2.new(0, 0, 0, 0),
				}, {
					bar = Roact.createElement(RootHeaderBar, {
						title = "Root Header Bar",
					}),
				})
			})

			local instance = Roact.mount(element, frame, "Frame")
			local barFrame = frame:FindFirstChild("barFrame", true)
			local bar = barFrame:FindFirstChild("bar")
			local leftFrame = bar:FindFirstChild("leftFrame", true)
			local margin = leftFrame:FindFirstChild("$margin", true)
			expect(margin).to.be.ok()

			barFrame.Size = BARSIZE_LARGE
			local _ = bar.AbsoluteSize -- need to reference AbsoluteSize to trigger [Roact.Change.AbsoluteSize]
			expect(margin.PaddingLeft.Offset).to.equal(MARGIN_LARGE)

			Roact.unmount(instance)
		end)
	end)
end
