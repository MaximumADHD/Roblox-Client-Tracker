local FFlagToolboxUseDevFrameworkTextWithInlineLink = game:GetFastFlag("ToolboxUseDevFrameworkTextWithInlineLink")
local FFlagToolboxRemoveWithThemes = game:GetFastFlag("ToolboxRemoveWithThemes")
local Plugin = script.Parent.Parent.Parent

local FFlagToolboxDeduplicatePackages = game:GetFastFlag("ToolboxDeduplicatePackages")
local Libs
if FFlagToolboxDeduplicatePackages then
	Libs = Plugin.Packages
else
	Libs = Plugin.Libs
end
local Roact = require(Libs.Roact)
local Cryo = require(Libs.Cryo)
local t = require(Libs.Framework).Util.Typecheck.t

local Constants = require(Plugin.Core.Util.Constants)
local ContextHelper = require(Plugin.Core.Util.ContextHelper)

local TextWithInlineLink
if FFlagToolboxUseDevFrameworkTextWithInlineLink then
	TextWithInlineLink = require(Libs.Framework).UI.TextWithInlineLink
else
	-- 2021/05/07 The following file is deprecated. Please Use TextWithInlineLink in Developer Framework Instead.
	TextWithInlineLink = require(Plugin.Core.Components.TextWithInlineLink)
end

local withTheme = ContextHelper.withTheme

local Framework = require(Libs.Framework)
local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext

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
			maxChildWidth = sizeX,
		})
	end
end

function NoResultsDetail:didMount()
	self.updateSize()
end

function NoResultsDetail:render()
	if FFlagToolboxRemoveWithThemes then
		return self:renderContent(nil)
	else
		return withTheme(function(theme)
			return self:renderContent(theme)
		end)
	end
end

function NoResultsDetail:renderContent(theme)
	local props = self.props
	assert(t.interface({
		content = t.interface({
			TextLine1 = t.string,
			TextLine2 = t.string,
			LinkText = t.string,
		}),
		onLinkClicked = t.callback,
	})(props))

	if FFlagToolboxRemoveWithThemes then
		theme = props.Stylizer
	end

	local fontSize = Constants.FONT_SIZE_MEDIUM

	local content = props.content

	local position = props.Position or UDim2.new(0, 0, 0, 0)
	local zindex = props.ZIndex or 0
	local visible = (props.Visible ~= nil and props.Visible) or (props.Visible == nil)
	local infoBannerTheme = theme.infoBanner

	local textWithInlineLinkProps
	if FFlagToolboxUseDevFrameworkTextWithInlineLink then
		textWithInlineLinkProps = {
			TextProps = {
				TextColor3 = infoBannerTheme.textColor,
				BackgroundTransparency = 1,
				Font = Constants.FONT,
				TextSize = fontSize,
				TextXAlignment = Enum.TextXAlignment.Center,
				TextYAlignment = Enum.TextYAlignment.Center,
				TextWrapped = true,
				ClipsDescendants = true,
			},
			LinkPlaceholder = LINK_PLACEHOLDER,
			LinkText = content.LinkText,
			OnLinkClicked = props.onLinkClicked,
			MaxWidth = self.state.maxChildWidth,
		}
	else
		textWithInlineLinkProps = {
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
			maxWidth = self.state.maxChildWidth,
		}
	end

	return Roact.createElement("Frame", {
		Position = position,
		Size = UDim2.new(1, 0, 1, 0),
		BackgroundTransparency = 1,
		ZIndex = zindex,
		Visible = visible,
		[Roact.Ref] = self.frameRef,
		[Roact.Change.AbsoluteSize] = self.updateSize,
	}, {
		Layout = Roact.createElement("UIListLayout", {
			SortOrder = Enum.SortOrder.LayoutOrder,
			FillDirection = Enum.FillDirection.Vertical,
			HorizontalAlignment = Enum.HorizontalAlignment.Center
		}),
		TextLine1 = Roact.createElement(TextWithInlineLink, Cryo.Dictionary.join({
			text = (not FFlagToolboxUseDevFrameworkTextWithInlineLink) and content.TextLine1 or nil,
			Text = FFlagToolboxUseDevFrameworkTextWithInlineLink and content.TextLine1 or nil,
			LayoutOrder = 1,
		}, textWithInlineLinkProps)),
		TextLine2 = Roact.createElement(TextWithInlineLink, Cryo.Dictionary.join({
			text = (not FFlagToolboxUseDevFrameworkTextWithInlineLink) and content.TextLine2 or nil,
			Text = FFlagToolboxUseDevFrameworkTextWithInlineLink and content.TextLine2 or nil,
			LayoutOrder = 2,
		}, textWithInlineLinkProps))
	})
end

if FFlagToolboxRemoveWithThemes then
	NoResultsDetail = withContext({
		Stylizer = ContextServices.Stylizer,
	})(NoResultsDetail)
end

return NoResultsDetail
