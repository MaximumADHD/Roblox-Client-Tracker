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
local createShallowEqualAndTables = require(PlayerList.createShallowEqualAndTables)
local FFlagPlayerListReduceRerenders = require(PlayerList.Flags.FFlagPlayerListReduceRerenders)

local PlayerNameTag = React.PureComponent:extend("PlayerNameTag")

PlayerNameTag.validateProps = t.strictInterface({
	player = playerInterface,
	isTitleEntry = t.boolean,
	isHovered = t.boolean,
	name = t.union(t.string, t.table),
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
			Text = self.props.name,
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

if FFlagPlayerListReduceRerenders then
	return (React.memo(PlayerNameTagContainer, createShallowEqualAndTables({ "textFont" })) :: unknown) :: typeof(PlayerNameTagContainer)
end

return PlayerNameTagContainer
