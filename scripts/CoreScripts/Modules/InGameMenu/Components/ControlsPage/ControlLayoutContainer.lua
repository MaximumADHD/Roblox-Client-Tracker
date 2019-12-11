local CorePackages = game:GetService("CorePackages")

local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local Roact = InGameMenuDependencies.Roact
local RoactRodux = InGameMenuDependencies.RoactRodux
local UIBlox = InGameMenuDependencies.UIBlox
local t = InGameMenuDependencies.t

local withStyle = UIBlox.Core.Style.withStyle

local InGameMenu = script.Parent.Parent.Parent

local GlobalConfig = require(InGameMenu.GlobalConfig)

local ThemedTextLabel = require(script.Parent.Parent.ThemedTextLabel)
local Divider = require(script.Parent.Parent.Divider)
-- local KeyLabel = require(script.Parent.KeyLabel)

local SetCurrentPage = require(InGameMenu.Actions.SetCurrentPage)

local withLocalization = require(InGameMenu.Localization.withLocalization)

local Assets = require(InGameMenu.Resources.Assets)
local Constants = require(InGameMenu.Resources.Constants)

local ImageSetButton = UIBlox.Core.ImageSet.Button
local ImageSetLabel = UIBlox.Core.ImageSet.Label

local HEADER_HEIGHT = 132

local HEADER_SIDE_PADDING = 95

local HEADER_CONTENT_Y_CENTER = 100

local validateProps = t.strictInterface({
	titleText = t.string,
	[Roact.Children] = t.optional(t.table),
	onClosed = t.callback,
})

local function ControlLayoutContainer(props)
	if GlobalConfig.propValidation then
		assert(validateProps(props))
	end

	return withLocalization({
		titleText = props.titleText,
	})(function(localized)
		return withStyle(function(style)
			return Roact.createElement("Frame", {
				Size = UDim2.new(1, 0, 1, 0),
				BackgroundColor3 = style.Theme.Overlay.Color,
				BackgroundTransparency = style.Theme.Overlay.Transparency,
				Active = true,
			}, {

				PageContent = Roact.createElement("Frame", {
					BackgroundTransparency = 1,
					Size = UDim2.new(1, 0, 1, -HEADER_HEIGHT),
					Position = UDim2.new(0, 0, 0, HEADER_HEIGHT),
					ClipsDescendants = true
				}, props[Roact.Children]),

				HeaderContainer = Roact.createElement("Frame", {
					Size = UDim2.new(1, 0, 0, HEADER_HEIGHT),
					BackgroundTransparency = 1,
				}, {
					Padding = Roact.createElement("UIPadding", {
						PaddingLeft = UDim.new(0, HEADER_SIDE_PADDING),
						PaddingRight = UDim.new(0, HEADER_SIDE_PADDING),
					}),
					CloseButton = Roact.createElement(ImageSetButton, {
						AnchorPoint = Vector2.new(0, 0.5),
						Position = UDim2.new(0, 0, 0, HEADER_CONTENT_Y_CENTER),

						Size = UDim2.new(0, 36, 0, 36),
						Image = Assets.Images.CloseModal,
						BackgroundTransparency = 1,

						[Roact.Event.Activated] = props.onClosed,
					}),
					HeaderTextLabel = Roact.createElement(ThemedTextLabel, {
						fontKey = "Header1",
						themeKey = "TextEmphasis",
						Size = UDim2.new(0, 250, 0, 28),
						AnchorPoint = Vector2.new(0.5, 0.5),
						Position = UDim2.new(0.5, 0, 0, HEADER_CONTENT_Y_CENTER),
						Text = localized.titleText,
					}),
					HeaderDivider = Roact.createElement(Divider, {
						Size = UDim2.new(1, 0, 0, 2),
						AnchorPoint = Vector2.new(0.5, 1),
						Position = UDim2.new(0.5, 0, 1, 0),
					}),
					-- Yale wanted to keep this around, unsure if we're going to use it or not
					-- CloseButtonLabel = Roact.createElement(KeyLabel, {
					-- 	Position = UDim2.new(0, 36, 0, 0),
					-- 	input = Enum.KeyCode.Escape,
					-- }),
				}),

				RadialGlowBig = Roact.createElement(ImageSetLabel, {
					BackgroundTransparency = 1,
					Image = Assets.Images.RadialGlow,
					AnchorPoint = Vector2.new(0.5, 0.5),
					Position = UDim2.new(0.5, 0, 0.5, 0),

					-- Renders as a square based off of screen width
					SizeConstraint = Enum.SizeConstraint.RelativeXX,
					Size = UDim2.new(1, 0, 1, 0),
				}),
				RadialGlowSquashed = Roact.createElement(ImageSetLabel, {
					BackgroundTransparency = 1,
					Image = Assets.Images.RadialGlow,
					AnchorPoint = Vector2.new(0.5, 0.5),
					Position = UDim2.new(0.5, 0, 1, 0),

					-- Renders with height always at 60% of width
					SizeConstraint = Enum.SizeConstraint.RelativeXX,
					Size = UDim2.new(1, 0, 0.6, 0),
				})
			})
		end)
	end)
end

return RoactRodux.UNSTABLE_connect2(
	nil,
	function(dispatch)
		return {
			onClosed = function()
				dispatch(SetCurrentPage(Constants.defaultPageKey))
			end
		}
	end
)(ControlLayoutContainer)