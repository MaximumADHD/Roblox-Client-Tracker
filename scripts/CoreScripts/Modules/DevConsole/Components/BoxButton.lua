local CorePackages = game:GetService("CorePackages")
local React = require(CorePackages.Packages.React)
local Roact = require(CorePackages.Roact)

local Constants = require(script.Parent.Parent.Constants)
local FONT = Constants.Font.MainWindowHeader
local TEXT_SIZE = Constants.DefaultFontSize.MainWindowHeader
local TEXT_COLOR = Constants.Color.Text
local BACKGROUND_COLOR = Constants.Color.UnselectedGray

export type Props = {
	text: string,
	size: UDim2?,
	pos: UDim2?,
	onClicked: (string) -> (),
}

local function BoxButton(props: Props)
	local text = props.text
	local size = props.size
	local pos = props.pos
	local onClicked = props.onClicked

	-- LUAU FIXME: CLI-58211
	local onActivated = React.useCallback(function()
		props.onClicked(props.text)
	end, {props.onClicked, props.text}::{any})

	return Roact.createElement("TextButton", {
		Text = text,
		TextSize = TEXT_SIZE,
		TextColor3 = TEXT_COLOR,
		Font = FONT,

		Size = size,
		Position = pos,

		AutoButtonColor = true,
		BackgroundColor3 = BACKGROUND_COLOR,
		BackgroundTransparency = 0,

		[Roact.Event.Activated] = onActivated,
	})
end

return BoxButton
