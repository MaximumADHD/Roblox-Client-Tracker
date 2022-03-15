local CorePackages = game:GetService("CorePackages")

local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local t = InGameMenuDependencies.t
local Roact = InGameMenuDependencies.Roact
local Cryo = InGameMenuDependencies.Cryo
local UIBlox = InGameMenuDependencies.UIBlox
local Placement = UIBlox.App.Navigation.Enum.Placement

local withSelectionCursorProvider = UIBlox.App.SelectionImage.withSelectionCursorProvider
local CursorKind = UIBlox.App.SelectionImage.CursorKind

local InGameMenu = script.Parent.Parent.Parent
local GameIcon = require(InGameMenu.Components.GameIcon)

local CORNER_RADIUS = UDim.new(0, 8)

local GetFFlagInGameMenuControllerDevelopmentOnly = require(InGameMenu.Flags.GetFFlagInGameMenuControllerDevelopmentOnly)

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

function GameIconButton:renderWithSelectionCursor(getSelectionCursor)
	return Roact.createElement("Frame", {
		AnchorPoint = self.props.anchorPoint,
		BackgroundTransparency = 1,
		Position = self.props.position,
		Size = UDim2.new(1,0,1,0),
		LayoutOrder = self.props.layoutOrder,
		SelectionImageObject = GetFFlagInGameMenuControllerDevelopmentOnly() and getSelectionCursor(CursorKind.RoundedRect) or nil,

	}, {
		Layout = Roact.createElement("UIListLayout", {
			HorizontalAlignment = Enum.HorizontalAlignment.Center,
		}),
		GameIconButton = Roact.createElement(GameIcon, {
			gameId = game.GameId,
			iconSize = 32,
			cornerRadius = CORNER_RADIUS,
		})
	})
end

function GameIconButton:render()
	if GetFFlagInGameMenuControllerDevelopmentOnly() then
		return withSelectionCursorProvider(function(getSelectionCursor)
			return self:renderWithSelectionCursor(getSelectionCursor)
		end)
	else
		return self:renderWithSelectionCursor()
	end
end

if GetFFlagInGameMenuControllerDevelopmentOnly() then
	return Roact.forwardRef(function(props, ref)
		return Roact.createElement(GameIconButton, Cryo.Dictionary.join(props, {
			forwardRef = ref,
		}))
	end)
end

return GameIconButton
