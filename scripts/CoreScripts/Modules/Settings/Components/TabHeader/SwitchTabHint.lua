local CorePackages = game:GetService("CorePackages")
local UserInputService = game:GetService("UserInputService")

local React = require(CorePackages.Packages.React)
local ReactUtils = require(CorePackages.Packages.ReactUtils)
local Foundation = require(CorePackages.Packages.Foundation)

local HelpPage = require(CorePackages.Workspace.Packages.HelpPage)

local useEventConnection = ReactUtils.useEventConnection
local Icon = Foundation.Icon
local useTokens = Foundation.Hooks.useTokens
local HelpPageConstants = HelpPage.Constants.HELP_PAGE

type SwitchTabHintProps = {
	keycode: Enum.KeyCode,
}

local function isPreferredInputTypeGamepad()
	return UserInputService.PreferredInput == Enum.PreferredInput.Gamepad
end

local function isPlayStationGamepad()
	-- more maintainable to check one keycode than to convert each and map
	return UserInputService:GetStringForKeyCode(Enum.KeyCode.ButtonA) == "ButtonCross"
end

local function SwitchTabHint(props: SwitchTabHintProps, ref: React.Ref<GuiObject>?)
	local tokens = useTokens()
	local isPlayStation, setIsPlayStation = React.useState(isPlayStationGamepad())
	local isPreferredInputGamepad, setIsPreferredInputGamepad = React.useBinding(isPreferredInputTypeGamepad())
	useEventConnection(UserInputService:GetPropertyChangedSignal("PreferredInput"), function()
		setIsPreferredInputGamepad(isPreferredInputTypeGamepad())
		setIsPlayStation(isPlayStationGamepad())
	end, {})

	local icon = React.useMemo(function()
		if isPlayStation then
			return HelpPageConstants.GAMEPAD_ICON_MAP_PLAYSTATION[props.keycode]
		end
		return HelpPageConstants.GAMEPAD_ICON_MAP_XBOX[props.keycode]
	end, { props.keycode, isPlayStation } :: { unknown })

	return React.createElement(Icon, {
		name = icon,
		size = tokens.Size.Size_800,
		Visible = isPreferredInputGamepad,

		-- Pass through props
		ref = ref,
	})
end

return React.memo(React.forwardRef(SwitchTabHint))
