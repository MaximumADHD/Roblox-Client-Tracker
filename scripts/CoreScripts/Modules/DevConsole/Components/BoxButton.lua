local CorePackages = game:GetService("CorePackages")
local React = require(CorePackages.Packages.React)
local Roact = require(CorePackages.Packages.Roact)

local Constants = require(script.Parent.Parent.Constants)
local FONT = Constants.Font.MainWindowHeader
local TEXT_SIZE = Constants.DefaultFontSize.MainWindowHeader
local TEXT_COLOR = Constants.Color.Text
local BACKGROUND_COLOR = Constants.Color.UnselectedGray
local INACTIVE_COLOR = Constants.Color.InactiveBox

export type Props = {
	text: string,
	size: UDim2?,
	pos: UDim2?,
	onClicked: (string) -> (),
	enabled: boolean?,
}

local function BoxButton(props: Props)
	local text = props.text
	local size = props.size
	local pos = props.pos
	local onClicked = props.onClicked
	local enabled = if typeof(props.enabled) == "boolean" then props.enabled else true -- Default to true

	-- LUAU FIXME: CLI-58211
	local onActivated = React.useCallback(function()
		props.onClicked(props.text)
	end, { props.onClicked, props.text } :: { any })

	return Roact.createElement("TextButton", {
		Text = text,
		TextSize = TEXT_SIZE,
		TextColor3 = TEXT_COLOR,
		Font = FONT,

		Size = size,
		Position = pos,

		AutoButtonColor = enabled,
		BackgroundColor3 = if enabled then BACKGROUND_COLOR else INACTIVE_COLOR,
		Active = enabled,
		BackgroundTransparency = 0,

		[Roact.Event.Activated] = onActivated,
	})
end

return BoxButton
