--!nonstrict
-- Based on src/internal/LuaApp/Modules/LuaApp/Components/Common/UserTile.lua

local SocialTab = script:FindFirstAncestor("SocialTab")
local dependencies = require(SocialTab.dependencies)

local Roact = dependencies.Roact
local UIBlox = dependencies.UIBlox
local withStyle = UIBlox.Style.withStyle
local RoduxPresence = dependencies.RoduxPresence
local EnumPresenceType = RoduxPresence.Enums.PresenceType

local Mock = dependencies.Mock
local t = dependencies.t
local Images = UIBlox.App.ImageSet.Images
local StyledImageSetLabel = require(SocialTab.Components.StyledImageSetLabel)
local UserUtils = require(SocialTab.User)

local StyledTextLabel = require(SocialTab.Components.StyledTextLabel)

local THUMBNAIL_PADDING = 8
local GAME_TITLE_PADDING = 4
local PRESENCE_ICON_SIZE = 12
local PRESENCE_ICON_PADDING = 4

local calculateTextSize = require(SocialTab.utils.calculateTextSize)

local isSocialTabAutoSizedCarouselAndTileEnabled2 = require(SocialTab.Flags.isSocialTabAutoSizedCarouselAndTileEnabled2)

local function getLastLocationText(lastLocation)
	return lastLocation and lastLocation:gsub("^Playing%s*", "") or ""
end

local UserTile = Roact.PureComponent:extend("UserTile")
UserTile.defaultProps = {
	enableDisplayNamePolicy = false,
	height = 120,
	layoutOrder = 0,
	onActivated = function() end,
	thumbnailSize = 96,
	absolutePosition = 1,
}

UserTile.validateProps = t.interface({
	enableDisplayNamePolicy = t.optional(t.boolean),
	height = t.optional(t.number),
	layoutOrder = t.optional(t.number),
	onActivated = t.optional(t.union(t.callback, Mock.MagicMock.is)),
	thumbnailSize = t.optional(t.number),
	user = UserUtils.validateUser,
	absolutePosition = t.optional(t.number),
})

function UserTile:init()
	self.userTileRef = Roact.createRef()

	self.onActivated = function()
		local user = self.props.user
		if user then
			if self.userTileRef.current then
				self.props.onActivated({
					user = user,
					positionIndex = self.props.layoutOrder,
					absolutePosition = self.props.absolutePosition,
					anchorSpaceSize = self.userTileRef.current.AbsoluteSize,
					anchorSpacePosition = self.userTileRef.current.AbsolutePosition,
				})
			end
		end
	end

	self.calculateTextBounds = calculateTextSize()
end

