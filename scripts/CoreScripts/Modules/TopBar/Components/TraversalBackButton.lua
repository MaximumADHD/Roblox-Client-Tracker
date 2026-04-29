local CorePackages = game:GetService("CorePackages")
local TeleportService = game:GetService("TeleportService")
local UserGameSettings = UserSettings():GetService("UserGameSettings")

local Foundation = require(CorePackages.Packages.Foundation)
local React = require(CorePackages.Packages.React)
local ReactOtter = require(CorePackages.Packages.ReactOtter)
local SignalsReact = require(CorePackages.Packages.SignalsReact)

local CoreScriptsCommon = require(CorePackages.Workspace.Packages.CoreScriptsCommon)
local CoreScriptsRoactCommon = require(CorePackages.Workspace.Packages.CoreScriptsRoactCommon)
local DataHydration = require(CorePackages.Workspace.Packages.DataHydration)
local Localization = require(CorePackages.Workspace.Packages.Localization)

local View = Foundation.View
local useTokens = Foundation.Hooks.useTokens

local SettingsShowSignal = CoreScriptsCommon.SettingsShowSignal
local Traversal = CoreScriptsRoactCommon.Traversal
local DataHydrationTypes = DataHydration.DataHydrationTypes
local getGameInfoStore = DataHydration.Game.getGameInfoStore
local TraversalConstants = Traversal.Constants
local TeleportBackButton = Traversal.TeleportBackButton
local TraversalTelemetry = Traversal.TraversalTelemetry
local useHistoryItems = Traversal.useHistoryItems
local useLocalization = Localization.Hooks.useLocalization

local FFlagUseTeleportTraversalHistory = Traversal.Flags.FFlagUseTeleportTraversalHistory
local FFlagUseLocalTraversalHistory = Traversal.Flags.FFlagUseLocalTraversalHistory
local FFlagAddTraversalBackButtonAnimation = Traversal.Flags.FFlagAddTraversalBackButtonAnimation
local FFlagFixTraversalBackButtonAnimation = game:DefineFastFlag("FixTraversalBackButtonAnimation", false)

local ANIMATION_START_VALUE = 0
local ANIMATION_FINAL_VALUE = 1

