--!nonstrict
local CorePackages = game:GetService("CorePackages")

local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local Roact = InGameMenuDependencies.Roact
local t = InGameMenuDependencies.t
local UIBlox = InGameMenuDependencies.UIBlox
local Cryo = InGameMenuDependencies.Cryo

local InGameMenu = script.Parent.Parent
local withLocalization = require(InGameMenu.Localization.withLocalization)

local FFlagUsePageSearchAnimation = require(InGameMenu.Flags.GetFFlagUsePageSearchAnimation)()

local IconSize = UIBlox.App.ImageSet.Enum.IconSize
local getIconSizeUDim2 = UIBlox.App.ImageSet.getIconSizeUDim2
local Images = UIBlox.App.ImageSet.Images
local withStyle = UIBlox.Core.Style.withStyle
local ImageSetLabel = UIBlox.Core.ImageSet.Label
local StyledTextLabel = UIBlox.App.Text.StyledTextLabel
local Cell = UIBlox.App.Table.Cell

local CoPlayInviteCell = Roact.PureComponent:extend("CoPlayInviteCell")

local TITLE_WIDTH = 167
local MINI_AVATAR_WIDTH = 16
local MAX_NUMBER_OF_AVATARS = 3
local AVATAR_BORDER_THICKNESS = 2

local LEFT_PADDING_TITLE = 8
local RIGHT_PADDING_TITLE = 23

CoPlayInviteCell.validateProps = t.strictInterface({
	friends = t.array(t.strictInterface({
		IsOnline = t.boolean,
		Id = t.integer,
		Username = t.string,
		Displayname = t.string,
	})),
	onActivated = t.optional(t.callback),
	LayoutOrder = t.optional(t.number),
})

CoPlayInviteCell.defaultProps = {
	friends = {},
}

function CoPlayInviteCell:init()
	self:setState({
		onlineFriends = {},
	})
end

function CoPlayInviteCell:didMount()
	self.mounted = true

	self:updateFriends()
end

function CoPlayInviteCell:didUpdate(prevProps)
	if prevProps.friends ~= self.props.friends or #prevProps.friends ~= #self.props.friends then
		self:updateFriends()
	end
end

function CoPlayInviteCell:updateFriends()
	-- filter online friends
	local onlineFriends = Cryo.List.filter(self.props.friends, function(friend)
		return friend.IsOnline == true
	end)

	self:setState({
		onlineFriends = onlineFriends,
	})
end

function CoPlayInviteCell:willUnmount()
	self.mounted = false
end

function CoPlayInviteCell:renderBorderStroke(style)
	return Roact.createFragment({
		Corner = Roact.createElement("UICorner", {
			CornerRadius = UDim.new(0, MINI_AVATAR_WIDTH / 2),
		}),
		Border = Roact.createElement("UIStroke", {
			ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
			Color = style.Theme.BackgroundDefault.Color,
			Transparency = 0,
			Thickness = AVATAR_BORDER_THICKNESS,
		}),
	})
end

