local CorePackages = game:GetService("CorePackages")
local UIBlox = require(CorePackages.UIBlox)
local Images = UIBlox.App.ImageSet.Images
local ImageSetLabel = UIBlox.Core.ImageSet.Label
local Roact = require(CorePackages.Roact)

local LimitedLabel = Roact.PureComponent:extend("LimitedLabel")

local LIMITED_ITEM_IMAGE = "icons/status/item/limited"

--[[
	Sets the variables used to display text. If a bundle is
	being shown, they will display the bundle's data instead.
]]

function LimitedLabel:render()
    local frameSize = self.props.frameSize
    local framePosition = self.props.framePosition
    local imageSize = self.props.imageSize
    local imagePosition = self.props.imagePosition
    local textSize = self.props.textSize
    local textPosition = self.props.textPosition
    local text = self.props.text
    
    local icon = Images[LIMITED_ITEM_IMAGE]

	return Roact.createElement("Frame", {
        Size = frameSize,
        BorderSizePixel = 0,
        LayoutOrder = 3,
        Position = framePosition,
        BackgroundColor3 = Color3.fromRGB(120, 120, 120),
    }, {
        Corner = Roact.createElement("UICorner", {
            CornerRadius = UDim.new(0, 8),
        }),
        CollectiblesIcon = Roact.createElement(ImageSetLabel, {
            Position = imagePosition,
            Size = imageSize,
            BackgroundTransparency = 1,
            ZIndex = 2,
            Visible = true,
            Image = icon,
        }),
        CollectiblesText = Roact.createElement("TextLabel", {
            Position = textPosition,
            Size = textSize,
            BackgroundTransparency = 1,
            Text = text,
            Font = Enum.Font.Gotham,
            TextXAlignment = Enum.TextXAlignment.Left,
            TextSize = 12,
            TextColor3 = Color3.new(1, 1, 1),
        }),
    })
end

return LimitedLabel
