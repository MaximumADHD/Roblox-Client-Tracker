--[[
	This is a temporary icon button until the entire side nav is replaced by uiBlox System Bar
]]

local CorePackages = game:GetService("CorePackages")

local InGameMenuDependencies = require(CorePackages.Packages.InGameMenuDependencies)
local t = InGameMenuDependencies.t
local Roact = InGameMenuDependencies.Roact
local UIBlox = InGameMenuDependencies.UIBlox

local ImageSetButton = UIBlox.Core.ImageSet.ImageSetButton
local Images = UIBlox.App.ImageSet.Images
local Foundation = require(CorePackages.Packages.Foundation)
local FFlagCoreUiMigrateUIBloxToFoundation = require(CorePackages.Workspace.Packages.SharedFlags).FFlagCoreUiMigrateUIBloxToFoundation

local withSelectionCursorProvider = if FFlagCoreUiMigrateUIBloxToFoundation
	then Foundation.UNSTABLE.withCursorMigration
	else UIBlox.App.SelectionImage.withSelectionCursorProvider
local CursorKind = if FFlagCoreUiMigrateUIBloxToFoundation
	then Foundation.Enums.CursorType
	else UIBlox.App.SelectionImage.CursorKind

local Image = Foundation.Image

local HOME_ICON_ON = if FFlagCoreUiMigrateUIBloxToFoundation then "icons/menu/home_on" else Images["icons/menu/home_on"]
local HOME_ICON_OFF = if FFlagCoreUiMigrateUIBloxToFoundation
	then "icons/menu/home_off"
	else Images["icons/menu/home_off"]

local HomeButton = Roact.PureComponent:extend("HomeButton")

HomeButton.validateProps = t.strictInterface({
	on = t.optional(t.boolean),
	anchorPoint = t.optional(t.Vector2),
	position = t.optional(t.UDim2),
	layoutOrder = t.optional(t.integer),
	onActivated = t.callback,
})

HomeButton.defaultProps = {
	on = false,
}

function HomeButton:renderWithSelectionCursor(getSelectionCursor)
	local icon = self.props.on and HOME_ICON_ON or HOME_ICON_OFF
	return Roact.createElement("Frame", {
		AnchorPoint = self.props.anchorPoint,
		BackgroundTransparency = 1,
		Position = self.props.position,
		Size = UDim2.fromOffset(64, 64),
		LayoutOrder = self.props.layoutOrder,
	}, {
		HomeButton = if FFlagCoreUiMigrateUIBloxToFoundation
			then Roact.createElement(Image, {
				Image = icon,
				tag = "position-center-center anchor-center-center size-800",
				backgroundStyle = { Transparency = 1 },
				selection = { SelectionImageObject = getSelectionCursor(CursorKind.RoundedRect) },
				onActivated = self.props.onActivated,
			})
			else Roact.createElement(ImageSetButton, {
				AnchorPoint = Vector2.new(0.5, 0.5),
				BackgroundTransparency = 1,
				Image = icon,
				Position = UDim2.fromScale(0.5, 0.5),
				Size = UDim2.fromOffset(32, 32),
				SelectionImageObject = getSelectionCursor(CursorKind.RoundedRect),
				[Roact.Event.Activated] = self.props.onActivated,
			}),
	})
end

function HomeButton:render()
	return withSelectionCursorProvider(function(getSelectionCursor)
		return self:renderWithSelectionCursor(getSelectionCursor)
	end)
end

return HomeButton
