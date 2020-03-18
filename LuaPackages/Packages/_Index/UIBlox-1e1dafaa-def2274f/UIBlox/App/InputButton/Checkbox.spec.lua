return function()
	local Packages = script.Parent.Parent.Parent.Parent
	local Roact = require(Packages.Roact)
	local Checkbox = require(script.Parent.Checkbox)
	local mockStyleComponent = require(Packages.UIBlox.Utility.mockStyleComponent)
	local Images = require(Packages.UIBlox.App.ImageSet.Images)

	describe("lifecycle", function()
		it("should mount and unmount without issue", function()
			local frame = Instance.new("Frame")
			local element = mockStyleComponent({
				checkbox = Roact.createElement(Checkbox, {
					text = "something",
					onActivated = function () end,
					size = UDim2.new(1, 0, 1, 0),
					layoutOrder = 1,
				})
			})
			local instance = Roact.mount(element, frame, "Checkbox")
			Roact.unmount(instance)
		end)

		it("should have a hollow squircle as its false image", function()
			local frame = Instance.new("Frame")
			local element = mockStyleComponent({
				checkbox = Roact.createElement(Checkbox, {
					text = "something",
					onActivated = function () end,
					size = UDim2.new(1, 0, 1, 0),
					layoutOrder = 1,
				})
			})
			local instance = Roact.mount(element, frame, "Checkbox")
			local image = frame:FindFirstChildWhichIsA("ImageButton", true)
			Roact.update(instance, element)
			expect(image.ImageRectOffset).to.equal(Images["squircles/hollow"].ImageRectOffset)

			Roact.unmount(instance)
		end)

		it("should have a filled squircle as its true image", function()
			local frame = Instance.new("Frame")
			local element = mockStyleComponent({
				checkbox = Roact.createElement(Checkbox, {
					text = "something",
					isSelected = true,
					onActivated = function () end,
					size = UDim2.new(1, 0, 1, 0),
					layoutOrder = 1,
				})
			})
			local instance = Roact.mount(element, frame, "Checkbox")
			local image = frame:FindFirstChildWhichIsA("ImageButton", true)
			expect(image.ImageRectOffset).to.equal(Images["squircles/fill"].ImageRectOffset)

			Roact.unmount(instance)
		end)
	end)

end