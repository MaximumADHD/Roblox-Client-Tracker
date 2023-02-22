local VirtualEvents = script:FindFirstAncestor("VirtualEvents")

local Cryo = require(VirtualEvents.Parent.Cryo)
local React = require(VirtualEvents.Parent.React)

local PADDING = UDim.new(0, 12)
local THUMBNAIL_SIZE = 36 -- px

export type Props = {
	userIds: { string },

	-- If supplied this user will be shifted to the front of the FacePile. This
	-- is used so when the client RSVPs they can see themself easily
	desiredFirstUserId: string?,

	layoutOrder: number?,
}

local function FacePile(props: Props)
	local faces: { [string]: any } = {}

	local userIds = React.useMemo(function()
		if props.desiredFirstUserId then
			local index = Cryo.List.find(props.userIds, props.desiredFirstUserId)

			if index then
				local userIds = table.clone(props.userIds)
				table.remove(userIds, index)
				table.insert(userIds, 1, props.desiredFirstUserId)
				return userIds
			end
		end

		return props.userIds
	end, { props.userIds, props.desiredFirstUserId } :: { any })

	for i, userId in userIds do
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
