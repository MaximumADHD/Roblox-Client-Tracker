local Root = script:FindFirstAncestor("ChromeShared")

local AnalyticsService = game:GetService("RbxAnalyticsService")
local CorePackages = game:GetService("CorePackages")
local GuiService = game:GetService("GuiService")
local UserInputService = game:GetService("UserInputService")
local Players = game:GetService("Players")
local EngineFeatureRbxAnalyticsServiceExposePlaySessionId =
	game:GetEngineFeature("RbxAnalyticsServiceExposePlaySessionId")
local PlayerGui = (Players.LocalPlayer :: Player):FindFirstChildOfClass("PlayerGui")

local Cryo = require(CorePackages.Packages.Cryo)

local ChromeService = require(Root.Service)
local Constants = require(Root.Unibar.Constants)
local Types = require(Root.Service.Types)
local FFlagIntegrationsChromeShortcutTelemetry = require(Root.Parent.Flags.FFlagIntegrationsChromeShortcutTelemetry)

local Tracker = require(Root.Analytics.Tracker)

local TRACKER_NAME_WINDOW_SIZE_PREFIX = "window_size_"
local TRACKER_NAME_WINDOW_DEFAULT_POSITION_PREFIX = "window_dposition_"
local TRACKER_NAME_WINDOW_LAST_POSITION_PREFIX = "window_position_"
local TRACKER_NAME_WINDOW_DRAG_STATUS = "window_drag_"
local TRACKER_NAME_ICON_DRAG_STATUS = "icon_drag_"
local TRACKER_NAME_WINDOW_STATUS = "window_status_"
local TRACKER_NAME_WINDOW_TIME = "window_time_"

local SOURCE_NAME_UNKNOWN = "unknown"
local SOURCE_NAME_UNIBAR = "unibar"

local STATUS = {
	INACTIVE = 0,
	ACTIVE = 1,
}

local DRAG_STATUS = {
	NONE = 0,
	STARTED = 1,
	DRAGGED = 2,
}

export type ChromeAnalytics = {
	__index: ChromeAnalytics,
	default: ChromeAnalytics,
	new: () -> ChromeAnalytics,

	setScreenSize: (ChromeAnalytics, screenSize: Vector2) -> nil,
	setWindowDefaultPosition: (ChromeAnalytics, integrationId: Types.IntegrationId, windowPosition: Vector2) -> nil,

	onIconActivated: (ChromeAnalytics, integrationId: Types.IntegrationId, props: Types.ActivateProps?) -> nil,
	onIconTouchBegan: (ChromeAnalytics, integrationId: Types.IntegrationId) -> nil,
	onIconDrag: (ChromeAnalytics, integrationId: Types.IntegrationId) -> nil,
	onIconTouchEnded: (
		ChromeAnalytics,
		integrationId: Types.IntegrationId,
		windowPosition: Vector2,
		willReposition: boolean
	) -> nil,
	onWindowOpened: (ChromeAnalytics, integrationId: Types.IntegrationId) -> nil,
	onWindowClosed: (ChromeAnalytics, integrationId: Types.IntegrationId) -> nil,
	onWindowTouchBegan: (ChromeAnalytics, integrationId: Types.IntegrationId, windowPosition: Vector2) -> nil,
	onWindowDrag: (ChromeAnalytics, integrationId: Types.IntegrationId, windowPosition: Vector3) -> nil,
	onWindowTouchEnded: (
		ChromeAnalytics,
		integrationId: Types.IntegrationId,
		windowPosition: Vector2,
		willReposition: boolean
	) -> nil,
	onWindowResize: (ChromeAnalytics, integrationId: Types.IntegrationId, currentWindowSize: UDim2) -> nil,

	_target: string,
	_context: string,
	_defaultProps: any,
	_tracker: Tracker.Tracker,
	_sendEvent: (eventName: string, props: any) -> nil,
	_observeIntegration: (integrationId: Types.IntegrationId) -> nil,
	_resetWindowTrackers: (integrationId: Types.IntegrationId) -> nil,
	_defaultWindowTrackers: (integrationId: Types.IntegrationId) -> nil,
	_setWindowLastPosition: (integrationId: Types.IntegrationId, position: Vector2) -> nil,
	_calculateWindowAbsolutePosition: (startingPosition: UDim2, windowSize: UDim2) -> Vector2,
}