local function TraversalBackButton(props: {}): React.React_Node
	local tokens = useTokens()
	local buttonRef = React.useRef(nil :: GuiObject?)
	local prevUniverseId, prevPlaceId = TeleportService:GetThirdPartyTeleportInfo(false)
	-- don't render on no prevs, for example on first time joins
	if prevUniverseId <= TraversalConstants.NO_UNIVERSE_ID or prevPlaceId <= TraversalConstants.NO_PLACE_ID then
		return nil
	end

	local isVisible, setIsVisible = React.useState(false)
	React.useEffect(function()
		local settingShowConn = SettingsShowSignal:connect(function(isOpen)
			setIsVisible(isOpen)
		end)
		return function()
			settingShowConn:Disconnect()
		end
	end, {})

	React.useEffect(function()
		if isVisible then
			TraversalTelemetry.sendBackButtonActionEvent({
				integration_id = "back_button",
				destination_universe_id = prevUniverseId,
				event_type = "impression",
			})
		end
	end, { isVisible, prevUniverseId })

	local localized = useLocalization({
		defaultBackButtonText = "CoreScripts.TopBar.Traversal.BackButtonDefault",
	})

	local getPlaceName = React.useCallback(function(scope)
		local gameInfo = getGameInfoStore(scope).getAndFetchGameInfo(tostring(prevUniverseId))
		local gameInfoData = gameInfo.data(scope)
		local gameInfoStatus = gameInfo.status(scope)
		if not gameInfoData or gameInfoStatus ~= DataHydrationTypes.DataStatus.Ready then
			return localized.defaultBackButtonText
		end
		return gameInfoData.name
	end, { prevUniverseId, getGameInfoStore })
	local placeName = SignalsReact.useSignalState(getPlaceName)

	local prevPlaceName
	if FFlagFixTraversalBackButtonAnimation then
		prevPlaceName = React.useRef(nil :: string?)
	end


	-- Animation
	local maxButtonWidth = tokens.Size.Size_2500 * 2
	local initButtonWidth
	local prevButtonWidth
	local refButtonWidth
	local animatedWidth, setWidthGoal
	local finalButtonWidth
	local buttonIsVisible
	if FFlagAddTraversalBackButtonAnimation then
		initButtonWidth = React.useRef(nil :: number?)
		prevButtonWidth = React.useRef(nil :: number?)
		if FFlagFixTraversalBackButtonAnimation then
			refButtonWidth = React.useRef(nil :: number?)
		end
		local easeConfig = React.useMemo(function()
			return {
				duration = tokens.Time.Time_300,
				easingStyle = tokens.Ease.StandardOut,
			} :: any
		end, { tokens })
		animatedWidth, setWidthGoal = ReactOtter.useAnimatedBinding(ANIMATION_START_VALUE, function(finalValue: number)
			initButtonWidth.current = nil
			if FFlagFixTraversalBackButtonAnimation then
				if not refButtonWidth.current and prevButtonWidth.current and finalValue == ANIMATION_FINAL_VALUE then
					refButtonWidth.current = prevButtonWidth.current
				end
				if finalValue == ANIMATION_START_VALUE then
					prevButtonWidth.current = 0
				end
			else
				prevButtonWidth.current = nil
			end
		end)
		React.useEffect(function()
			if isVisible then
				if FFlagFixTraversalBackButtonAnimation then
					-- reset animation if place name changes
					if prevPlaceName.current ~= placeName then
						refButtonWidth.current = nil
						prevPlaceName.current = placeName
						if buttonRef.current then
							setWidthGoal(ReactOtter.ease(ANIMATION_FINAL_VALUE - 0.01, easeConfig))
						end
					else
						setWidthGoal(ReactOtter.ease(ANIMATION_FINAL_VALUE, easeConfig))
					end
				else
					setWidthGoal(ReactOtter.ease(ANIMATION_FINAL_VALUE, easeConfig))
				end
			else
				setWidthGoal(ReactOtter.ease(ANIMATION_START_VALUE, easeConfig))
			end
			if FFlagFixTraversalBackButtonAnimation and prevPlaceName.current == nil then
				prevPlaceName.current = placeName
			end
		end, { isVisible, easeConfig, placeName } :: { unknown })
		finalButtonWidth = React.useCallback(function(widthAnimationProgress: number)
			if FFlagFixTraversalBackButtonAnimation then
				if refButtonWidth.current then
					return UDim2.new(0, widthAnimationProgress * refButtonWidth.current, 0, 0)
				end
				local progressWidth
				if isVisible and buttonRef.current then
					local currentButtonWidth = buttonRef.current.AbsoluteSize.X
					if not initButtonWidth.current then
						initButtonWidth.current = buttonRef.current.AbsoluteSize.X
					end
					-- maxButtonWidth is too large, need to truncate once TeleportButton reaches its max width
					if prevButtonWidth.current and prevButtonWidth.current >= currentButtonWidth then
						return UDim2.new(0, if FFlagFixTraversalBackButtonAnimation then currentButtonWidth else prevButtonWidth.current, 0, 0)
					-- button has initial button width, do not use to set limit
					elseif initButtonWidth.current and initButtonWidth.current ~= currentButtonWidth then
						prevButtonWidth.current = currentButtonWidth
					end
					progressWidth = widthAnimationProgress * maxButtonWidth
				else
					progressWidth = widthAnimationProgress * (prevButtonWidth.current or maxButtonWidth)
				end
				return UDim2.new(0, progressWidth, 0, 0)
			else
				if isVisible and buttonRef.current then
					local currentButtonWidth = buttonRef.current.AbsoluteSize.X
					if not initButtonWidth.current then
						initButtonWidth.current = buttonRef.current.AbsoluteSize.X
					end
					if prevButtonWidth.current and prevButtonWidth.current >= currentButtonWidth then
						return UDim2.new(0, prevButtonWidth.current, 0, 0)
					-- button has initial button width, do not use to set limit
					elseif initButtonWidth.current and initButtonWidth.current ~= currentButtonWidth then
						prevButtonWidth.current = currentButtonWidth
					end
				end
				local progressWidth = widthAnimationProgress * maxButtonWidth
				return UDim2.new(0, progressWidth, 0, 0)
			end
		end, { isVisible })
		buttonIsVisible = React.useCallback(function(width)
			return width > 0 or isVisible
		end, { isVisible })
	end

	if FFlagAddTraversalBackButtonAnimation and not UserGameSettings.ReducedMotion then
		return React.createElement(View, {
			tag = "auto-y",
			Visible = animatedWidth:map(buttonIsVisible),
			Size = animatedWidth:map(finalButtonWidth),
			ZIndex = -1, -- behind Unibar
		}, {
			TraversalBackButton = React.createElement(TeleportBackButton, {
				text = placeName,
				textLimitWidth = maxButtonWidth,

				ref = buttonRef,
			}),
		})
	else
		return isVisible and React.createElement(View, {
			tag = "auto-xy shrink",
		}, {
			TraversalBackButton = React.createElement(TeleportBackButton, {
				text = placeName,
				textLimitWidth = maxButtonWidth,

				ref = buttonRef,
			}),
		})
	end
end

return React.memo(TraversalBackButton)
