local Framework = script:FindFirstAncestor("UI").Parent
local FFlagDevFrameworkIconButtonAsButton = require(Framework.SharedFlags.getFFlagDevFrameworkIconButtonAsButton)()
local DEPRECATED_Button = require(Framework.UI.Components.DEPRECATED_Button)

-- TODO STUDIOPLAT-34559: Remove "true" once All FLAGS ON tests in game-engine don't fail due to use of adaptor
if not FFlagDevFrameworkIconButtonAsButton or true then
	return DEPRECATED_Button
end

local Roact = require(Framework.Parent.Roact)
local React = if Framework.Parent:FindFirstChild("React") then require(Framework.Parent.React) else nil

local joinTags = require(Framework.Styling.joinTags)
local StyleModifier = require(Framework.Util.StyleModifier)
local supportsStyleSheets = require(Framework.Styling.supportsStyleSheets)
local Image = require(Framework.UI.Components.Image)

local Dash = require(Framework.Parent.Dash)
local join = Dash.join
local find = Dash.find
local keys = Dash.keys

local IconButton = require(Framework.UI.Components.IconButton)

local styleToTag = {
	Round = Dash.None,
	-- TODO [aleksandrsl 22.05.24]: Should we add a separate style for that?
	RoundSubtle = Dash.None,
	Close = "IconOnly",
	RoundPrimary = "PrimaryBrand",
	GameSettingsButton = Dash.None,
	GameSettingsPrimaryButton = "PrimaryBrand",
}

function mapStyle(style, isDisabled)
	-- Special case to mimic foreground images as an icon
	if typeof(style) == "table" and style.Foreground == Image then
		return join(
			{ LeftIcon = style.ForegroundStyle.Image, IconColor = style.ForegroundStyle.Color },
			if supportsStyleSheets then { [React.Tag] = "IconOnly" } else { Style = "IconOnly" }
		)
	end

	if supportsStyleSheets then
		return {
			[React.Tag] = joinTags(
				if styleToTag[style] == Dash.None then nil else styleToTag[style],
				(if isDisabled then "Disabled" else "")
			),
			Style = Dash.None,
		}
	end

	return { Style = if styleToTag[style] == Dash.None then Dash.None else styleToTag[style] }
end

function mapProps(props)
	local isDisabled = props.StyleModifier == StyleModifier.Disabled
	local style = mapStyle(props.Style, isDisabled)

	if not find(keys(styleToTag), function(key)
		return key == props.Style
	end) then
		print(`WARN: {props.Style} has no mapping`)
	end

	local leftIcon = if props.Style == "Close" then "rbxasset://textures/StudioSharedUI/clear.png" else props.Icon

	return join(props, {
		LeftIcon = leftIcon,
		TooltipText = props.Tooltip,
		Disabled = isDisabled,
		-- Support for old default styles of DEPRECATED_Button
		TextXAlignment = props.TextXAlignment or Enum.TextXAlignment.Center,
	}, style)
end

return function(props)
	return Roact.createElement(IconButton, mapProps(props))
end