local ChromeAnalytics = {} :: ChromeAnalytics
ChromeAnalytics.__index = ChromeAnalytics

-- Returns properties that should be included in all events, which values need to be determined at the time of the event
local function getDynamicEventProps()
	local screenOrientation = "Unknown"
	if PlayerGui then
		screenOrientation = Constants.ANALYTICS.SCREEN_ORIENTATION_MAP[PlayerGui.CurrentScreenOrientation]
			or tostring(PlayerGui.CurrentScreenOrientation)
	end
	local lastUsedInputType = Constants.ANALYTICS.INPUT_TYPE_MAP[UserInputService:GetLastInputType()]
		or tostring(UserInputService:GetLastInputType())

	local props = {
		screen_orientation = screenOrientation,
		last_input_device = lastUsedInputType,
	}

	return props
end

local function getTrackerName(prefix: string, integrationId: Types.IntegrationId)
	return prefix .. integrationId
end

local function getIntegration(integrationId: Types.IntegrationId)
	return ChromeService:integrations()[integrationId]
end

local function getInteractionSource(integrationId: Types.IntegrationId)
	if ChromeService:withinCurrentSubmenu(integrationId) then
		return ChromeService:currentSubMenu():get()
	end
	if ChromeService:withinCurrentTopLevelMenu(integrationId) then
		return SOURCE_NAME_UNIBAR
	end
	return SOURCE_NAME_UNKNOWN
end

-- Documentation: https://roblox.atlassian.net/wiki/spaces/APEX/pages/2164425259/Chrome+Analytics
function ChromeAnalytics.new(): ChromeAnalytics
	local self = (
		setmetatable({
			_target = "client",
			_context = "chrome",
			_defaultProps = {
				screen_width = 0,
				screen_height = 0,
				universeid = tostring(game.GameId),
				placeid = tostring(game.PlaceId),
				sessionid = AnalyticsService:GetSessionId(),
				is_game_menu_opened = false,
			},
			_tracker = Tracker.new(),
		}, ChromeAnalytics) :: any
	) :: ChromeAnalytics

	if EngineFeatureRbxAnalyticsServiceExposePlaySessionId then
		self._defaultProps.playsessionid = AnalyticsService:GetPlaySessionId()
	end

	self._observeIntegration = function(integrationId: Types.IntegrationId)
		local integration = getIntegration(integrationId)
		if integration then
			if integration.windowSize then
				self._tracker:set(
					getTrackerName(TRACKER_NAME_WINDOW_SIZE_PREFIX, integrationId),
					integration.windowSize:get()
				)

				integration.windowSize:connect(function(newState: any)
					-- Window Size could also trigger with boolean when it changes
					if typeof(newState) ~= "UDim2" then
						return
					end

					local newWindowSize = integration.windowSize:get()
					local windowStatus = self._tracker:get(getTrackerName(TRACKER_NAME_WINDOW_STATUS, integrationId))
					local windowSizeTracker = getTrackerName(TRACKER_NAME_WINDOW_SIZE_PREFIX, integrationId)

					if windowStatus == STATUS.ACTIVE then
						local currentWindowSize: UDim2 = self._tracker:get(windowSizeTracker)
						-- Make sure we have already automatically sized the window before we fire the event
						if currentWindowSize then
							self:onWindowResize(integrationId, newWindowSize)
						end
						self._tracker:set(windowSizeTracker, newWindowSize)
					end
				end)
			end
		end
	end

	self._resetWindowTrackers = function(integrationId: Types.IntegrationId)
		self._tracker:reset(getTrackerName(TRACKER_NAME_WINDOW_DEFAULT_POSITION_PREFIX, integrationId))
		self._tracker:reset(getTrackerName(TRACKER_NAME_WINDOW_LAST_POSITION_PREFIX, integrationId))
		self._tracker:reset(getTrackerName(TRACKER_NAME_WINDOW_SIZE_PREFIX, integrationId))
		self._tracker:reset(getTrackerName(TRACKER_NAME_WINDOW_DRAG_STATUS, integrationId))
		self._tracker:reset(getTrackerName(TRACKER_NAME_WINDOW_STATUS, integrationId))
	end

	self._defaultWindowTrackers = function(integrationId: Types.IntegrationId)
		self._resetWindowTrackers(integrationId)
		self._tracker:startTime(getTrackerName(TRACKER_NAME_WINDOW_TIME, integrationId))
		self._tracker:set(getTrackerName(TRACKER_NAME_WINDOW_STATUS, integrationId), STATUS.ACTIVE)
	end

	self._sendEvent = function(eventName: string, eventProperties: any)
		local props = Cryo.Dictionary.join(getDynamicEventProps(), self._defaultProps, eventProperties or {})
		AnalyticsService:SendEventDeferred(self._target, self._context, eventName, props)
	end

	self._calculateWindowAbsolutePosition = function(startingPosition: UDim2, windowSize: UDim2): Vector2
		local screenWidth = self._defaultProps.screen_width
		local screenHeight = self._defaultProps.screen_height
		return Vector2.new(
			startingPosition.X.Scale * screenWidth + startingPosition.X.Offset - windowSize.Width.Offset / 2,
			startingPosition.Y.Scale * screenHeight + startingPosition.Y.Offset - windowSize.Height.Offset / 2
		)
	end

	self._setWindowLastPosition = function(integrationId: Types.IntegrationId, position: Vector2)
		self._tracker:set(getTrackerName(TRACKER_NAME_WINDOW_LAST_POSITION_PREFIX, integrationId), position)
	end

	GuiService.MenuOpened:Connect(function()
		self._defaultProps.is_game_menu_opened = not self._defaultProps.is_game_menu_opened
	end)

	for _, integration in ChromeService:integrations() do
		self._observeIntegration(integration.id)
	end

	ChromeService:onIntegrationRegistered():connect(function(integrationId: Types.IntegrationId)
		self._observeIntegration(integrationId)
	end)

	ChromeService:onIntegrationActivated()
		:connect(function(integrationId: Types.IntegrationId, props: Types.ActivateProps?)
			if FFlagIntegrationsChromeShortcutTelemetry then
				self:onIconActivated(integrationId, props)
			else
				self:onIconActivated(integrationId)
			end
		end)

	ChromeService:onIntegrationStatusChanged():connect(function(integrationId: Types.IntegrationId, status: number)
		local integration = getIntegration(integrationId)
		if integration and integration.components.Window then
			if status == ChromeService.IntegrationStatus.Window then
				self:onWindowOpened(integrationId)
			else
				self:onWindowClosed(integrationId)
			end
		end
	end)

	return self
