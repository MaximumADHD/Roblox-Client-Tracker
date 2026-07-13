local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local BuilderIcons = require(Packages.BuilderIcons)
local IconName = BuilderIcons.Icon
local React = require(Packages.React)
local Text = require(Foundation.Components.Text)
local getIconRichText = require(Foundation.Utility.getIconRichText)
local useTokens = require(Foundation.Providers.Style.useTokens)

local function PlaygroundStory(props)
	local tokens = useTokens()
	local controls = props.controls
	local balance = getIconRichText(IconName.Robux)
	local text = if controls.useCustomColor
		then `Your balance is <b><font color="#{tokens.Color.Content.Emphasis.Color3:ToHex()}">{balance} 200</font></b>`
		else `Your balance is {balance} 200`

	return React.createElement(Text, {
		Text = text,
		fontStyle = {
			FontSize = controls.textSize,
		},
		RichText = true,
		tag = "auto-xy content-default",
	})
end

return {
	summary = "Text",
	stories = {
		{
			name = "Playground",
			story = PlaygroundStory :: unknown,
		},
		{
			name = "Rich text icon",
			story = function(props)
				return React.createElement(Text, {
					Text = `Your balance is {getIconRichText(IconName.Robux)} 200`,
					fontStyle = {
						FontSize = props.controls.textSize,
					},
					RichText = true,
					tag = "auto-xy content-default",
				})
			end,
		},
		{
			name = "Rich text icon, custom color",
			story = function(props)
				local tokens = useTokens()
				local emphasisColor = tokens.Color.Content.Emphasis.Color3
				return React.createElement(Text, {
					Text = `Your balance is <b><font color="#{emphasisColor:ToHex()}">{getIconRichText(IconName.Robux)} 200</font></b>`,
					fontStyle = {
						FontSize = props.controls.textSize,
					},
					RichText = true,
					tag = "auto-xy content-default",
				})
			end,
		},
	},
	controls = {
		textSize = 24,
		useCustomColor = false,
	},
}
