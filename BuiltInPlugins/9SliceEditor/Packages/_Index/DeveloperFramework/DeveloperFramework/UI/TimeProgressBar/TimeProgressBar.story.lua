local Framework = script.Parent.Parent.Parent
local Roact = require(Framework.Parent.Roact)
local UI = require(Framework.UI)

local TextLabel = require(Framework.UI.TextLabel)

local FFlagDevFrameworkTimeProgressBar = game:GetFastFlag("DevFrameworkTimeProgressBar")

if not FFlagDevFrameworkTimeProgressBar then
	return Roact.createElement(TextLabel, {
		AutomaticSize = Enum.AutomaticSize.XY,
		Text = "Please enable FFlagDevFrameworkTimeProgressBar",
		TextWrapped = true,
	})
end

local TimeProgressBar = UI.TimeProgressBar
return Roact.createElement(TimeProgressBar, {
	TotalTime = 10,
	Width = 200,
})
