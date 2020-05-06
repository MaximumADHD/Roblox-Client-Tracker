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

local function NoResultsDetail(props)
	assert(t.interface({
		content = t.interface({
			TextLine1 = t.string,
			TextLine2 = t.string,
			LinkText = t.string,
		}),
		onLinkActivated = t.callback
	})(props))

	return withTheme(function(theme)
		local fontSize = Constants.FONT_SIZE_MEDIUM

		local content = props.content

		local position = props.Position or UDim2.new(0, 0, 0, 0)
		local size = UDim2.new(1, 0, 0, fontSize * 2)
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
			onLinkActivated = props.onLinkActivated
		}

		return Roact.createElement("Frame", {
			Position = position,
			Size = size,
			BackgroundTransparency = 1,
			BorderSizePixel = 0,
			ZIndex = zindex,
			Visible = visible,
		}, {
			Roact.createElement(TextWithInlineLink, Cryo.Dictionary.join({
				Position = UDim2.new(0, 0, 0, 0),
				text = content.TextLine1,
			}, textWithInlineLinkProps)),
			Roact.createElement(TextWithInlineLink, Cryo.Dictionary.join({
				Position = UDim2.new(0, 0, 0, fontSize),
				text = content.TextLine2,
			}, textWithInlineLinkProps))
		})
	end)
end

return NoResultsDetail
