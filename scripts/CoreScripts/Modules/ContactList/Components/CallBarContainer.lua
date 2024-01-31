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
local GetFFlagSoundManagerRefactor = require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagSoundManagerRefactor

local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local Chrome = RobloxGui.Modules.Chrome
local ChromeService = require(Chrome.Service)
local ChromeConstants = require(Chrome.Unibar.Constants)

local TopBar = RobloxGui.Modules.TopBar
local TopBarConstants = require(TopBar.Constants)

local ContactList = RobloxGui.Modules.ContactList
local IrisUnibarEnabled = require(ContactList.IrisUnibarEnabled)
local dependencies = require(ContactList.dependencies)
local RoduxCall = dependencies.RoduxCall
local useSelector = dependencies.Hooks.useSelector
local useDispatch = dependencies.Hooks.useDispatch
local CallAction = RoduxCall.Enums.CallAction

local Components = script.Parent
local CallBar = require(Components.CallBar)

local CALL_BAR_SIZE = Vector2.new(200, 44)
local CALL_BAR_PADDING = 4
local CALL_BAR_MARGIN = 12
local CALL_BAR_UNIBAR_VERTICAL_PADDING = 8

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
	local callBarRef = if IrisUnibarEnabled() then nil else React.useRef(nil)

	local isCallBarEnabled, setIsCallBarEnabled = React.useState(false)
	local callBarPosition, setCallBarPosition

	if IrisUnibarEnabled() then
		callBarPosition, setCallBarPosition = ReactOtter.useAnimatedBinding({
			X = (Camera.ViewportSize.X / 2) - (CALL_BAR_SIZE.X / 2),
			Y = -CALL_BAR_SIZE.Y,
		}, function(callBarPos)
			if callBarPos.Y == -CALL_BAR_SIZE.Y and isCallBarEnabled then
				-- If we're hiding the CallBar then also disable it once the motor is complete
				setIsCallBarEnabled(false)
			end
		end)
	end

	--[[
		Updates the screenPosition for the call bar given the current state of the unibar. If the
		call bar collides with the unibar then move call bar towards the right. If the
		call bar won't fit in the viewport then adjust the call bar downwards.

		@param screenPosition | The screen position we'd like to update to (On / Off)
		@param instant? | Instantly update position. If false then we default to spring animation
			
	--]]
	local updateCallBarPosition = React.useCallback(function(screenPosition: ScreenPosition, instant: boolean?)
		local unibarStatus = ChromeService:status():get()
		local unibarDimensions = ChromeService:layout():get()
		local unibar_max = unibarDimensions[unibarStatus].Max

		-- Unibar hasn't initialized yet

		-- By default we set the call bar to be center aligned with the screen
		local screenPositionXOffset = (Camera.ViewportSize.X / 2) - (CALL_BAR_SIZE.X / 2)

		local screenPositionYOffset
		if screenPosition == ScreenPosition.On then
			screenPositionYOffset = TopBarConstants.TopBarTopMargin + TopBarConstants.TopBarButtonPadding
		else
			screenPositionYOffset = -CALL_BAR_SIZE.Y
		end

		if unibar_max.X + CALL_BAR_MARGIN > (Camera.ViewportSize.X / 2) - (CALL_BAR_SIZE.X / 2) then
			-- If CallBar default position (middle of screen) doesn't fit nicely with unibar
			if unibar_max.X + (CALL_BAR_MARGIN * 2) + CALL_BAR_SIZE.X > Camera.ViewportSize.X then
				-- If CallBar has been pushed down because CallBar overflows Viewport
				if screenPosition == ScreenPosition.On then
					screenPositionYOffset = TopBarConstants.TopBarHeight + CALL_BAR_UNIBAR_VERTICAL_PADDING
				end
			else
				screenPositionXOffset = unibar_max.X + CALL_BAR_MARGIN
			end
		end

		if instant then
			setCallBarPosition({
				X = ReactOtter.instant(screenPositionXOffset),
				Y = ReactOtter.instant(screenPositionYOffset),
			} :: { [string]: ReactOtter.Goal })
		else
			setCallBarPosition({
				X = ReactOtter.spring(screenPositionXOffset, ChromeConstants.MENU_ANIMATION_SPRING),
				Y = ReactOtter.spring(screenPositionYOffset, ChromeConstants.MENU_ANIMATION_SPRING),
			})
		end
	end, {})

	-- TODO (timothyhsu): Remove once IrisUnibarEnabled is flipped
	local initCallBarCallback = React.useCallback(function(ref)
		if callBarRef then
			callBarRef.current = ref
		end

		pcall(function()
			if ref then
				ref:TweenPosition(UDim2.new(0.5, 0, 0, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quad, 0.3, true)
			end
		end)
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
			if GetFFlagSoundManagerRefactor() then
				SoundManager:PlaySound(Sounds.Ringtone.Name, { Volume = 0.5, Looped = true }, SoundGroups.Iris)
			else
				SoundManager:PlaySound_old(
					Sounds.Ringtone.Name,
					{ Volume = 0.5, Looped = true, SoundGroup = SoundGroups.Iris }
				)
			end

			dispatch(RoduxCall.Actions.UpdateCall(params))
		end)

		local teleportingCallConn = props.callProtocol:listenToHandleTeleportingCall(function(params)
			SoundManager:StopSound(Sounds.Ringtone.Name)
			if GetFFlagSoundManagerRefactor() then
				SoundManager:PlaySound(Sounds.CallAccept.Name, { Volume = 0.5 }, SoundGroups.Iris)
			else
				SoundManager:PlaySound_old(Sounds.CallAccept.Name, { Volume = 0.5, SoundGroup = SoundGroups.Iris })
			end
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

	local unibarMounted, setUnibarMounted = React.useState(false)
	if IrisUnibarEnabled() then
		React.useEffect(function()
			-- Listen for when Unibar has finished mounting
			local unibarLayoutConnection = ChromeService:layout():connect(function()
				setUnibarMounted(true)
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

		if IrisUnibarEnabled() then
			if isVisible then
				setIsCallBarEnabled(true)
			end

			updateCallBarPosition(if isVisible then ScreenPosition.On else ScreenPosition.Off)

			local unibarStatusConnection = ChromeService:status():connect(function()
				updateCallBarPosition(if isVisible then ScreenPosition.On else ScreenPosition.Off)
			end)

			-- Listen for screen size changes
			local viewportSizeConnection = Camera:GetPropertyChangedSignal("ViewportSize"):Connect(function()
				if Camera.ViewportSize.X < 640 then
					updateCallBarPosition(if isVisible then ScreenPosition.On else ScreenPosition.Off)
				else
					updateCallBarPosition(if isVisible then ScreenPosition.On else ScreenPosition.Off)
				end
			end)

			return function()
				unibarStatusConnection:disconnect()
				viewportSizeConnection:Disconnect()
			end
		else
			local ref = if callBarRef then callBarRef.current else nil

			if isVisible then
				setIsCallBarEnabled(true)
				initCallBarCallback(ref)
			else
				pcall(function()
					if ref then
						ref:TweenPosition(
							UDim2.new(0.5, 0, 0, -CALL_BAR_SIZE.Y - CALL_BAR_PADDING),
							Enum.EasingDirection.In,
							Enum.EasingStyle.Quad,
							0.3,
							true,
							function(state)
								-- This animation could be cancelled for the appear animation.
								if state == Enum.TweenStatus.Completed then
									setIsCallBarEnabled(false)
								end
							end
						)
					end
				end)
			end

			return function() end
		end
	end, { currentCallStatus, initCallBarCallback, instanceId, unibarMounted })

	React.useEffect(function()
		local endCallConn = props.callProtocol:listenToHandleEndCall(function(params)
			if params.callAction == CallAction.Cancel then
				SoundManager:StopSound(Sounds.Ringtone.Name)
				if GetFFlagSoundManagerRefactor() then
					SoundManager:PlaySound(Sounds.HangUp.Name, { Volume = 0.5 }, SoundGroups.Iris)
				else
					SoundManager:PlaySound_old(Sounds.HangUp.Name, { Volume = 0.5, SoundGroup = SoundGroups.Iris })
				end
			elseif params.callAction == CallAction.Decline then
				SoundManager:StopSound(Sounds.Ringtone.Name)
				if GetFFlagSoundManagerRefactor() then
					SoundManager:PlaySound(Sounds.CallDecline.Name, { Volume = 0.5 }, SoundGroups.Iris)
				else
					SoundManager:PlaySound_old(Sounds.CallDecline.Name, { Volume = 0.5, SoundGroup = SoundGroups.Iris })
				end
			elseif params.callAction == CallAction.Finish then
				if GetFFlagSoundManagerRefactor() then
					SoundManager:PlaySound(Sounds.HangUp.Name, { Volume = 0.5 }, SoundGroups.Iris)
				else
					SoundManager:PlaySound_old(Sounds.HangUp.Name, { Volume = 0.5, SoundGroup = SoundGroups.Iris })
				end
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
			UIPadding = if IrisUnibarEnabled()
				then nil
				else React.createElement("UIPadding", {
					PaddingTop = UDim.new(0, CALL_BAR_PADDING),
				}),
			CallBar = React.createElement(CallBar, {
				size = CALL_BAR_SIZE,
				callBarRef = if IrisUnibarEnabled() then nil else initCallBarCallback,
				activeUtc = activeUtc,
				position = if IrisUnibarEnabled()
					then callBarPosition:map(function(val)
						return UDim2.fromOffset(val.X, val.Y)
					end)
					else nil,
			}),
		})
		else nil
end

return CallBarContainer