end

function ChromeAnalytics:setScreenSize(screenSize: Vector2)
	self._defaultProps.screen_width = screenSize.X
	self._defaultProps.screen_height = screenSize.Y
	return nil
end

function ChromeAnalytics:onIconActivated(integrationId: Types.IntegrationId, props: Types.ActivateProps?)
	local integration = getIntegration(integrationId)

	if integration then
		local notification = integration.notification:get()
		local notificationCount = 0
		if notification.type == "count" then
			notificationCount = tonumber(notification.value) or 0
		end

		local isToggleOn = if integration.isActivated then not integration.isActivated() else nil

		self._sendEvent(Constants.ANALYTICS.ICON_ACTIVATED, {
			integration_id = integrationId,
			source = getInteractionSource(integrationId),
			notification_count = notificationCount,
			is_toggle_on = isToggleOn,
			used_shortcut = if FFlagIntegrationsChromeShortcutTelemetry and props
				then props.fromShortcut or false
				else nil,
		})
	end
	return nil
end

function ChromeAnalytics:onIconTouchBegan(integrationId: Types.IntegrationId)
	self._tracker:set(getTrackerName(TRACKER_NAME_ICON_DRAG_STATUS, integrationId), DRAG_STATUS.STARTED)
	return nil
end

function ChromeAnalytics:onIconDrag(integrationId: Types.IntegrationId)
	local trackerName = getTrackerName(TRACKER_NAME_ICON_DRAG_STATUS, integrationId)
	local dragStatus = self._tracker:get(trackerName)
	if dragStatus == DRAG_STATUS.STARTED then
		self._tracker:set(trackerName, DRAG_STATUS.DRAGGED)
		self._sendEvent(Constants.ANALYTICS.ICON_DRAG_START, {
			integration_id = integrationId,
			source = getInteractionSource(integrationId),
		})
	end
	return nil
end

