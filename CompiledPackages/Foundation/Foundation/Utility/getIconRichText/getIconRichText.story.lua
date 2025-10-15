local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local BuilderIcons = require(Packages.BuilderIcons)
local IconName = BuilderIcons.Icon
local React = require(Packages.React)
local Text = require(Foundation.Components.Text)
local useTokens = require(Foundation.Providers.Style.useTokens)
local getIconRichText = require(Foundation.Utility.getIconRichText)

return {
	summary = "Text",
	stories = {
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
	},
}
