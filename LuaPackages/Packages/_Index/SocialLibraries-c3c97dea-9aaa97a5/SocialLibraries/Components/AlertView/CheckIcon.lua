local SocialLibraries = script:FindFirstAncestor("SocialLibraries")
local dependencies = require(SocialLibraries.dependencies)
local Roact = dependencies.Roact
local UIBlox = dependencies.UIBlox
local Images = require(script.Parent.Images)

local CheckIcon = Roact.PureComponent:extend("CheckIcon")

CheckIcon.defaultProps = {
	checked = false,
	onActivated = function() end,
}

function CheckIcon:render()
	local ImageInfo = self.props.checked and Images["checkFill"] or Images["checkStroke"]
	return UIBlox.Style.withStyle(function(styles)
		return Roact.createElement("Frame", {
			BackgroundTransparency = 1,
			BorderSizePixel = 0,
			Size = UDim2.new(0, 17, 0, 17),
		}, {
			Button = Roact.createElement("ImageButton", {
				AutoButtonColor = false,
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				Image = ImageInfo.Image,
				ImageRectOffset = ImageInfo.ImageRectOffset,
				ImageRectSize = ImageInfo.ImageRectSize,
				ImageColor3 = styles.Theme.UIDefault.Color,
				ScaleType = Enum.ScaleType.Slice,
				Size = UDim2.new(1, 0, 1, 0),
				SliceCenter = ImageInfo.SliceCenter,
				[Roact.Event.MouseButton1Click] = self.props.onActivated,
			})
		})
	end)
end

return CheckIcon
