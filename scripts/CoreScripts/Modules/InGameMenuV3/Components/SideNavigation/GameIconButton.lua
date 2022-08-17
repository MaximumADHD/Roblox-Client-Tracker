--!nonstrict
local CorePackages = game:GetService("CorePackages")

local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local t = InGameMenuDependencies.t
local Roact = InGameMenuDependencies.Roact
local Cryo = InGameMenuDependencies.Cryo
local UIBlox = InGameMenuDependencies.UIBlox
local Placement = UIBlox.App.Navigation.Enum.Placement

local withSelectionCursorProvider = UIBlox.App.SelectionImage.withSelectionCursorProvider
local CursorKind = UIBlox.App.SelectionImage.CursorKind
local withAnimation = UIBlox.Core.Animation.withAnimation

local InGameMenu = script.Parent.Parent.Parent
local GameIcon = require(InGameMenu.Components.GameIcon)

local CORNER_RADIUS = UDim.new(0, 8)

local GameIconButton = Roact.PureComponent:extend("GameIconButton")

GameIconButton.validateProps = t.strictInterface({
	anchorPoint = t.optional(t.Vector2),
	position = t.optional(t.UDim2),
	layoutOrder = t.optional(t.integer),
	placement = t.optional(Placement.isEnumValue),
	hovered = t.optional(t.boolean),
	selected = t.optional(t.boolean),
	pressed = t.optional(t.boolean),
	badgeValue = t.optional(t.union(t.number, t.string)),
})

local SPRING_OPTIONS = {
	frequency = 3,
}

function GameIconButton:renderWithSelectionCursor(getSelectionCursor)

	local position = self.props.position or UDim2.new()
	local positionX = position.X.Offset;
	if self.props.hovered then
		positionX = positionX + 4;
	end

	return withAnimation({
		positionX = positionX,
	}, function(values)
		return Roact.createElement("Frame", {
			AnchorPoint = self.props.anchorPoint,
			BackgroundTransparency = 1,
			Position = UDim2.new(position.X.Scale, math.floor(values.positionX + 0.5),
								 position.Y.Scale, position.Y.Offset),
			Size = UDim2.new(1,0,1,0),
			LayoutOrder = self.props.layoutOrder,
			SelectionImageObject = getSelectionCursor(CursorKind.RoundedRect) or nil,
		}, {
			Highlight = Roact.createElement("Frame", {
				Size = UDim2.new(0,29,0,29),
				Position = UDim2.new(0.5,0,0.5,0),
				AnchorPoint = Vector2.new(0.5, 0.5),
				Visible = self.props.selected,
				BackgroundTransparency = 1,
			}, {
				UICorner = Roact.createElement("UICorner", {
					CornerRadius = CORNER_RADIUS,
				}),
				UIStroke = Roact.createElement("UIStroke", {
					Thickness = 1,
					Color = Color3.new(1, 1, 1),
				}) or nil,
			}),
			GameIconButton = Roact.createElement(GameIcon, {
				gameId = game.GameId,
				iconSize = 24,
				cornerRadius = CORNER_RADIUS,
				Position = UDim2.new(0.5,0,0.5,0),
				AnchorPoint = Vector2.new(0.5, 0.5),
			})
		})
	end, SPRING_OPTIONS)
end

function GameIconButton:render()
	return withSelectionCursorProvider(function(getSelectionCursor)
		return self:renderWithSelectionCursor(getSelectionCursor)
	end)
end

return Roact.forwardRef(function(props, ref)
	return Roact.createElement(GameIconButton, Cryo.Dictionary.join(props, {
		forwardRef = ref,
	}))
end)
