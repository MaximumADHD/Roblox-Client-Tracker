local CorePackages = game:GetService("CorePackages")

local Roact = require(CorePackages.Roact)
local RoactRodux = require(CorePackages.RoactRodux)
local t = require(CorePackages.Packages.t)

local Components = script.Parent.Parent
local Connection = Components.Connection
local LayoutValues = require(Connection.LayoutValues)
local WithLayoutValues = LayoutValues.WithLayoutValues

local PlayerList = Components.Parent
local isDisplayNameEnabled = require(PlayerList.isDisplayNameEnabled)

local PlayerNameTag = Roact.PureComponent:extend("PlayerNameTag")

PlayerNameTag.validateProps = t.strictInterface({
	player = t.instanceIsA("Player"),
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

	subjectToChinaPolicies = t.boolean,
})

function PlayerNameTag:render()
	return WithLayoutValues(function(layoutValues)
		local playerNameFont = self.props.textFont.Font
		local textSize = self.props.textFont.Size

		local playerName
		if isDisplayNameEnabled(self.props.subjectToChinaPolicies) then
			playerName = self.props.player.DisplayName
		else
			playerName = self.props.player.Name
		end

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
			Text = playerName,
			TextTruncate = Enum.TextTruncate.AtEnd,
		})
	end)
end

local function mapStateToProps(state)
	return {
		subjectToChinaPolicies = state.displayOptions.subjectToChinaPolicies,
	}
end

return RoactRodux.connect(mapStateToProps, nil)(PlayerNameTag)