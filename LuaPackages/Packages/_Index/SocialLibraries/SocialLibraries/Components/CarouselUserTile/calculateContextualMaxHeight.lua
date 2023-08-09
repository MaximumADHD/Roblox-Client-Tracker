--! DEPRECATED please use the version found in LuaApps SocialCommon
local Constants = require(script.Parent.Constants)
local getTextHeight = require(script.Parent.getTextHeight)
local StyleTypes = require(script.Parent.StyleTypes)

type Config = {
	font: StyleTypes.Font,
	maxLinesNumber: number?,
	nameTopPadding: number?,
	contextualTopPadding: number?,
}

return function(config: Config)
	local nameTopPadding = config and config.nameTopPadding or Constants.NAME_TOP_PADDING
	local contextualTopPadding = config and config.contextualTopPadding or Constants.CONTEXTUAL_TOP_PADDING
	local numberOfLines = config and config.maxLinesNumber or Constants.LINES_MAX

	local font = config.font
	local displayName = getTextHeight("", font.CaptionHeader.Font, font.BaseSize * font.CaptionHeader.RelativeSize)
	local contextualInfoHeight = getTextHeight("", font.CaptionBody.Font, font.BaseSize * font.CaptionBody.RelativeSize) * numberOfLines

	return nameTopPadding + displayName + contextualTopPadding + contextualInfoHeight
end
