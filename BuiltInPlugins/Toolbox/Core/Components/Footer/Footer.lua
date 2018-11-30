--[[
	Footer of the toolbox

	Props:
		Backgrounds backgrounds
]]

local Plugin = script.Parent.Parent.Parent.Parent

local Libs = Plugin.Libs
local Roact = require(Libs.Roact)
local RoactRodux = require(Libs.RoactRodux)

local Constants = require(Plugin.Core.Util.Constants)
local ContextGetter = require(Plugin.Core.Util.ContextGetter)
local ContextHelper = require(Plugin.Core.Util.ContextHelper)

local getSettings = ContextGetter.getSettings
local withTheme = ContextHelper.withTheme
local withLocalization = ContextHelper.withLocalization

local FooterButton = require(Plugin.Core.Components.Footer.FooterButton)

local ChangeBackground = require(Plugin.Core.Actions.ChangeBackground)

local FFlagStudioLuaWidgetToolboxV2 = settings():GetFFlag("StudioLuaWidgetToolboxV2")

local Footer = Roact.PureComponent:extend("Footer")

function Footer:init(props)
	local settings = getSettings(self)

	self.inputEnded = function(rbx, input)
		if input.UserInputType == Enum.UserInputType.Focus then
			props.onBackgroundSelectorHoverEnded(settings, 0)
		end
	end

	self.onHoverStarted = function(index)
		props.onBackgroundSelectorHovered(settings, index)
	end

	self.onHoverEnded = function(index)
		props.onBackgroundSelectorHoverEnded(settings, index)
	end

	self.onClick = function(index)
		props.onBackgroundSelectorClicked(settings, index)
	end
end

function Footer:render()
	return withTheme(function(theme)
		return withLocalization(function(localization, localizedContent)
			local props = self.props

			local backgrounds = props.backgrounds
			local selectedBackgroundIndex = props.selectedBackgroundIndex
			local hoveredBackgroundIndex = props.hoveredBackgroundIndex

			local footerTheme = theme.footer

			local footerBgText = localizedContent.Footer.BGText
			local footerBgTextFont = Constants.FONT
			local footerBgTextSize = Constants.FONT_SIZE_SMALL
			local footerBgTextWidth = Constants.getTextSize(footerBgText, footerBgTextSize, footerBgTextFont).x

			local backgroundComponents = {
				UIListLayout = Roact.createElement("UIListLayout", {
					FillDirection = Enum.FillDirection.Horizontal,
					SortOrder = Enum.SortOrder.LayoutOrder,
					Padding = UDim.new(0, 5),
				}),

				BackgroundTextLabel = Roact.createElement("TextLabel", {
					Size = UDim2.new(0, FFlagStudioLuaWidgetToolboxV2 and footerBgTextWidth or 65, 1, 0),
					Text = footerBgText,
					Font = footerBgTextFont,
					TextSize = footerBgTextSize,
					TextXAlignment = Enum.TextXAlignment.Left,
					BackgroundTransparency = 1,

					TextColor3 = footerTheme.labelTextColor,
				}),
			}

			local translatedBackgrounds = localization:getLocalizedFooter(backgrounds)

			local backgroundButtonTextSize = Constants.BACKGROUND_BUTTON_FONT_SIZE
			local backgroundButtonTextFont = Constants.FONT

			-- Get the widest background name
			local backgroundButtonTextWidth = 32 -- Start with a min width
			if FFlagStudioLuaWidgetToolboxV2 then
				for _, background in ipairs(translatedBackgrounds) do
					backgroundButtonTextWidth = math.max(backgroundButtonTextWidth,
						Constants.getTextSize(background.name, backgroundButtonTextSize, backgroundButtonTextFont).x)
				end
			end

			for index, background in ipairs(translatedBackgrounds) do
				local name = background.name
				local color = background.color

				local isSelected = index == selectedBackgroundIndex
				local isHovered = index == hoveredBackgroundIndex

				backgroundComponents[color] = Roact.createElement(FooterButton, {
					index = index,
					name = name,

					isSelected = isSelected,
					isHovered = isHovered,

					textWidth = backgroundButtonTextWidth,

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
