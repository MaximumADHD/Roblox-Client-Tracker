return function()
	local Packages = script.Parent.Parent.Parent.Parent
	local Roact = require(Packages.Roact)
	local RadioButton = require(script.Parent.RadioButton)
	local mockStyleComponent = require(Packages.UIBlox.Utility.mockStyleComponent)

	describe("lifecycle", function()
		local frame = Instance.new("Frame")
		it("should mount and unmount without issue", function()
			local element = mockStyleComponent({
				radioButton = Roact.createElement(RadioButton, {
					text = "something",
					onActivated = function () end,
					size = UDim2.new(1, 0, 1, 0),
					layoutOrder = 1,
					key = 1,
				})
			})
			local instance = Roact.mount(element, frame, "Checkbox")
			Roact.unmount(instance)
		end)

		it("should have an empty circle as its false image", function()
			local element = mockStyleComponent({
				radioButton = Roact.createElement(RadioButton, {
					text = "something",
					onActivated = function () end,
					size = UDim2.new(1, 0, 1, 0),
					layoutOrder = 1,
					key = 1,
				})
			})
			local instance = Roact.mount(element, frame, "Checkbox")
			local image = frame:FindFirstChild("InputFillImage", true)
			expect(image.Size).to.equal(UDim2.new(0, 0))

			Roact.unmount(instance)
		end)

		it("should have a filled circle as its true image", function()
			local element = mockStyleComponent({
				radioButton = Roact.createElement(RadioButton, {
					text = "something",
					isSelected = true,
					onActivated = function () end,
					size = UDim2.new(1, 0, 1, 0),
					layoutOrder = 1,
					key = 1,
				})
			})
			local instance = Roact.mount(element, frame, "Checkbox")
			local image = frame:FindFirstChild("InputFillImage", true)
			expect(image.Size).never.to.equal(UDim2.new(0, 0))

			Roact.unmount(instance)
		end)
	end)

end