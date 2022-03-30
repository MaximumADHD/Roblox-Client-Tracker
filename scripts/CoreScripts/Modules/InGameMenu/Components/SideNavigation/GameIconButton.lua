local CorePackages = game:GetService("CorePackages")

local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local t = InGameMenuDependencies.t
local Roact = InGameMenuDependencies.Roact
local Cryo = InGameMenuDependencies.Cryo
local UIBlox = InGameMenuDependencies.UIBlox

local withSelectionCursorProvider = UIBlox.App.SelectionImage.withSelectionCursorProvider
local CursorKind = UIBlox.App.SelectionImage.CursorKind

local InGameMenu = script.Parent.Parent.Parent
local GameIcon = require(InGameMenu.Components.GameIcon)

local CORNER_RADIUS = UDim.new(0, 8)

local GameIconButton = Roact.PureComponent:extend("GameIconButton")

GameIconButton.validateProps = t.strictInterface({
	anchorPoint = t.optional(t.Vector2),
	position = t.optional(t.UDim2),
	layoutOrder = t.optional(t.integer),

	onActivated = t.callback,
	onSelectionGained = t.optional(t.callback),
	onSelectionLost = t.optional(t.callback),
	forwardRef = t.optional(t.table),
})

function GameIconButton:renderWithSelectionCursor(getSelectionCursor)
	return Roact.createElement("TextButton", {
		Text = "",
		AnchorPoint = self.props.anchorPoint,
		BackgroundTransparency = 1,
		Position = self.props.position,
		Size = UDim2.fromOffset(32, 32),
		LayoutOrder = self.props.layoutOrder,
		SelectionImageObject = getSelectionCursor(CursorKind.RoundedRect),

		[Roact.Event.Activated] = self.props.onActivated,
		[Roact.Event.SelectionGained] = self.props.onSelectionGained,
		[Roact.Event.SelectionLost] = self.props.onSelectionLost,
		[Roact.Ref] = self.props.forwardRef,
	}, {
		GameIconButton = Roact.createElement(GameIcon, {
			gameId = game.GameId,
			iconSize = 32,
			cornerRadius = CORNER_RADIUS,
		})
	})
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