function UserTile:render()
	local user = self.props.user
	local usernameText = self.props.enableDisplayNamePolicy and user.displayName or user.username
	local isOnline = user.userPresenceType ~= EnumPresenceType.Offline
	local userLastLocation = getLastLocationText(user.lastLocation)
	local isInGameOrStudio = (
		user.userPresenceType == EnumPresenceType.InGame or user.userPresenceType == EnumPresenceType.InStudio
	) and userLastLocation

	return withStyle(function(style)
		local usernameFont = style.Font.CaptionHeader
		local usernameTextSize = usernameFont.RelativeSize * style.Font.BaseSize
		local inGameOrStudioTitleFont = style.Font.CaptionSubHeader
		local inGameOrStudioTitleTextBounds =
			self.calculateTextBounds(userLastLocation .. "...", inGameOrStudioTitleFont, style.Font.BaseSize)

		local textBounds = self.calculateTextBounds(usernameText, usernameFont, style.Font.BaseSize)
		local textboxWidth =
			math.min(self.props.thumbnailSize - PRESENCE_ICON_SIZE - PRESENCE_ICON_PADDING, textBounds.X)
		return Roact.createElement("TextButton", {
			AutomaticSize = isSocialTabAutoSizedCarouselAndTileEnabled2() and Enum.AutomaticSize.Y
				or Enum.AutomaticSize.None,
			Size = UDim2.new(0, self.props.thumbnailSize, 0, self.props.height + inGameOrStudioTitleTextBounds.Y),
			BackgroundTransparency = 1,
			Text = "",
			LayoutOrder = self.props.layoutOrder,
			[Roact.Ref] = self.userTileRef,
			[Roact.Event.Activated] = self.onActivated,
		}, {
			Layout = Roact.createElement("UIListLayout", {
				FillDirection = Enum.FillDirection.Vertical,
				HorizontalAlignment = Enum.HorizontalAlignment.Center,
				VerticalAlignment = Enum.VerticalAlignment.Top,
				SortOrder = Enum.SortOrder.LayoutOrder,
				Padding = UDim.new(0, THUMBNAIL_PADDING),
			}),
			Thumbnail = Roact.createElement(StyledImageSetLabel, {
				BackgroundStyle = style.Theme.PlaceHolder,
				Image = self.props.user.thumbnail,
				LayoutOrder = 1,
				Size = UDim2.new(0, self.props.thumbnailSize, 0, self.props.thumbnailSize),
			}, {
				UICorner = Roact.createElement("UICorner", {
					CornerRadius = UDim.new(1, 0),
				}),
			}),
			UserInfo = Roact.createElement("Frame", {
				AutomaticSize = isSocialTabAutoSizedCarouselAndTileEnabled2() and Enum.AutomaticSize.Y
					or Enum.AutomaticSize.None,
				Size = UDim2.new(1, 0, 0, self.props.height - self.props.thumbnailSize),
				BackgroundTransparency = 1,
				LayoutOrder = 2,
			}, {
				Layout = Roact.createElement("UIListLayout", {
					FillDirection = Enum.FillDirection.Vertical,
					HorizontalAlignment = Enum.HorizontalAlignment.Center,
					VerticalAlignment = Enum.VerticalAlignment.Top,
					SortOrder = Enum.SortOrder.LayoutOrder,
					Padding = UDim.new(0, GAME_TITLE_PADDING),
				}),
				UsernameFrame = Roact.createElement("Frame", {
					Size = UDim2.new(1, 0, 0, usernameTextSize),
					BackgroundTransparency = 1,
					LayoutOrder = 1,
				}, {
					Layout = Roact.createElement("UIListLayout", {
						FillDirection = Enum.FillDirection.Horizontal,
						HorizontalAlignment = Enum.HorizontalAlignment.Center,
						VerticalAlignment = Enum.VerticalAlignment.Center,
						SortOrder = Enum.SortOrder.LayoutOrder,
						Padding = UDim.new(0, PRESENCE_ICON_PADDING),
					}),

					PresenceIcon = isOnline and Roact.createElement(StyledImageSetLabel, {
						AnchorPoint = Vector2.new(0.5, 0.5),
						Image = Images["component_assets/circle_25"],
						ImageStyle = style.Theme.OnlineStatus,
						LayoutOrder = 1,
						Position = UDim2.fromScale(0.5, 0.5),
						ScaleType = Enum.ScaleType.Slice,
						Size = UDim2.new(0, PRESENCE_ICON_SIZE, 0, PRESENCE_ICON_SIZE),
						SliceCenter = Rect.new(12, 12, 13, 13),
					}) or nil,

					Username = Roact.createElement(StyledTextLabel, {
						FontStyle = usernameFont,
						LayoutOrder = 2,
						Size = UDim2.new(0, textboxWidth, 0, textBounds.Y),
						TextStyle = style.Theme.TextEmphasis,
						Text = usernameText,
						TextTruncate = Enum.TextTruncate.AtEnd,
						TextXAlignment = Enum.TextXAlignment.Left,
					}),
				}),
				InGameOrStudioTitle = Roact.createElement(StyledTextLabel, {
					FontStyle = inGameOrStudioTitleFont,
					LayoutOrder = 2,
					Size = UDim2.new(1, 0, 0, inGameOrStudioTitleTextBounds.Y),
					TextStyle = style.Theme.TextMuted,
					Text = isInGameOrStudio and userLastLocation or "",
					TextTruncate = Enum.TextTruncate.AtEnd,
					TextXAlignment = Enum.TextXAlignment.Center,
				}),
			}),
		})
	end)
end

return UserTile
