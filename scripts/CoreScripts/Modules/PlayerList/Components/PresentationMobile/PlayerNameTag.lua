--!nonstrict
local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")

local Roact = require(CorePackages.Roact)
local t = require(CorePackages.Packages.t)

local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local playerInterface = require(RobloxGui.Modules.Interfaces.playerInterface)

local Components = script.Parent.Parent
local Connection = Components.Connection
local LayoutValues = require(Connection.LayoutValues)
local WithLayoutValues = LayoutValues.WithLayoutValues

local ApolloClient = require(CoreGui.RobloxGui.Modules.ApolloClient)
local UserProfiles = require(CorePackages.Workspace.Packages.UserProfiles)

local getFFlagPlayerListApolloClientEnabled = require(RobloxGui.Modules.Flags.getFFlagPlayerListApolloClientEnabled)
local getIsUserProfileOnLeaderboardEnabled = require(RobloxGui.Modules.Flags.getIsUserProfileOnLeaderboardEnabled)

local PlayerNameTag = Roact.PureComponent:extend("PlayerNameTag")

PlayerNameTag.validateProps = t.strictInterface({
	player = playerInterface,
	isTitleEntry = t.boolean,
	isHovered = t.boolean,
	textStyle = t.strictInterface({
		Color = t.Color3,
		Transparency = t.number,
		StrokeColor = t.optional(t.Color3),
		StrokeTransparency = t.optional(t.number),
	}),
	textFont = t.strictInterface({
		Size = t.number,
		MinSize = t.number,
		Font = t.enum(Enum.Font),
	}),
})

function PlayerNameTag:init()
	if getFFlagPlayerListApolloClientEnabled() and getIsUserProfileOnLeaderboardEnabled() then
		self:setState({
			name = self.props.player.DisplayName,
		})

		ApolloClient:query({
			query = UserProfiles.Queries.userProfilesCombinedNameByUserIds,
			variables = {
				userIds = { tostring(self.props.player.UserId) },
			},
		}):andThen(function(response)
			local name = response.data.userProfiles[1].names.combinedName
			self:setState({
				name = name,
			})
		end)
	end
end

function PlayerNameTag:render()
	return WithLayoutValues(function(layoutValues)
		local playerNameFont = self.props.textFont.Font
		local textSize = self.props.textFont.Size

		return Roact.createElement("TextLabel", {
			AnchorPoint = Vector2.new(1, 0),
			Position = UDim2.new(1, 0, 0, 0),
			Size = UDim2.new(1, -layoutValues.PlayerIconSizeMobile.X.Offset - layoutValues.PlayerNamePaddingXMobile*2, 1, 0),
			TextXAlignment = Enum.TextXAlignment.Left,
			Font = playerNameFont,
			TextSize = textSize,
			TextColor3 = self.props.textStyle.Color,
			TextTransparency = self.props.textStyle.Transparency,
			TextStrokeColor3 = self.props.textStyle.StrokeColor,
			TextStrokeTransparency = self.props.textStyle.StrokeTransparency,
			BackgroundTransparency = 1,
			Text = if getFFlagPlayerListApolloClientEnabled() and getIsUserProfileOnLeaderboardEnabled() then self.state.name else self.props.player.DisplayName,
			TextTruncate = Enum.TextTruncate.AtEnd,
		})
	end)
end

return PlayerNameTag
