local CorePackages = game:GetService("CorePackages")
local RoactRodux = require(CorePackages.RoactRodux)

local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local Roact = InGameMenuDependencies.Roact
local UIBlox = InGameMenuDependencies.UIBlox
local t = InGameMenuDependencies.t

local InGameMenu = script.Parent.Parent
local withLocalization = require(InGameMenu.Localization.withLocalization)
local withStyle = UIBlox.Core.Style.withStyle
local Constants = require(InGameMenu.Resources.Constants)
local SendAnalytics = require(InGameMenu.Utility.SendAnalytics)
local StyledTextLabel = UIBlox.App.Text.StyledTextLabel

local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local BlockPlayer = require(RobloxGui.Modules.PlayerList.Thunks.BlockPlayer)
local playerInterface = require(RobloxGui.Modules.Interfaces.playerInterface)

local SetFriendBlockConfirmation = require(InGameMenu.Actions.SetFriendBlockConfirmation)

local ButtonStack = UIBlox.App.Button.ButtonStack
local ButtonType = UIBlox.App.Button.Enum.ButtonType

local DIALOG_HEIGHT = 235
local DIALOG_Y_POSITION = 82
local CORNER_RADIUS = 8
local ACTIONS_HEIGHT = 60
local ACTIONS_BUTTON_HEIGHT = 36
local PADDING = 20
local TITLE_TOP_PADDING = 10
local TITLE_FRAME_HEIGHT = 54
local TITLE_HEIGHT = 44
local CONTENT_HEIGHT = 121
local CONTENT_BODY_HEIGHT = 100
local CONTENT_TOP_PADDING = 0.5
local CONTENT_BOTTOM_PADDING = 20.5

local FriendBlockConfirmation = Roact.PureComponent:extend("FriendBlockConfirmation")

FriendBlockConfirmation.validateProps = t.strictInterface({
	isFriendBlockOpen = t.boolean,
	targetPlayer = t.optional(playerInterface),
	player = t.optional(playerInterface),
	closeFriendBlockConfirmation = t.callback,
	blockPlayer = t.callback,
	width = t.number,
	zIndex = t.number,
	onClosePlayerContextualMenu = t.callback,
})

function FriendBlockConfirmation:init()
	self.onCancel = function()
		self.props.closeFriendBlockConfirmation()
	end
	self.onConfirm = function(targetPlayer)
		self.props.blockPlayer(targetPlayer)
		self.props.closeFriendBlockConfirmation()
		self.props.onClosePlayerContextualMenu()

		SendAnalytics(Constants.AnalyticsMenuActionName, Constants.AnalyticsBlockPlayer, {})
	end
end

function FriendBlockConfirmation:renderTitle(style, text)
	return Roact.createElement("Frame", {
		LayoutOrder = 1,
		BackgroundTransparency = 1,
		Size = UDim2.new(1, 0, 0, TITLE_FRAME_HEIGHT),
	}, {
		Padding = Roact.createElement("UIPadding", {
			PaddingTop = UDim.new(0, TITLE_TOP_PADDING),
		}),
		TitleText = Roact.createElement(StyledTextLabel, {
			size = UDim2.new(1, 0, 0, TITLE_HEIGHT),
			text = text,
			fontStyle = style.Font.Header1,
			colorStyle = style.Theme.TextEmphasis,
			textTruncate = Enum.TextTruncate.AtEnd,
			fluidSizing = true,
			richText = false,
			lineHeight = 1,
			textXAlignment = Enum.TextXAlignment.Center,
		}),
	})
end

