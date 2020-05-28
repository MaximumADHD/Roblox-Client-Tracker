-- Remove file with FFlagFixInGameMenuMissingAssets

local CorePackages = game:GetService("CorePackages")

local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local Roact = InGameMenuDependencies.Roact
local UIBlox = InGameMenuDependencies.UIBlox
local t = InGameMenuDependencies.t

local withStyle = UIBlox.Core.Style.withStyle

local InGameMenu = script.Parent.Parent

local ThemedButton = require(script.Parent.ThemedButton)
local ThemedTextLabel = require(script.Parent.ThemedTextLabel)

local Assets = require(InGameMenu.Resources.Assets)
local divideTransparency = require(InGameMenu.Utility.divideTransparency)

local withLocalization = require(InGameMenu.Localization.withLocalization)

local ImageSetLabel = UIBlox.Core.ImageSet.Label

local MoreActionsMenu = Roact.PureComponent:extend("MoreActionsMenu")

local ICON_PADDING = 14
local ICON_SIZE = 36
local TEXT_END_PADDING = 25

MoreActionsMenu.validateProps = t.strictInterface({
	Position = t.UDim2,
	AnchorPoint = t.Vector2,
	Visible = t.boolean,
	menuWidth = t.UDim,
	actionHeight = t.UDim,
	actions = t.array(t.strictInterface({
		text = t.string,
		icon = t.union(t.string, t.table),
		onActivated = t.callback,
	})),
})

local function ActionButton(props)
	return withLocalization({
		text = props.text,
	})(function(localized)
		return withStyle(function(style)
			return Roact.createElement(ThemedButton, {
				Size = UDim2.new(UDim.new(1, 0), props.actionHeight),
				LayoutOrder = props.LayoutOrder,
				onActivated = props.onActivated,
				normalThemeKey = "BackgroundUIDefault",
				hoverThemeKey = "UIDefault",

				imageProps = props.imageProps,

				renderChildren = function(transparency, isHovered, isPressed)
					local iconColor = isHovered and style.Theme.IconOnHover or style.Theme.IconDefault
					local iconColor3 = iconColor.Color
					local iconTransparency = divideTransparency(iconColor.Transparency, isPressed and 2 or 1)

					return {
						Icon = Roact.createElement(ImageSetLabel, {
							BackgroundTransparency = 1,
							AnchorPoint = Vector2.new(0.5, 0.5),
							Size = UDim2.new(0, ICON_SIZE, 0, ICON_SIZE),
							Position = UDim2.new(0, ICON_PADDING*2, 0.5, 0),
							Image = props.icon,
							ImageColor3 = iconColor3,
							ImageTransparency = iconTransparency,
						}),

						TextLabel = Roact.createElement(ThemedTextLabel, {
							fontKey = "Header2",
							themeKey = "TextEmphasis",

							Position = UDim2.new(0, 56, 0, 0),
							Size = UDim2.new(1, -(TEXT_END_PADDING + ICON_PADDING*2 + ICON_SIZE), 1, 0),
							Text = localized.text,
							TextTruncate = Enum.TextTruncate.AtEnd,
							TextXAlignment = Enum.TextXAlignment.Left,
						}),
					}
				end,
			})
		end)
	end)
end

function MoreActionsMenu:renderActionsList()
	local actionsList = {}
	actionsList.Layout = Roact.createElement("UIListLayout", {
		FillDirection = Enum.FillDirection.Vertical,
		HorizontalAlignment = Enum.HorizontalAlignment.Center,
		SortOrder = Enum.SortOrder.LayoutOrder,
	})

	for index, action in ipairs(self.props.actions) do
		local imageProps = Assets.Images.WhiteSquare
		if #self.props.actions == 1 then
			imageProps = Assets.Images.RoundedRect
		elseif index == 1 then
			imageProps = Assets.Images.TopRoundedRect
		elseif index == #self.props.actions then
			imageProps = Assets.Images.BottomRoundedRect
		end

		actionsList["button" .. index] = Roact.createElement(ActionButton, {
			LayoutOrder = index,
			text = action.text,
			icon = action.icon,
			imageProps = imageProps,
			actionHeight = self.props.actionHeight,
			onActivated = action.onActivated,
		})
	end

	return actionsList
end

function MoreActionsMenu:render()
	local menuHeight = UDim.new(
		self.props.actionHeight.Scale * #self.props.actions,
		self.props.actionHeight.Offset * #self.props.actions
	)

	return Roact.createElement("Frame", {
		Size = UDim2.new(self.props.menuWidth, menuHeight),
		AnchorPoint = self.props.AnchorPoint,
		Position = self.props.Position,
		BackgroundTransparency = 1,
		Visible = self.props.Visible,
	}, self:renderActionsList())
end

return MoreActionsMenu