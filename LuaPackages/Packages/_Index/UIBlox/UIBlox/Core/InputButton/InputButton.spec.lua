return function()
	local Packages = script.Parent.Parent.Parent.Parent
	local Roact = require(Packages.Roact)
	local Images = require(Packages.UIBlox.ImageSet.Images)
	local mockStyleComponent = require(Packages.UIBlox.Utility.mockStyleComponent)

	local InputButton = require(script.Parent.InputButton)

	describe("lifecycle", function()
		local frame = Instance.new("Frame")
		it("should mount and unmount without issue", function()
			local element = mockStyleComponent({
				InputButton = Roact.createElement(InputButton, {
					text = "some text",
					Size = UDim2.new(1,0,1,0),
					image = Images["circles/hollow"],
					imageColor = Color3.fromRGB(55, 111, 55),
					fillImage = Images["circles/fill"],
					fillImageSize = UDim2.new(10, 10),
					fillImageColor = Color3.fromRGB(111, 222, 111),
					selectedColor = Color3.fromRGB(8,9,8),
					textColor = Color3.fromRGB(1,2,3),
					transparency = 0.5,
					onActivated = function(value) print(value) end,
					LayoutOrder = 1,
				})
			})
			local instance = Roact.mount(element, frame, "Box")

			Roact.unmount(instance)
		end)
	end)

end