function FriendBlockConfirmation:renderContent(style, text)
	return Roact.createElement("Frame", {
		LayoutOrder = 3,
		BackgroundTransparency = 1,
		Size = UDim2.new(1, 0, 0, CONTENT_HEIGHT),
	}, {
		Padding = Roact.createElement("UIPadding", {
			PaddingTop = UDim.new(0, CONTENT_TOP_PADDING),
			PaddingBottom = UDim.new(0, CONTENT_BOTTOM_PADDING),
		}),
		BodyText = Roact.createElement(StyledTextLabel, {
			size = UDim2.new(1, 0, 0, CONTENT_BODY_HEIGHT),
			text = text,
			fontStyle = style.Font.Body,
			colorStyle = style.Theme.TextDefault,
			textTruncate = Enum.TextTruncate.AtEnd,
			fluidSizing = true,
			richText = false,
			lineHeight = 1,
			textXAlignment = Enum.TextXAlignment.Center,
		}),
	})
end

function FriendBlockConfirmation:renderActions(localized, player)
	return Roact.createElement("Frame", {
		BackgroundTransparency = 1,
		LayoutOrder = 4,
		Size = UDim2.new(1, 0, 0, ACTIONS_HEIGHT),
	}, {
		Padding = Roact.createElement("UIPadding", {
			PaddingBottom = UDim.new(0, PADDING),
		}),
		ActionButtons = Roact.createElement(ButtonStack, {
			buttonHeight = ACTIONS_BUTTON_HEIGHT,
			buttons = {
				{
					buttonType = ButtonType.Secondary,
					props = {
						onActivated = self.onCancel,
						text = localized.cancelText,
					},
				},
				{
					buttonType = ButtonType.Alert,
					props = {
						onActivated = function()
							self.onConfirm(player)
						end,
						text = localized.blockText,
					},
				},
			},
		}),
	})
end

function FriendBlockConfirmation:render()
	local player = self.props.targetPlayer
	local displayName = player and player.DisplayName or nil
	local userName = player and player.Name or nil
	return withLocalization({
		titleText = "CoreScripts.InGameMenu.Actions.BlockFriend",
		cancelText = "CoreScripts.InGameMenu.Cancel",
		blockText = "CoreScripts.InGameMenu.Report.Block",
		bodyText = {
			"CoreScripts.InGameMenu.Report.BlockBody",
			DISPLAY_NAME = displayName,
			RBX_NAME = userName,
		},
	})(function(localized)
		return withStyle(function(style)
			return Roact.createElement("Frame", {
				Size = UDim2.new(0, self.props.width, 0, DIALOG_HEIGHT),
				Position = UDim2.fromOffset(0, DIALOG_Y_POSITION),
				BackgroundColor3 = style.Theme.BackgroundUIDefault.Color,
				BackgroundTransparency = style.Theme.BackgroundUIDefault.Transparency,
				BorderSizePixel = 0,
				ZIndex = self.props.zIndex,
			}, {
				UICorner = Roact.createElement("UICorner", {
					CornerRadius = UDim.new(0, CORNER_RADIUS),
				}),
				Padding = Roact.createElement("UIPadding", {
					PaddingLeft = UDim.new(0, PADDING),
					PaddingRight = UDim.new(0, PADDING),
				}),
				ListLayout = Roact.createElement("UIListLayout", {
					SortOrder = Enum.SortOrder.LayoutOrder,
					FillDirection = Enum.FillDirection.Vertical,
					HorizontalAlignment = Enum.HorizontalAlignment.Center,
					VerticalAlignment = Enum.VerticalAlignment.Center,
				}),
				TitleText = self:renderTitle(style, localized.titleText),
				BodyText = self:renderContent(style, localized.bodyText),
				ActionBar = self:renderActions(localized, player),
			})
		end)
	end)
end

local function mapStateToProps(state)
	return {
		isFriendBlockOpen = state.friends.isFriendBlockOpen or false,
		targetPlayer = state.friends.targetBlockFriend,
	}
end

local function mapDispatchToProps(dispatch)
	return {
		closeFriendBlockConfirmation = function()
			dispatch(SetFriendBlockConfirmation(false))
		end,
		blockPlayer = function(player)
			return dispatch(BlockPlayer(player))
		end,
	}
end

return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(FriendBlockConfirmation)
