return function()
	local Packages = script.Parent.Parent.Parent.Parent
	local Roact = require(Packages.Roact)
	local CheckboxList = require(script.Parent.CheckboxList)
	local mockStyleComponent = require(Packages.UIBlox.Utility.mockStyleComponent)
	local Images = require(Packages.UIBlox.App.ImageSet.Images)

	describe("lifecycle", function()
		it("should mount and unmount without issue", function()
			local frame = Instance.new("Frame")
			local element = mockStyleComponent({
				CheckboxList = Roact.createElement(CheckboxList, {
					checkboxes = {"a", "b", "c"},
					onActivated = function() end,
					elementSize = UDim2.new(0, 50, 0, 50),
				})
			})
			local instance = Roact.mount(element, frame, "CheckboxList")
			Roact.unmount(instance)
		end)

		it("should have the proper default values", function()
			local frame = Instance.new("Frame")
			local element = mockStyleComponent({
				CheckboxList = Roact.createElement(CheckboxList, {
					checkboxes = {
						{
							label = "a",
							isSelected = true
						},
						"b",
						{
							label = "c",
							isSelected = true
						}
					},
					atMost = 6,
					onActivated = function() end,
					elementSize = UDim2.new(0, 50, 0, 50),
					layoutOrder = 4,
				})
			})
			local instance = Roact.mount(element, frame, "CheckboxList")
			local image1 = frame:FindFirstChild("Checkbox1", true)
			local image3 = frame:FindFirstChild("Checkbox3", true)
			expect(image1.InputButtonImage.InputFillImage.ImageRectOffset).to.equal(
					Images["icons/status/success_small"].ImageRectOffset)
			expect(image3.InputButtonImage.InputFillImage.ImageRectOffset).to.equal(
					Images["icons/status/success_small"].ImageRectOffset)

			Roact.unmount(instance)
		end)

	end)

end