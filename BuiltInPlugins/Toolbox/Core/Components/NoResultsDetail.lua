local Plugin = script.Parent.Parent.Parent

local Libs = Plugin.Libs
local Roact = require(Libs.Roact)
local Cryo = require(Libs.Cryo)
local t = require(Libs.Framework.Util.Typecheck.t)

local Constants = require(Plugin.Core.Util.Constants)
local ContextHelper = require(Plugin.Core.Util.ContextHelper)

local TextWithInlineLink = require(Plugin.Core.Components.TextWithInlineLink)

local withTheme = ContextHelper.withTheme

local LINK_PLACEHOLDER = '{link}'

local NoResultsDetail = Roact.PureComponent:extend("NoResultsDetail")

function NoResultsDetail:init()
	self.frameRef = Roact.createRef()
	self.state = {
		maxChildWidth = 0
	}
	self.updateSize = function()
		local frame = self.frameRef.current
		local sizeX = frame.AbsoluteSize.x

		self:setState({
			maxChildWidth = sizeX
		})
	end
end

function NoResultsDetail:didMount()
	self.updateSize()
end

function NoResultsDetail:render()
	local props = self.props
	assert(t.interface({
		content = t.interface({
			TextLine1 = t.string,
			TextLine2 = t.string,
			LinkText = t.string,
		}),
		onLinkClicked = t.callback
	})(props))

	return withTheme(function(theme)
		local fontSize = Constants.FONT_SIZE_MEDIUM

		local content = props.content

		local position = props.Position or UDim2.new(0, 0, 0, 0)
		local zindex = props.ZIndex or 0
		local visible = (props.Visible ~= nil and props.Visible) or (props.Visible == nil)
		local infoBannerTheme = theme.infoBanner

		local textWithInlineLinkProps = {
			textProps = {
				TextColor3 = infoBannerTheme.textColor,
				BackgroundTransparency = 1,
				Font = Constants.FONT,
				TextSize = fontSize,
				TextXAlignment = Enum.TextXAlignment.Center,
				TextYAlignment = Enum.TextYAlignment.Center,
				TextWrapped = true,
				ClipsDescendants = true,
			},

			linkPlaceholder = LINK_PLACEHOLDER,
			linkText = content.LinkText,
			onLinkClicked = props.onLinkClicked,
			maxWidth = self.state.maxChildWidth
		}

		return Roact.createElement("Frame", {
			Position = position,
			Size = UDim2.new(1, 0, 1, 0),
			BackgroundTransparency = 1,
			ZIndex = zindex,
			Visible = visible,
			[Roact.Ref] = self.frameRef,
			[Roact.Change.AbsoluteSize] = self.updateSize
		}, {
			Layout = Roact.createElement("UIListLayout", {
				SortOrder = Enum.SortOrder.LayoutOrder,
				FillDirection = Enum.FillDirection.Vertical,
				HorizontalAlignment = Enum.HorizontalAlignment.Center
			}),
			TextLine1 = Roact.createElement(TextWithInlineLink, Cryo.Dictionary.join({
				text = content.TextLine1,
			}, textWithInlineLinkProps)),
			TextLine2 = Roact.createElement(TextWithInlineLink, Cryo.Dictionary.join({
				text = content.TextLine2,
			}, textWithInlineLinkProps))
		})
	end)
end

return NoResultsDetail
