--[[
	Footer of the toolbox

	Props:
		Backgrounds backgrounds
]]

local Plugin = script.Parent.Parent.Parent.Parent

local CorePackages = game:GetService("CorePackages")
local Roact = require(CorePackages.Roact)
local RoactRodux = require(CorePackages.RoactRodux)

local Constants = require(Plugin.Core.Util.Constants)
local Images = require(Plugin.Core.Util.Images)
local MouseManager = require(Plugin.Core.Util.MouseManager)


local getSettings = require(Plugin.Core.Consumers.getSettings)
local withTheme = require(Plugin.Core.Consumers.withTheme)

local FooterButton = require(Plugin.Core.Components.Footer.FooterButton)

local ChangeBackground = require(Plugin.Core.Actions.ChangeBackground)

local Footer = Roact.PureComponent:extend("Footer")

function Footer:init(props)
	local settings = getSettings(self)

	self.inputEnded = function(rbx, input)
		if input.UserInputType == Enum.UserInputType.Focus then
			props.onBackgroundSelectorHoverEnded(settings, 0)
		end
	end

	self.onHoverStarted = function(index)
		MouseManager:pushIcon(Images.CURSOR_POINTING_HAND)
		props.onBackgroundSelectorHovered(settings, index)
	end

	self.onHoverEnded = function(index)
		MouseManager:clearIcons()
		props.onBackgroundSelectorHoverEnded(settings, index)
	end

	self.onClick = function(index)
		props.onBackgroundSelectorClicked(settings, index)
	end
end

function Footer:render()
	return withTheme(function(theme)
		local props = self.props

		local backgrounds = props.backgrounds
		local selectedBackgroundIndex = props.selectedBackgroundIndex
		local hoveredBackgroundIndex = props.hoveredBackgroundIndex

		local footerTheme = theme.footer

		local backgroundComponents = {
			UIListLayout = Roact.createElement("UIListLayout", {
				FillDirection = Enum.FillDirection.Horizontal,
				SortOrder = Enum.SortOrder.LayoutOrder,
				Padding = UDim.new(0, 5),
			}),

			BackgroundTextLabel = Roact.createElement("TextLabel", {
				Size = UDim2.new(0, 65, 1, 0),
				Text = "Background:",
				Font = Constants.FONT,
				TextSize = Constants.FONT_SIZE_SMALL,
				TextXAlignment = Enum.TextXAlignment.Left,
				BackgroundTransparency = 1,

				TextColor3 = footerTheme.labelTextColor,
			}),
		}

		for index, background in ipairs(backgrounds) do
			local name = background.name

			local isSelected = index == selectedBackgroundIndex
			local isHovered = index == hoveredBackgroundIndex

			backgroundComponents[name] = Roact.createElement(FooterButton, {
				index = index,
				name = name,

				isSelected = isSelected,
				isHovered = isHovered,

				onHoverStarted = self.onHoverStarted,
				onHoverEnded = self.onHoverEnded,
				onClick = self.onClick,
			})
		end

		return Roact.createElement("ImageButton", {
			AnchorPoint = Vector2.new(0, 1),
			Position = UDim2.new(0, 0, 1, 0),
			Size = UDim2.new(1, 0, 0, Constants.FOOTER_HEIGHT),

			BackgroundColor3 = footerTheme.backgroundColor,
			BorderColor3 = footerTheme.borderColor,

			ZIndex = 2,
			AutoButtonColor = false,

			[Roact.Event.InputEnded] = self.inputEnded,
		}, {
			UIPadding = Roact.createElement("UIPadding", {
				PaddingBottom = UDim.new(0, 0),
				PaddingLeft = UDim.new(0, 6),
				PaddingRight = UDim.new(0, 6),
				PaddingTop = UDim.new(0, 0),
			}),

			Frame = Roact.createElement("ImageButton", {
				AnchorPoint = Vector2.new(0, 0.5),
				Position = UDim2.new(0, 0, 0.5, 0),
				Size = UDim2.new(1, 0, 0, 24),
				BackgroundTransparency = 1,
				AutoButtonColor = false,
			}, backgroundComponents),
		})
	end)
end

local function mapStateToProps(state, props)
	state = state or {}

	local pageInfo = state.pageInfo or {}

	return {
		selectedBackgroundIndex = pageInfo.selectedBackgroundIndex or 1,
		hoveredBackgroundIndex = pageInfo.hoveredBackgroundIndex or 0,
	}
end

local function mapDispatchToProps(dispatch)
	return {
		onBackgroundSelectorHovered = function(settings, index)
			dispatch(ChangeBackground(settings, index, false))
		end,

		onBackgroundSelectorHoverEnded = function(settings, index)
			dispatch(ChangeBackground(settings, 0, false))
		end,

		onBackgroundSelectorClicked = function(settings, index)
			dispatch(ChangeBackground(settings, index, true))
		end,
	}
end

return RoactRodux.UNSTABLE_connect2(mapStateToProps, mapDispatchToProps)(Footer)