function ChromeAnalytics:onIconTouchEnded(
	integrationId: Types.IntegrationId,
	windowPosition: Vector2,
	willReposition: boolean
)
	local trackerName = getTrackerName(TRACKER_NAME_ICON_DRAG_STATUS, integrationId)
	local dragStatus = self._tracker:get(trackerName)
	local integration = getIntegration(integrationId)

	if integration and integration.windowSize and dragStatus == DRAG_STATUS.DRAGGED then
		self._tracker:reset(trackerName)
		self._setWindowLastPosition(integrationId, windowPosition)
		local windowSize = integration.windowSize:get()

		self._sendEvent(Constants.ANALYTICS.ICON_DRAG_END, {
			integration_id = integrationId,
			source = getInteractionSource(integrationId),
			window_position_x = windowPosition.X,
			window_position_y = windowPosition.Y,
			window_width = windowSize.Width.Offset,
			window_height = windowSize.Height.Offset,
			will_reposition = willReposition,
		})
	end
	return nil
end

function ChromeAnalytics:onWindowOpened(integrationId: Types.IntegrationId)
	local integration = getIntegration(integrationId)
	local windowStatus = self._tracker:get(getTrackerName(TRACKER_NAME_WINDOW_STATUS, integrationId))

	if integration and windowStatus ~= STATUS.ACTIVE then
		self._defaultWindowTrackers(integrationId)

		local windowPositionTrackerName = getTrackerName(TRACKER_NAME_WINDOW_DEFAULT_POSITION_PREFIX, integrationId)
		if not self._tracker:get(windowPositionTrackerName) and integration.windowSize then
			local windowSize = integration.windowSize:get()
			if windowSize then
				local windowPosition = ChromeService:windowPosition(integration.id)
					or integration.startingWindowPosition
					or UDim2.fromOffset(0, 0)
				local windowAbsolutePosition = self._calculateWindowAbsolutePosition(windowPosition, windowSize)
				self:setWindowDefaultPosition(integrationId, windowAbsolutePosition)
			end
		end

		self._sendEvent(Constants.ANALYTICS.WINDOW_OPENED, {
			integration_id = integrationId,
		})
	end
	return nil
end

function ChromeAnalytics:onWindowClosed(integrationId: Types.IntegrationId)
	local windowStatus = self._tracker:get(getTrackerName(TRACKER_NAME_WINDOW_STATUS, integrationId))
	if windowStatus == STATUS.ACTIVE then
		self._sendEvent(Constants.ANALYTICS.WINDOW_CLOSED, {
			integration_id = integrationId,
			total_open_time = self._tracker:finishTime(getTrackerName(TRACKER_NAME_WINDOW_TIME, integrationId)),
		})
		self._resetWindowTrackers(integrationId)
	end
	return nil
end

-- Drag start does not result in firing the analytics event, since the drag start is
function ChromeAnalytics:onWindowTouchBegan(integrationId: Types.IntegrationId, windowPosition: Vector2)
	local integration = getIntegration(integrationId)
	if integration and integration.windowSize then
		self._tracker:set(getTrackerName(TRACKER_NAME_WINDOW_DRAG_STATUS, integrationId), DRAG_STATUS.STARTED)
	end
	return nil
end

function ChromeAnalytics:onWindowDrag(integrationId: Types.IntegrationId, windowPosition: Vector3)
	local windowTrackerName = getTrackerName(TRACKER_NAME_WINDOW_DRAG_STATUS, integrationId)
	local dragStatus = self._tracker:get(windowTrackerName)
	local integration = getIntegration(integrationId)

	if integration and integration.windowSize and dragStatus == DRAG_STATUS.STARTED then
		local touchBeginPosition: Vector2 =
			self._tracker:get(getTrackerName(TRACKER_NAME_WINDOW_LAST_POSITION_PREFIX, integrationId))

		if touchBeginPosition then
			local touchBeginPositionDelta =
				Vector2.new(windowPosition.X - touchBeginPosition.X, windowPosition.Y - touchBeginPosition.Y)

			if touchBeginPositionDelta.X ~= 0 or touchBeginPositionDelta.Y ~= 0 then
				self._tracker:set(windowTrackerName, DRAG_STATUS.DRAGGED)
				local windowSize = integration.windowSize:get()
				local windowDefaultPosition: Vector2 =
					self._tracker:get(getTrackerName(TRACKER_NAME_WINDOW_DEFAULT_POSITION_PREFIX, integrationId))

				self._sendEvent(Constants.ANALYTICS.WINDOW_DRAG_START, {
					integration_id = integrationId,
					position_x = touchBeginPosition.X,
					position_y = touchBeginPosition.Y,
					width = windowSize.Width.Offset,
					height = windowSize.Height.Offset,
					is_starting_position = windowDefaultPosition == touchBeginPosition,
				})
			end
		end
	end
	return nil
