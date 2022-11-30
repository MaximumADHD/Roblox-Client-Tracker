local StyledTextLabel = require(script.Parent)
local SocialTab = script:FindFirstAncestor("SocialTab")
local dependencies = require(SocialTab.dependencies)

local Roact = dependencies.Roact
local UIBlox = dependencies.UIBlox
local withStyle = UIBlox.Style.withStyle

return function()
	return withStyle(function(style)
		return Roact.createElement(StyledTextLabel, {
			BackgroundStyle = style.Theme.SystemPrimaryDefault,
			BorderSizePixel = 3,
			Font = Enum.Font.GothamMedium,
			Size = UDim2.new(0, 400, 0, 100),
			Text = "This is a test message",
			TextColor3 = Color3.new(1, 0, 1),
			TextStyle = style.Theme.TextEmphasis,
			TextTruncate = Enum.TextTruncate.AtEnd,
			TextXAlignment = Enum.TextXAlignment.Center,
		})
	end)
end
