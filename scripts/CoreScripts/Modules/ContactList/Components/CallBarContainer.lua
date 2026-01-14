--!strict
local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")
local Workspace = game:GetService("Workspace")

local Camera = Workspace.CurrentCamera :: Camera

local React = require(CorePackages.Packages.React)
local Cryo = require(CorePackages.Packages.Cryo)
local CallProtocol = require(CorePackages.Workspace.Packages.CallProtocol)
local Sounds = require(CorePackages.Workspace.Packages.SoundManager).Sounds
local SoundGroups = require(CorePackages.Workspace.Packages.SoundManager).SoundGroups
local SoundManager = require(CorePackages.Workspace.Packages.SoundManager).SoundManager
local ReactOtter = require(CorePackages.Packages.ReactOtter)

local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local Chrome = RobloxGui.Modules.Chrome
local ChromeEnabled = require(Chrome.Enabled)
local ChromeService = if ChromeEnabled() then require(Chrome.Service) else nil
local ChromeConstants = require(Chrome.ChromeShared.Unibar.Constants)

local TopBar = RobloxGui.Modules.TopBar
local TopBarConstants = require(TopBar.Constants)

local ContactList = RobloxGui.Modules.ContactList
local dependencies = require(ContactList.dependencies)
local RoduxCall = dependencies.RoduxCall
local useSelector = dependencies.Hooks.useSelector
local useDispatch = dependencies.Hooks.useDispatch
local CallAction = RoduxCall.Enums.CallAction

local Components = script.Parent
local CallBar = require(Components.CallBar)

local CALL_BAR_SIZE = Vector2.new(200, 44)
local CALL_BAR_TOP_PADDING = 4
local CALL_BAR_MARGIN = 12
local CALL_BAR_UNIBAR_VERTICAL_PADDING = 10

export type Props = {
	callProtocol: CallProtocol.CallProtocolModule | nil,
}

local defaultProps = {
	callProtocol = CallProtocol.CallProtocol.default,
}

local ScreenPosition = {
	On = "On" :: "On",
	Off = "Off" :: "Off",
}

export type ScreenPosition = "On" | "Off"