end

function ChromeAnalytics:onWindowTouchEnded(
	integrationId: Types.IntegrationId,
	windowPosition: Vector2,
	willReposition: boolean
)
	local iconDragStatus = self._tracker:get(getTrackerName(TRACKER_NAME_ICON_DRAG_STATUS, integrationId))
	local integration = getIntegration(integrationId)

	if iconDragStatus == DRAG_STATUS.DRAGGED then
		-- The window drag origin was from the icon
		return self:onIconTouchEnded(integrationId, windowPosition, willReposition)
	end

	local windowTrackerName = getTrackerName(TRACKER_NAME_WINDOW_DRAG_STATUS, integrationId)
	local dragStatus = self._tracker:get(windowTrackerName)

	if integration and integration.windowSize and dragStatus == DRAG_STATUS.DRAGGED then
		local windowSize = integration.windowSize:get()
		self._tracker:reset(windowTrackerName)
		self._setWindowLastPosition(integrationId, windowPosition)
		self._sendEvent(Constants.ANALYTICS.WINDOW_DRAG_END, {
			integration_id = integrationId,
			position_x = windowPosition.X,
			position_y = windowPosition.Y,
			width = windowSize.Width.Offset,
			height = windowSize.Height.Offset,
			will_autoposition = willReposition,
		})
	end
	return nil
end

function ChromeAnalytics:setWindowDefaultPosition(integrationId: Types.IntegrationId, position: Vector2)
	self._tracker:set(getTrackerName(TRACKER_NAME_WINDOW_DEFAULT_POSITION_PREFIX, integrationId), position)
	self._setWindowLastPosition(integrationId, position)
	return nil
end

function ChromeAnalytics:onWindowResize(integrationId: Types.IntegrationId, currentWindowSize: UDim2)
	local integration = getIntegration(integrationId)
	if integration and integration.windowSize then
		local sizeTrackerName = getTrackerName(TRACKER_NAME_WINDOW_SIZE_PREFIX, integrationId)
		local positionTrackerName = getTrackerName(TRACKER_NAME_WINDOW_LAST_POSITION_PREFIX, integrationId)
		local previousWindowSize: UDim2 = self._tracker:get(sizeTrackerName)
		local previousWindowPosition: Vector2? = self._tracker:get(positionTrackerName)

		local currentWindowPosition: Vector2? = nil
		if previousWindowPosition then
			local halfHeightDifference = (previousWindowSize.Height.Offset - currentWindowSize.Height.Offset) / 2
			local halfWidthDifference = (previousWindowSize.Width.Offset - currentWindowSize.Width.Offset) / 2

			currentWindowPosition = Vector2.new(
				previousWindowPosition.X + halfWidthDifference,
				previousWindowPosition.Y + halfHeightDifference
			)
		end

		if currentWindowPosition then
			self._setWindowLastPosition(integrationId, currentWindowPosition)
		end

		self._tracker:set(sizeTrackerName, currentWindowSize)

		self._sendEvent(Constants.ANALYTICS.WINDOW_RESIZE, {
			integration_id = integrationId,
			previous_position_x = previousWindowPosition and previousWindowPosition.X or nil,
			previous_position_y = previousWindowPosition and previousWindowPosition.Y or nil,
			previous_width = previousWindowSize and previousWindowSize.Width.Offset or nil,
			previous_height = previousWindowSize and previousWindowSize.Height.Offset or nil,
			current_position_x = currentWindowPosition and currentWindowPosition.X or nil,
			current_position_y = currentWindowPosition and currentWindowPosition.Y or nil,
			current_width = currentWindowSize.Width.Offset,
			current_height = currentWindowSize.Height.Offset,
		})
	end
	return nil
end

ChromeAnalytics.default = ChromeAnalytics.new()
return ChromeAnalytics
