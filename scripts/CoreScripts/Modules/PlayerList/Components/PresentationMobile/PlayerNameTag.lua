--!strict
local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")

local React = require(CorePackages.Packages.React)
local t = require(CorePackages.Packages.t)
local Cryo = require(CorePackages.Packages.Cryo)

local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local playerInterface = require(RobloxGui.Modules.Interfaces.playerInterface)

local PlayerList = script.Parent.Parent.Parent
local Components = script.Parent.Parent
local Connection = Components.Connection
local LayoutValues = require(Connection.LayoutValues)
local WithLayoutValues = LayoutValues.WithLayoutValues
local usePlayerCombinedName = require(PlayerList.Hooks.usePlayerCombinedName)

local ApolloClient = require(CoreGui.RobloxGui.Modules.ApolloClient)
local UserProfiles = require(CorePackages.Workspace.Packages.UserProfiles)
local getInExperienceCombinedNameFromId = UserProfiles.Selectors.getInExperienceCombinedNameFromId

local getIsUserProfileOnLeaderboardEnabled = require(RobloxGui.Modules.Flags.getIsUserProfileOnLeaderboardEnabled)
local FFlagRefactorPlayerNameTag = require(PlayerList.Flags.FFlagRefactorPlayerNameTag)
local FFlagInExperienceNameQueryEnabled = require(CorePackages.Workspace.Packages.SharedFlags).FFlagInExperienceNameQueryEnabled

local PlayerNameTag = React.PureComponent:extend("PlayerNameTag")

PlayerNameTag.validateProps = t.strictInterface({
	player = playerInterface,
	isTitleEntry = t.boolean,
	isHovered = t.boolean,
	name = if FFlagRefactorPlayerNameTag then t.string else nil,
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

type Props = {
	player: Player,
	isTitleEntry: boolean,
	isHovered: boolean,
	textStyle: {
		Color: Color3,
		Transparency: number,
		StrokeColor: Color3?,
		StrokeTransparency: number?,
	},
	textFont: {
		Size: number,
		MinSize: number,
		Font: Enum.Font,
	},
}

if not FFlagRefactorPlayerNameTag then
	function PlayerNameTag:init()
		if getIsUserProfileOnLeaderboardEnabled() then
			self:setState({
				name = self.props.player.DisplayName,
			})

			ApolloClient:query({
				query = if FFlagInExperienceNameQueryEnabled then UserProfiles.Queries.userProfilesInExperienceNamesByUserIds else UserProfiles.Queries.userProfilesCombinedNameByUserIds,
				variables = {
					userIds = { tostring(self.props.player.UserId) },
				},
			}):andThen(function(response)
				local name = if FFlagInExperienceNameQueryEnabled then getInExperienceCombinedNameFromId(response.data, self.props.player.UserId) else response.data.userProfiles[1].names.combinedName
				self:setState({
					name = name,
				})
			end)
		end
	end
end

function PlayerNameTag:render()
	return WithLayoutValues(function(layoutValues)
		local playerNameFont = self.props.textFont.Font
		local textSize = self.props.textFont.Size

		return React.createElement("TextLabel", {
			AnchorPoint = Vector2.new(1, 0),
			Position = UDim2.new(1, 0, 0, 0),
			Size = UDim2.new(1, -layoutValues.PlayerIconSizeMobile.X.Offset - (layoutValues.PlayerNamePaddingXMobile :: number) * 2, 1, 0),
			TextXAlignment = Enum.TextXAlignment.Left,
			Font = playerNameFont,
			TextSize = textSize,
			TextColor3 = self.props.textStyle.Color,
			TextTransparency = self.props.textStyle.Transparency,
			TextStrokeColor3 = self.props.textStyle.StrokeColor,
			TextStrokeTransparency = self.props.textStyle.StrokeTransparency,
			BackgroundTransparency = 1,
			Text = if FFlagRefactorPlayerNameTag
				then self.props.name
				else if getIsUserProfileOnLeaderboardEnabled()
					then self.state.name
					else self.props.player.DisplayName,
			TextTruncate = Enum.TextTruncate.AtEnd,
		})
	end)
end

local function PlayerNameTagContainer(props: Props)
	local name = usePlayerCombinedName(tostring(props.player.UserId), props.player.DisplayName)

	return React.createElement(PlayerNameTag, Cryo.Dictionary.join(props, {
		name = name
	}))
end

if FFlagRefactorPlayerNameTag then
	return PlayerNameTagContainer
else
	return PlayerNameTag
end
