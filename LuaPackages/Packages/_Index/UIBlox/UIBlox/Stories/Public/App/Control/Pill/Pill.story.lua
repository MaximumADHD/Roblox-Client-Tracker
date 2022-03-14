local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Packages = ReplicatedStorage.Packages
local UIBlox = Packages.UIBlox
local Roact = require(Packages.Roact)
local Pill = require(UIBlox.App.Control.Pill.Pill)
local Images = require(UIBlox.App.ImageSet.Images)

local PillStory = Roact.PureComponent:extend("PillStory")

function PillStory:render()
	return Roact.createElement("Frame", {
		Size = UDim2.new(1, 0, 1, 0),
		BackgroundTransparency = 1,
	}, {
		Roact.createElement(Pill, {
			text = self.props.controls.text,
			isSelected = self.props.controls.isSelected,
			isDisabled = self.props.controls.isDisabled,
			isLoading = self.props.controls.isLoading,
			onActivated = function()
				print("Pill Pressed")
			end,
			icon = Images["icons/placeholder/placeholderOn_small"],
		}),
	})
end

return {
	name = "Pill",
	summary = [[Button-like component that is used for filtering or filter-like navigation.
	 Can be standalone or in a Pill Group.
	 If standalone, the Pill must include both Icon and Text.]],
	controls = {
		text = "Pill Button",
		isDisabled = false,
		isSelected = false,
		isLoading = false,
	},
	story = PillStory,
}
