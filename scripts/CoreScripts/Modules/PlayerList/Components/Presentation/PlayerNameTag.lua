--!strict
local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local React = require(CorePackages.Packages.React)
local t = require(CorePackages.Packages.t)
local VerifiedBadges = require(CorePackages.Workspace.Packages.VerifiedBadges)
local UserLib = require(CorePackages.Workspace.Packages.UserLib)
local Cryo = require(CorePackages.Packages.Cryo)

local PlayerList = script.Parent.Parent.Parent
local Connection = PlayerList.Components.Connection
local LayoutValues = require(Connection.LayoutValues)
local WithLayoutValues = LayoutValues.WithLayoutValues
local usePlayerCombinedName = require(PlayerList.Hooks.usePlayerCombinedName)
local createShallowEqualAndTables = require(PlayerList.createShallowEqualAndTables)
local FFlagPlayerListReduceRerenders = require(PlayerList.Flags.FFlagPlayerListReduceRerenders)
local UserProfiles = require(CorePackages.Workspace.Packages.UserProfiles)
local useVerifiedBadge = UserProfiles.Hooks.useVerifiedBadge 
local FFlagEnableVerifiedBadgeStore = require(CorePackages.Workspace.Packages.SharedFlags).FFlagEnableVerifiedBadgeStore

local playerInterface = require(RobloxGui.Modules.Interfaces.playerInterface)

local PlayerNameTag = React.PureComponent:extend("PlayerNameTag")

