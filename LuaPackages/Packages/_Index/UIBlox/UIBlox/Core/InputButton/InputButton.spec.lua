return function()
	local InputButtonRoot = script.Parent
	local Core = InputButtonRoot.Parent
	local UIBlox = Core.Parent
	local Packages = UIBlox.Parent
	local Roact = require(Packages.Roact)
	local Images = require(Packages.UIBlox.App.ImageSet.Images)
	local mockStyleComponent = require(Packages.UIBlox.Utility.mockStyleComponent)

	local InputButton = require(script.Parent.InputButton)

	describe("lifecycle", function()
		local frame = Instance.new("Frame")
		it("should mount and unmount without issue", function()
			local element = mockStyleComponent({
				InputButton = Roact.createElement(InputButton, {
					text = "some text",
					size = UDim2.new(1, 0, 1, 0),
					image = Images["component_assets/circle_24_stroke_1"],
					imageColor = Color3.fromRGB(55, 111, 55),
					fillImage = Images["component_assets/circle_16"],
					fillImageSize = UDim2.new(10, 10),
					fillImageColor = Color3.fromRGB(111, 222, 111),
					selectedColor = Color3.fromRGB(8, 9, 8),
					textColor = Color3.fromRGB(1, 2, 3),
					transparency = 0.5,
					onActivated = function(value) print(value) end,
					layoutOrder = 1,
				})
			})
			local instance = Roact.mount(element, frame, "Box")

			Roact.unmount(instance)
		end)
	end)

end
