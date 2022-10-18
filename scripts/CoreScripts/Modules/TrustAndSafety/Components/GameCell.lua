--!nonstrict
local CorePackages = game:GetService("CorePackages")

local Roact = require(CorePackages.Roact)
local UIBlox = require(CorePackages.UIBlox)
local t = require(CorePackages.Packages.t)

local Cell = UIBlox.App.Table.Cell
local CursorKind = UIBlox.App.SelectionImage.CursorKind
local withSelectionCursorProvider = UIBlox.App.SelectionImage.withSelectionCursorProvider

local TnsModule = script.Parent.Parent
local Dependencies = require(TnsModule.Dependencies)
local GameIcon = require(Dependencies.GameIcon)
local ThemedTextLabel = require(Dependencies.ThemedTextLabel)
local withLocalization = require(Dependencies.withLocalization)

local CELL_HEIGHT = 72

local GameCell = Roact.PureComponent:extend("GameCell")

GameCell.validateProps = t.strictInterface({
	gameId = t.number,
	layoutOrder = t.optional(t.union(t.integer, t.table)),
	onActivated = t.optional(t.callback),
})

function GameCell:renderWithSelectionCursor(getSelectionCursor)
	local props = self.props
	return withLocalization({
		labelText = "CoreScripts.InGameMenu.Report.ReportExperience",
	})(function(localized)
		return Roact.createElement(Cell, {
			onActivated = props.onActivated,
			SelectionImageObject = getSelectionCursor(CursorKind.Square),
			layoutOrder = props.layoutOrder,
			size = UDim2.new(1, 0, 0, CELL_HEIGHT),
			head = Roact.createElement("Frame", {
				BackgroundTransparency = 1,
				Size = UDim2.new(1, 0, 0, CELL_HEIGHT),
			}, {
				GameIcon = Roact.createElement(GameIcon, {
					gameId = props.gameId,
					iconSize = 48,
					cornerRadius = UDim.new(0, 8),
					Position = UDim2.new(0, 0, 0.5, 0),
					AnchorPoint = Vector2.new(0, 0.5),
				}),
				Label = Roact.createElement(ThemedTextLabel, {
					fontKey = "Header2",
					themeKey = "TextEmphasis",
					BackgroundTransparency = 1,
					AnchorPoint = Vector2.new(0, 0.5),
					AutomaticSize = Enum.AutomaticSize.XY,
					Text = localized.labelText,
					TextXAlignment = Enum.TextXAlignment.Left,
					Position = UDim2.new(0, 54, 0.5, 0),
				}),
			}),
			tail = Roact.createElement("Frame", {
				-- set empty tail to make sure the cell is interactable
				AnchorPoint = Vector2.new(1, 0),
				BackgroundTransparency = 1,
				Position = UDim2.new(1, 0, 0, 0),
				Size = UDim2.new(0, 0, 1, 0),
			}),
		})
	end)
end

function GameCell:render()
	return withSelectionCursorProvider(function(getSelectionCursor)
		return self:renderWithSelectionCursor(getSelectionCursor)
	end)
end

return GameCell