PlayerNameTag.validateProps = t.strictInterface({
	player = playerInterface,
	isTitleEntry = t.boolean,
	isHovered = t.boolean,
	layoutOrder = t.integer,
	name = t.union(t.string, t.table),
	hasVerifiedBadge = t.optional(t.boolean), -- temporarily optional until FFlagEnableVerifiedBadgeStore is enabled
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

function PlayerNameTag:render()
	return WithLayoutValues(function(layoutValues)
		local iconColor = layoutValues.IconUnSelectedColor
		if self.props.isHovered then
			iconColor = layoutValues.IconSelectedColor
		end

		local playerNameFont = self.props.textFont.Font
		local textSize = self.props.textFont.Size

		local playerNameChildren = {}
		local platformName = self.props.player.PlatformName
		local hasVerifiedBadge = if FFlagEnableVerifiedBadgeStore then self.props.hasVerifiedBadge else UserLib.Utils.isPlayerVerified(self.props.player)

		if layoutValues.IsTenFoot and platformName ~= "" then
			playerNameChildren["VerticalLayout"] = React.createElement("UIListLayout", {
				SortOrder = Enum.SortOrder.LayoutOrder,
				FillDirection = Enum.FillDirection.Vertical,
				VerticalAlignment = Enum.VerticalAlignment.Center,
				Padding = UDim.new(0, 10),
			})

			playerNameChildren["PlayerPlatformName"] = React.createElement("TextLabel", {
				Position = UDim2.new(0, 0, 0, 0),
				Size = UDim2.new(1, 0, 0.35, 0),
				TextXAlignment = Enum.TextXAlignment.Left,
				Font = Enum.Font.SourceSans,
				TextSize = textSize,
				TextColor3 = self.props.textStyle.Color,
				TextTransparency = self.props.textStyle.Transparency,
				TextStrokeColor3 = self.props.textStyle.StrokeColor,
				TextStrokeTransparency = self.props.textStyle.StrokeTransparency,
				BackgroundTransparency = 1,
				Text = platformName,
				LayoutOrder = 2,
			})

			playerNameChildren["RobloxNameFrame"] = React.createElement("Frame", {
				Size = UDim2.new(1, 0, 0.45, 0),
				BackgroundTransparency = 1,
				LayoutOrder = 2,
			}, {
				Layout = React.createElement("UIListLayout", {
					SortOrder = Enum.SortOrder.LayoutOrder,
					FillDirection = Enum.FillDirection.Horizontal,
					VerticalAlignment = Enum.VerticalAlignment.Center,
					Padding = UDim.new(0, 6),
				}),

				RobloxIcon = React.createElement("ImageButton", {
					Size = UDim2.new(0, 24, 0, 24),
					Image = layoutValues.RobloxIconImage,
					BackgroundTransparency = 1,
					Selectable = false,
					ImageColor3 = iconColor,
					LayoutOrder = 1,
				}),

				PlayerNameContainer = React.createElement(VerifiedBadges.EmojiWrapper, {
						emoji = if hasVerifiedBadge then VerifiedBadges.emoji.verified else "",
						layoutOrder = 2,
						mockIsEnrolled = true,
						size = UDim2.new(1, -30, 0, 0),
						automaticSize = Enum.AutomaticSize.Y,
						verticalAlignment = Enum.VerticalAlignment.Center,
					}, {
						PlayerName = React.createElement("TextLabel", {
							AutomaticSize = Enum.AutomaticSize.X,
							ClipsDescendants = false,
							Size = UDim2.fromScale(0, 1),
							Font = playerNameFont,
							Text = self.props.name,
							TextSize = textSize,
							TextColor3 = self.props.textStyle.Color,
							TextTransparency = self.props.textStyle.Transparency,
							TextStrokeColor3 = self.props.textStyle.StrokeColor,
							TextStrokeTransparency = self.props.textStyle.StrokeTransparency,
							TextTruncate = Enum.TextTruncate.AtEnd,
							TextXAlignment = Enum.TextXAlignment.Left,
							BackgroundTransparency = 1,
						}),
					}),
			})
		else
			playerNameChildren["PlayerNameContainer"] = React.createElement(VerifiedBadges.EmojiWrapper, {
					emoji = if hasVerifiedBadge then VerifiedBadges.emoji.verified else "",
					anchorPoint = Vector2.new(0, 0.5),
					position = UDim2.fromScale(0, 0.5),
					mockIsEnrolled = true,
					verticalAlignment = Enum.VerticalAlignment.Center,
					automaticSize = Enum.AutomaticSize.X,
					size = UDim2.new(0, 0, 0, textSize),
				}, {
					PlayerName = React.createElement("TextLabel", {
						AutomaticSize = Enum.AutomaticSize.X,
						Size = UDim2.fromScale(0, 1),
						Font = playerNameFont,
						Text = self.props.name,
						TextSize = textSize,
						TextColor3 = self.props.textStyle.Color,
						TextTransparency = self.props.textStyle.Transparency,
						TextTruncate = Enum.TextTruncate.AtEnd,
						TextScaled = false,
						TextStrokeColor3 = self.props.textStyle.StrokeColor,
						TextStrokeTransparency = self.props.textStyle.StrokeTransparency,
						TextXAlignment = Enum.TextXAlignment.Left,
						BackgroundTransparency = 1,
					}),
				})
		end

		return React.createElement("Frame", {
			LayoutOrder = self.props.layoutOrder,
			Size = layoutValues.PlayerNameSize,
			BackgroundTransparency = 1,
		}, playerNameChildren)
	end)
end

local function PlayerNameTagContainer(props: Props)
	local name = usePlayerCombinedName(tostring(props.player.UserId), props.player.DisplayName)
	local hasVerifiedBadge = if FFlagEnableVerifiedBadgeStore then useVerifiedBadge(props.player) else nil

	return React.createElement(PlayerNameTag, Cryo.Dictionary.join(props, {
		name = name,
		hasVerifiedBadge = if FFlagEnableVerifiedBadgeStore then hasVerifiedBadge else nil,
	}))
end

if FFlagPlayerListReduceRerenders then
	return (React.memo(PlayerNameTagContainer, createShallowEqualAndTables({ "textFont" })) :: unknown) :: typeof(PlayerNameTagContainer)
end

return PlayerNameTagContainer