local function CallBarContainer(passedProps: Props)
	local props = Cryo.Dictionary.join(defaultProps, passedProps)

	local dispatch = useDispatch()

	local topBarButtonPadding = TopBarConstants.useDisplayScaleState(TopBarConstants.TopBarButtonPadding)
	local topBarTopMargin = TopBarConstants.useDisplayScaleState(TopBarConstants.TopBarTopMargin)
	local isCallBarEnabled, setIsCallBarEnabled = React.useState(false)
	local callBarPosition, setCallBarPosition

	callBarPosition, setCallBarPosition = ReactOtter.useAnimatedBinding({
		X = (Camera.ViewportSize.X / 2) - (CALL_BAR_SIZE.X / 2),
		Y = -CALL_BAR_SIZE.Y,
	}, function(callBarPos)
		if callBarPos.Y == -CALL_BAR_SIZE.Y and isCallBarEnabled then
			-- If we're hiding the CallBar then also disable it once the motor is complete
			setIsCallBarEnabled(false)
		end
	end)

	--[[
		Updates the screenPosition for the call bar.
		If the call bar collides with the unibar then move call bar towards the right. If the
		call bar won't fit in the viewport then adjust the call bar downwards.
		If unibar is not enabled, we just align it with the tilt icon.

		@param screenPosition | The screen position we'd like to update to (On / Off)
	--]]
	local updateCallBarPosition = React.useCallback(function(screenPosition: ScreenPosition)
		-- By default we set the call bar to be center aligned with the screen
		local screenPositionXOffset = (Camera.ViewportSize.X / 2) - (CALL_BAR_SIZE.X / 2)

		local screenPositionYOffset
		if screenPosition == ScreenPosition.On then
			if ChromeEnabled() then
				screenPositionYOffset = topBarTopMargin + topBarButtonPadding
			else
				screenPositionYOffset = CALL_BAR_TOP_PADDING
			end
		else
			screenPositionYOffset = -CALL_BAR_SIZE.Y
		end

		if ChromeEnabled() and ChromeService then
			-- It is possible unibar has not been initialized here.
			local unibarDimensions = ChromeService:layout():get()
			local unibarMax = unibarDimensions.Max

			if unibarMax.X + CALL_BAR_MARGIN > (Camera.ViewportSize.X / 2) - (CALL_BAR_SIZE.X / 2) then
				-- If CallBar default position (middle of screen) doesn't fit nicely with unibar
				if unibarMax.X + (CALL_BAR_MARGIN * 2) + CALL_BAR_SIZE.X > Camera.ViewportSize.X then
					-- If CallBar has been pushed down because CallBar overflows Viewport
					if screenPosition == ScreenPosition.On then
						screenPositionYOffset = TopBarConstants.ApplyDisplayScale(TopBarConstants.TopBarHeight)
							+ CALL_BAR_UNIBAR_VERTICAL_PADDING
					end
				else
					screenPositionXOffset = unibarMax.X + CALL_BAR_MARGIN
				end
			end
		end

		setCallBarPosition({
			X = ReactOtter.spring(screenPositionXOffset, ChromeConstants.MENU_ANIMATION_SPRING),
			Y = ReactOtter.spring(screenPositionYOffset, ChromeConstants.MENU_ANIMATION_SPRING),
		})
	end, {})

	local selectCurrentCallStatus = React.useCallback(function(state: any)
		return if state.Call.currentCall ~= nil then state.Call.currentCall.status else nil
	end, {})
	local currentCallStatus = useSelector(selectCurrentCallStatus)

	local selectActiveUtc = React.useCallback(function(state: any)
		local currentActiveUtc = 0
		if state.Call.currentCall and state.Call.currentCall.activeUtc then
			currentActiveUtc = state.Call.currentCall.activeUtc
		end
		return currentActiveUtc
	end)
	local activeUtc = useSelector(selectActiveUtc)

	local selectInstanceId = React.useCallback(function(state: any)
		return if state.Call.currentCall ~= nil then state.Call.currentCall.instanceId else nil
	end)
	local instanceId = useSelector(selectInstanceId)

	React.useEffect(function()
		-- We just listen for the transitions we care about here. However, it is
		-- worth noting that GetCallState could return us a call in another state.
		local connectingCallConn = props.callProtocol:listenToHandleConnectingCall(function(params)
			SoundManager:PlaySound(Sounds.Ringtone.Name, { Volume = 0.5, Looped = true }, SoundGroups.Iris)

			dispatch(RoduxCall.Actions.UpdateCall(params))
		end)

		local teleportingCallConn = props.callProtocol:listenToHandleTeleportingCall(function(params)
			SoundManager:StopSound(Sounds.Ringtone.Name)
			SoundManager:PlaySound(Sounds.CallAccept.Name, { Volume = 0.5 }, SoundGroups.Iris)
			dispatch(RoduxCall.Actions.UpdateCall(params))
		end)

		local activeCallConn = props.callProtocol:listenToHandleActiveCall(function(params)
			dispatch(RoduxCall.Actions.UpdateCall(params))
		end)

		local transferCallTeleportJoinConn = props.callProtocol:listenToHandleTransferCallTeleportJoin(function()
			-- Fetch call state since the instance id will be updated and this
			-- can happen after the call bar is fetched.
			props.callProtocol:getCallState():andThen(function(params)
				dispatch(RoduxCall.Actions.UpdateCall(params))
			end)
		end)

		props.callProtocol:getCallState():andThen(function(params)
			dispatch(RoduxCall.Actions.UpdateCall(params))
		end)

		return function()
			connectingCallConn:Disconnect()
			teleportingCallConn:Disconnect()
			activeCallConn:Disconnect()
			transferCallTeleportJoinConn:Disconnect()
		end
	end, { props.callProtocol })

	local unibarDimension, setUnibarDimension = React.useState(nil :: never)
	if ChromeEnabled() and ChromeService then
		React.useEffect(function()
			-- Listen for when Unibar has finished mounting
			local unibarLayoutConnection = ChromeService:layout():connect(function(dimensions)
				setUnibarDimension(dimensions)
			end)

			return function()
				unibarLayoutConnection.disconnect()
			end
		end, {})
	end

	React.useEffect(function()
		local isVisible = currentCallStatus == RoduxCall.Enums.Status.Connecting
			or currentCallStatus == RoduxCall.Enums.Status.Teleporting
			or currentCallStatus == RoduxCall.Enums.Status.Active
			or (currentCallStatus == RoduxCall.Enums.Status.Idle and game.JobId == instanceId)

		if isVisible then
			setIsCallBarEnabled(true)
		end

		updateCallBarPosition(if isVisible then ScreenPosition.On else ScreenPosition.Off)

		-- Listen for screen size changes
		local viewportSizeConnection = Camera:GetPropertyChangedSignal("ViewportSize"):Connect(function()
			updateCallBarPosition(if isVisible then ScreenPosition.On else ScreenPosition.Off)
		end)

		return function()
			viewportSizeConnection:Disconnect()
		end
	end, {
		currentCallStatus,
		instanceId,
		unibarDimension,
	})

	React.useEffect(function()
		local endCallConn = props.callProtocol:listenToHandleEndCall(function(params)
			if params.callAction == CallAction.Cancel then
				SoundManager:StopSound(Sounds.Ringtone.Name)
				SoundManager:PlaySound(Sounds.HangUp.Name, { Volume = 0.5 }, SoundGroups.Iris)
			elseif params.callAction == CallAction.Decline then
				SoundManager:StopSound(Sounds.Ringtone.Name)
				SoundManager:PlaySound(Sounds.CallDecline.Name, { Volume = 0.5 }, SoundGroups.Iris)
			elseif params.callAction == CallAction.Finish then
				SoundManager:PlaySound(Sounds.HangUp.Name, { Volume = 0.5 }, SoundGroups.Iris)
			end

			dispatch(RoduxCall.Actions.UpdateCall(params))
		end)

		return function()
			endCallConn:Disconnect()
		end
	end, { props.callProtocol })

	return if isCallBarEnabled
		then React.createElement("Frame", {
			Size = UDim2.fromScale(1, 1),
			BackgroundTransparency = 1,
			BorderSizePixel = 0,
		}, {
			CallBar = React.createElement(CallBar, {
				size = CALL_BAR_SIZE,
				activeUtc = activeUtc,
				position = callBarPosition:map(function(val)
					return UDim2.fromOffset(math.round(val.X), math.round(val.Y))
				end),
			}),
		})
		else nil
end

return CallBarContainer
