local AddFriends = script:FindFirstAncestor("FriendsLanding").AddFriends
local dependencies = require(AddFriends.dependencies)
local Roact = dependencies.Roact
local UIBlox = dependencies.UIBlox
local withStyle = UIBlox.Style.withStyle
local IconButton = UIBlox.App.Button.IconButton
local Images = UIBlox.App.ImageSet.Images
local IgnoreAllFriendsRequestsMenu = require(script.Parent)

local Story = Roact.PureComponent:extend("Story")

function Story:init()
	self:setState({
		isMenuOpened = false,
	})

	self.onIconClick = function()
		self:setState({
			isMenuOpened = not self.state.isMenuOpened,
		})
	end

	self.onIgnoreAll = function()
		self:setState({
			isMenuOpened = false,
		})
	end
end

function Story:render()
	return withStyle(function(style)
		return Roact.createElement("Frame", {
			Size = UDim2.new(0, 500, 0, 150),
			BackgroundTransparency = 1,
		}, {
			IconLayout = Roact.createElement("Frame", {
				Size = UDim2.new(1, 0, 0, 36),
				BackgroundTransparency = 1,
			}, {
				Icon = Roact.createElement(IconButton, {
					size = UDim2.fromOffset(36, 36),
					position = UDim2.new(1, 0, 0, 0),
					anchorPoint = Vector2.new(1, 0),
					icon = Images["icons/common/more"],
					iconTransparency = style.Theme.IconEmphasis.Transparency,
					iconColor3 = style.Theme.IconEmphasis.Color,
					onActivated = self.onIconClick,
				}),
			}),
			Menu = Roact.createElement(IgnoreAllFriendsRequestsMenu, {
				open = self.state.isMenuOpened,
				onIgnoreAll = self.onIgnoreAll,
				openPositionY = UDim.new(0, 48),
			}),
		})
	end)
end

return Story
