return function()
	local Packages = script.Parent.Parent.Parent.Parent
	local Roact = require(Packages.Roact)
	local RadioButtonList = require(script.Parent.RadioButtonList)
	local mockStyleComponent = require(Packages.UIBlox.Utility.mockStyleComponent)
	local Images = require(Packages.UIBlox.App.ImageSet.Images)

	describe("lifecycle", function()
		local frame = Instance.new("Frame")
		it("should mount and unmount without issue", function()
			local element = mockStyleComponent({
				RadioButtonList = Roact.createElement(RadioButtonList, {
					radioButtons = {"a", "b", "c"},
					onActivated = function() end,
					elementSize = UDim2.new(0, 50, 0, 50),
				})
			})
			local instance = Roact.mount(element, frame, "RadioButtonList")
			Roact.unmount(instance)
		end)

		it("should have the proper default value", function()
			local element = mockStyleComponent({
				RadioButtonList = Roact.createElement(RadioButtonList, {
					radioButtons = {"a", "b", "c"},
					selectedValue = 2,
					onActivated = function() end,
					elementSize = UDim2.new(0, 50, 0, 50),
					layoutOrder = 4,
				})
			})

			local instance = Roact.mount(element, frame, "RadioButtonList")
			local image2 = frame:FindFirstChild("RadioButton2", true)
			expect(image2.InputButtonImage.InputFillImage.ImageRectOffset).to.equal(
				Images["component_assets/circle_16"].ImageRectOffset)

			Roact.unmount(instance)
		end)

	end)

end