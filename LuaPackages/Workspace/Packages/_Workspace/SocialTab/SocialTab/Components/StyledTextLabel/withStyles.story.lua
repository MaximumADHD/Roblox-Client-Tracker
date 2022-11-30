local StyledTextLabel = require(script.Parent)
local SocialTab = script:FindFirstAncestor("SocialTab")
local dependencies = require(SocialTab.dependencies)

local llama = dependencies.llama
local Roact = dependencies.Roact
local UIBlox = dependencies.UIBlox
local withStyle = UIBlox.Style.withStyle

return function(props)
	return withStyle(function(style)
		return Roact.createElement(
			StyledTextLabel,
			llama.Dictionary.join({
				BackgroundStyle = style.Theme.BackgroundMuted,
				FontStyle = style.Font.TextMuted,
				Size = UDim2.new(0, 500, 0, 100),
				Text = "Hey hows it going?",
				TextStyle = style.Theme.TextEmphasis,
			}, props or {})
		)
	end)
end