function CoPlayInviteCell:renderOnlineFriends(style)
	local onlineFriendsView = {}
	if self.mounted and self.state.onlineFriends and #self.state.onlineFriends > 0 then
		for index, playerInfo in pairs(self.state.onlineFriends) do
			local userId = tostring(playerInfo.Id)
			onlineFriendsView["mini_avatar_" .. userId] = Roact.createElement(ImageSetLabel, {
				AnchorPoint = Vector2.new(0, 0.5),
				Position = UDim2.new(0, (MAX_NUMBER_OF_AVATARS - index + 1) * MINI_AVATAR_WIDTH / 2, 0.5, 0),
				Size = UDim2.fromOffset(MINI_AVATAR_WIDTH, MINI_AVATAR_WIDTH),
				BackgroundTransparency = 0,
				Image = "rbxthumb://type=AvatarHeadShot&id=" .. userId .. "&w=100&h=100",
				BackgroundColor3 = Color3.fromRGB(209, 209, 209),
				ZIndex = index,
			}, {
				self:renderBorderStroke(style),
			})

			-- add online indicator
			if index == math.min(MAX_NUMBER_OF_AVATARS, #self.state.onlineFriends) then
				onlineFriendsView["online_indicator"] = Roact.createElement("Frame", {
					AnchorPoint = Vector2.new(0, 0.5),
					Position = UDim2.new(0, (MAX_NUMBER_OF_AVATARS - index) * MINI_AVATAR_WIDTH / 2, 0.5, 0),
					Size = UDim2.fromOffset(MINI_AVATAR_WIDTH - 2, MINI_AVATAR_WIDTH - 2),
					BackgroundTransparency = 0,
					BackgroundColor3 = Color3.fromRGB(0, 180, 109),
					ZIndex = index + 1,
				}, {
					self:renderBorderStroke(style),
					NumberOfOnlineFriends = Roact.createElement(StyledTextLabel, {
						colorStyle = style.Theme.TextEmphasis,
						fontStyle = style.Font.Footer,
						textXAlignment = Enum.TextXAlignment.Center,
						size = UDim2.fromScale(1, 1),
						lineHeight = 1.0,
						text = tostring(#self.state.onlineFriends),
						textTruncate = Enum.TextTruncate.None,
						richText = false,
						automaticSize = Enum.AutomaticSize.XY,
					}),
				})

				break
			end
		end

		return Roact.createElement("Frame", {
			Size = UDim2.fromScale(1, 1),
			AnchorPoint = Vector2.new(0.5, 0.5),
			Position = UDim2.fromScale(0.5, 0.5),
			BackgroundTransparency = 1,
		}, onlineFriendsView)
	end

	return nil
end

function CoPlayInviteCell:render()
	return withStyle(function(style)
		return withLocalization({
			askFriendsToJoinTitle = "CoreScripts.InGameMenu.Actions.AskFriendsToJoin",
		})(function(localized)
			return Roact.createElement(Cell, {
				layoutOrder = if FFlagUsePageSearchAnimation then nil else self.props.LayoutOrder,
				size = if FFlagUsePageSearchAnimation then UDim2.new(1, 0, 1, 0) else UDim2.new(1, 0, 0, 56),
				anchorPoint = if FFlagUsePageSearchAnimation then nil else Vector2.new(1, 0),
				position = if FFlagUsePageSearchAnimation then nil else UDim2.new(1, 0, 1, 0),
				onActivated = self.props.onActivated,
				head = Roact.createElement("Frame", {
					BackgroundTransparency = 1,
					BorderSizePixel = 0,
					LayoutOrder = 1,
					Size = UDim2.new(0, 263, 1, 0),
				}, {
					HeadContainerListLayout = Roact.createElement("UIListLayout", {
						FillDirection = Enum.FillDirection.Horizontal,
						HorizontalAlignment = Enum.HorizontalAlignment.Left,
						SortOrder = Enum.SortOrder.LayoutOrder,
						VerticalAlignment = Enum.VerticalAlignment.Center,
					}),
					Icon = Roact.createElement(ImageSetLabel, {
						BackgroundTransparency = 1,
						Image = Images["icons/actions/friends/friendInvite"],
						Size = getIconSizeUDim2(IconSize.Medium),
						ImageColor3 = style.Theme.IconEmphasis.Color,
						LayoutOrder = 0,
					}),
					TitleContainer = Roact.createElement("Frame", {
						AnchorPoint = Vector2.new(1, 0),
						BackgroundTransparency = 1,
						BorderSizePixel = 0,
						Position = UDim2.new(1, 0, 1, 0),
						Size = UDim2.new(0, TITLE_WIDTH, 0, 20),
					}, {
						Padding = Roact.createElement("UIPadding", {
							PaddingLeft = UDim.new(0, LEFT_PADDING_TITLE),
							PaddingRight = UDim.new(0, RIGHT_PADDING_TITLE),
						}),
						Title = Roact.createElement(StyledTextLabel, {
							colorStyle = style.Theme.TextEmphasis,
							fontStyle = style.Font.Header2,
							textXAlignment = Enum.TextXAlignment.Left,
							size = UDim2.new(0, TITLE_WIDTH, 0, 20),
							lineHeight = 1.0,
							text = localized.askFriendsToJoinTitle,
							textTruncate = Enum.TextTruncate.AtEnd,
							richText = false,
							fluidSizing = true,
						}),
					}),
				}),
				tail = Roact.createElement("Frame", {
					BackgroundTransparency = 1,
					BorderSizePixel = 0,
					LayoutOrder = 2,
					AnchorPoint = Vector2.new(0, 0),
					Size = UDim2.new(0, 40, 0, 60),
				}, {
					OnlineFriends = self:renderOnlineFriends(style),
				}),
				[Roact.Ref] = if FFlagUsePageSearchAnimation then self.props.forwardRef or Roact.createRef() else nil,
			})
		end)
	end)
end

if FFlagUsePageSearchAnimation then
	return Roact.forwardRef(function(props, ref)
		return Roact.createElement(
			CoPlayInviteCell,
			Cryo.Dictionary.join(props, {
				forwardRef = ref,
			})
		)
	end)
end
return CoPlayInviteCell
