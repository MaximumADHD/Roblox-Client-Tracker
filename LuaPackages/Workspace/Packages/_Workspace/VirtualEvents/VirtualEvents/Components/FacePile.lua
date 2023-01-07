local VirtualEvents = script:FindFirstAncestor("VirtualEvents")

local React = require(VirtualEvents.Parent.React)

local PADDING = UDim.new(0, 12)
local THUMBNAIL_SIZE = 36 -- px

export type Props = {
	userIds: { string },
	layoutOrder: number?,
}

local function FacePile(props: Props)
	local faces: { [string]: any } = {}
	for i, userId in props.userIds do
		faces[userId] = React.createElement("ImageLabel", {
			LayoutOrder = i,
			BackgroundColor3 = Color3.fromRGB(209, 209, 209),
			Image = ("rbxthumb://type=AvatarHeadShot&id=%s&w=100&h=100"):format(userId),
			Size = UDim2.fromOffset(THUMBNAIL_SIZE, THUMBNAIL_SIZE),
		}, {
			BorderRadius = React.createElement("UICorner", {
				CornerRadius = UDim.new(0.5, 0),
			}),
		})
	end

	return React.createElement("Frame", {
		LayoutOrder = props.layoutOrder,
		BackgroundTransparency = 1,
		AutomaticSize = Enum.AutomaticSize.XY,
	}, {
		Layout = React.createElement("UIListLayout", {
			SortOrder = Enum.SortOrder.LayoutOrder,
			FillDirection = Enum.FillDirection.Horizontal,
			Padding = PADDING,
		}),

		Faces = React.createElement(React.Fragment, nil, faces),
	})
end

return FacePile
