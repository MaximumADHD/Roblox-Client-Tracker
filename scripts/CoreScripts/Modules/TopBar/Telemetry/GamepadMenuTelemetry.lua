local TelemetryService = game:GetService("TelemetryService")
local AnalyticsService = game:GetService("RbxAnalyticsService")

local TopBar = script.Parent.Parent
local GamepadMenu = TopBar.Components.Presentation.GamepadMenu
local EnumGamepadMenuOptions = require(GamepadMenu.EnumGamepadMenuOptions)
local EngineFeatureTelemetryServicePlaySessionInfoEnabled = game:GetEngineFeature("TelemetryServicePlaySessionInfoEnabled")
local FIntGamepadMenuActionThrottleHundrethsPercent = game:DefineFastInt("GamepadMenuActionThrottleHundrethsPercent", 0)

export type EnumGamepadMenuOptions = EnumGamepadMenuOptions.GamepadMenuOptions
export type GamepadMenuActionProps = {
	menuOptionName:EnumGamepadMenuOptions, 
	isToggleOpen: boolean?,
	usedShortcut: boolean?,
}

type GamepadMenuTelemetryImpl = {
	__index: GamepadMenuTelemetryImpl,
	new: () -> GamepadMenuTelemetry,
	default: GamepadMenuTelemetry,
	onOptionSelected: (GamepadMenuActionProps) -> (),
}

export type GamepadMenuTelemetry = typeof(setmetatable({} :: {}, {} :: GamepadMenuTelemetryImpl))

local function mapProp<T, R>(prop: T?, map: (T?) -> R): R?
	return if prop ~= nil then map(prop) else nil
end

-- Core Module
local GamepadMenuTelemetry: GamepadMenuTelemetryImpl = {} :: GamepadMenuTelemetryImpl
GamepadMenuTelemetry.__index = GamepadMenuTelemetry

function GamepadMenuTelemetry.new(): GamepadMenuTelemetry
	local self = {}

	return setmetatable(self, GamepadMenuTelemetry)
end
function GamepadMenuTelemetry.onOptionSelected(props: GamepadMenuActionProps)

	local GamepadMenuActionConfig = {
		eventName = "coreui_gamepad_menu_action",
		backends = {
			"EventIngest",
		},
		throttlingPercentage = FIntGamepadMenuActionThrottleHundrethsPercent,
		lastUpdated = { 25, 4, 30 },
		description = "Event fired from the client every time GamepadMenu Options are Selected",
		links = "https://github.rbx.com/Roblox/proto-schemas/pull/5803",
	}

	local standardizedFields = { "addPlaceId", "addUniverseId", "addSessionInfo"}
	local customFields = {
		menu_option_name = props.menuOptionName,
		used_shortcut = mapProp(props.usedShortcut, tostring),
		is_toggle_open = mapProp(props.isToggleOpen, tostring),
	}
	if EngineFeatureTelemetryServicePlaySessionInfoEnabled then
		table.insert(standardizedFields, "addPlaySessionId")
	else
		standardizedFields = { "addPlaceId", "addUniverseId", "addSessionInfo"}
		customFields.playsessionid = AnalyticsService:GetPlaySessionId()
	end

	TelemetryService:LogEvent(GamepadMenuActionConfig, {standardizedFields = standardizedFields, customFields = customFields})
end

GamepadMenuTelemetry.default = GamepadMenuTelemetry.new()

return GamepadMenuTelemetry
