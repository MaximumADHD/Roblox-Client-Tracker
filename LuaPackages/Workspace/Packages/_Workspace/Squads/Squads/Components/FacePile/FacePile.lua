local Squads = script:FindFirstAncestor("Squads")
local dependencies = require(Squads.dependencies)
local Dash = dependencies.Dash
local SocialLibraries = dependencies.SocialLibraries
local UIBlox = dependencies.UIBlox
local dependencyArray = dependencies.Hooks.dependencyArray
local llama = dependencies.llama

local useStyle = UIBlox.Core.Style.useStyle
local ImageSetLabel = UIBlox.Core.ImageSet.Label

-- Note: Type information is not retained on lua tables, so the only way to get
-- React _types_ is to require a module that re-exports them
local Packages = Squads.Parent
local React = require(Packages.React)

export type Props = {
	-- List of user IDs to show on pile
	users: { [number]: string },
	-- Size of avatar with border
	avatarSize: number,
	-- Offset of adjacent avatars overlap each others
	overlapOffset: number,
	-- Width of avatar border
	borderWidth: number,
	-- Color of avatar border
	borderColor: Color3,
	-- Number of faces is needed, will compress to number if meet the max width.
	-- (nil: #users)
	faceCount: number | nil,
	-- Horizontal alignment of the face pile. (nil: Enum.HorizontalAlignment.Left)
	horizontalAlignment: Enum.HorizontalAlignment | nil,
	-- Width of the face pile (nil: UDim.new(1, 0))
	facePileWidth: UDim | nil,
}

type InternalProps = Props & {
	horizontalAlignment: Enum.HorizontalAlignment,
	facePileWidth: UDim,
}

local defaultProps = {
	horizontalAlignment = Enum.HorizontalAlignment.Left,
	facePileWidth = UDim.new(1, 0),
}

-- Given a list of user IDs, renders the avatar icons of those users in a face
-- pile. If exceeding the width of parent length avatars will compress into
-- remaining number of users.
local FacePile = function(passedProps: Props)
	local props: InternalProps = Dash.join(defaultProps, passedProps or {})
	local ref = React.useRef(nil)
	local pileWidth, setPileWidth = React.useState(0)

	local style = useStyle()
	local theme = style.Theme
	local font = style.Font

	React.useEffect(function()
		setPileWidth(if ref and ref.current then ref.current.AbsoluteSize.X else 0)
	end)

	local faces = React.useMemo(
		function()
			local users = props.users
			local avatarSize = props.avatarSize
			local overlapOffset = props.overlapOffset
			local borderWidth = props.borderWidth
			local borderColor = props.borderColor
			local faceCount = if props.faceCount then props.faceCount else #users
			local horizontalAlignment = props.horizontalAlignment

			if
				pileWidth < avatarSize
				or avatarSize < overlapOffset
				or pileWidth <= 0
				or avatarSize <= 0
				or faceCount <= 0
				or faceCount < #users
			then
				return nil
			end

			local maxFacesCount = 0
			if avatarSize == overlapOffset then
				-- All avatars stack on each other
				maxFacesCount = faceCount
			else
				-- Calculate the max # of faces can fit into the width
				maxFacesCount = math.floor((pileWidth - avatarSize) / (avatarSize - overlapOffset)) + 1
			end

			local avatars = {}
			for index = 1, faceCount do
				if index > maxFacesCount then
					break
				end

				local key = "AvatarCell" .. index
				local avatarContentSize =
					UDim2.fromOffset(avatarSize - (borderWidth * 2), avatarSize - (borderWidth * 2))
				local avatarContent: React.ReactElement<any> | nil
				if index == maxFacesCount and faceCount > maxFacesCount then
					-- Set content with number count
					avatarContent = React.createElement("TextLabel", {
						Font = font.CaptionHeader.Font,
						TextColor3 = theme.TextEmphasis.Color,
						TextTransparency = theme.TextEmphasis.Transparency,
						Text = "+" .. math.min(faceCount - maxFacesCount + 1, 99),
						Size = avatarContentSize,
						TextSize = 16,
						Position = UDim2.fromScale(0.5, 0.5),
						AnchorPoint = Vector2.new(0.5, 0.5),
						BackgroundColor3 = theme.BackgroundDefault.Color,
					}, {
						UICorner = React.createElement("UICorner", {
							CornerRadius = UDim.new(1, 0),
						}),
					})
				elseif index <= #users then
					-- Set content with user avatar
					avatarContent = React.createElement(ImageSetLabel, {
						Image = SocialLibraries.User.getUserAvatarImage(users[index]),
						Size = avatarContentSize,
						Position = UDim2.fromScale(0.5, 0.5),
						AnchorPoint = Vector2.new(0.5, 0.5),
					}, {
						UICorner = React.createElement("UICorner", {
							CornerRadius = UDim.new(1, 0),
						}),
					})
				else
					-- Set content with colored background
					avatarContent = React.createElement("Frame", {
						Size = avatarContentSize,
						Position = UDim2.fromScale(0.5, 0.5),
						AnchorPoint = Vector2.new(0.5, 0.5),
						BackgroundColor3 = theme.TextSecondary,
					}, {
						UICorner = React.createElement("UICorner", {
							CornerRadius = UDim.new(1, 0),
						}),
					})
				end

				-- Wrap content to show border
				avatars[key] = React.createElement("Frame", {
					Size = UDim2.fromOffset(avatarSize, avatarSize),
					BackgroundTransparency = 0,
					BackgroundColor3 = borderColor,
					LayoutOrder = index,
					ZIndex = index,
				}, {
					UICorner = React.createElement("UICorner", {
						CornerRadius = UDim.new(1, 0),
					}),
					UserAvatar = avatarContent,
				})
			end

			return llama.Dictionary.join(avatars, {
				layout = React.createElement("UIListLayout", {
					HorizontalAlignment = horizontalAlignment,
					VerticalAlignment = Enum.VerticalAlignment.Center,
					FillDirection = Enum.FillDirection.Horizontal,
					SortOrder = Enum.SortOrder.LayoutOrder,
					Padding = UDim.new(0, -overlapOffset),
				}),
			})
		end,
		dependencyArray(
			pileWidth,
			props.users,
			props.avatarSize,
			props.overlapOffset,
			props.borderWidth,
			props.borderColor,
			props.faceCount,
			props.horizontalAlignment
		)
	)

	return React.createElement("Frame", {
		ref = ref,
		Size = UDim2.new(props.facePileWidth.Scale, props.facePileWidth.Offset, 0, props.avatarSize),
		BackgroundTransparency = 1,
	}, faces)
end

return FacePile
