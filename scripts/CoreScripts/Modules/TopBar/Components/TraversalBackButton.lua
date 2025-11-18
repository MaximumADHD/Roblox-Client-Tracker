local CorePackages = game:GetService("CorePackages")
local TeleportService = game:GetService("TeleportService")
local UserGameSettings = UserSettings():GetService("UserGameSettings")

local Foundation = require(CorePackages.Packages.Foundation)
local React = require(CorePackages.Packages.React)
local ReactOtter = require(CorePackages.Packages.ReactOtter)

local CoreScriptsCommon = require(CorePackages.Workspace.Packages.CoreScriptsCommon)
local CoreScriptsRoactCommon = require(CorePackages.Workspace.Packages.CoreScriptsRoactCommon)
local Localization = require(CorePackages.Workspace.Packages.Localization)

local View = Foundation.View
local useTokens = Foundation.Hooks.useTokens

local SettingsShowSignal = CoreScriptsCommon.SettingsShowSignal
local Traversal = CoreScriptsRoactCommon.Traversal
local TraversalConstants = Traversal.Constants
local TeleportBackButton = Traversal.TeleportBackButton
local TraversalTelemetry = Traversal.TraversalTelemetry
local useHistoryItems = Traversal.useHistoryItems
local useLocalization = Localization.Hooks.useLocalization

local FFlagUseTeleportTraversalHistory = Traversal.Flags.FFlagUseTeleportTraversalHistory
local FFlagUseLocalTraversalHistory = Traversal.Flags.FFlagUseLocalTraversalHistory
local FFlagAddTraversalBackButtonAnimation = Traversal.Flags.FFlagAddTraversalBackButtonAnimation
local FFlagFixUnibarRefactoringInTopBarApp = require(script.Parent.Parent.Flags.FFlagFixUnibarRefactoringInTopBarApp)
local FFlagTraversalBackUseSettingsSignal = require(script.Parent.Parent.Flags.FFlagTraversalBackUseSettingsSignal)

local ANIMATION_START_VALUE = 0
local ANIMATION_FINAL_VALUE = 1

local function TraversalBackButton(props: {isVisible: boolean?}): React.React_Node
	local tokens = useTokens()
	local buttonRef = React.useRef(nil :: GuiObject?)
	local prevUniverseId, prevPlaceId = TeleportService:GetThirdPartyTeleportInfo(false)
	-- don't render on no prevs, for example on first time joins
	if prevUniverseId <= TraversalConstants.NO_UNIVERSE_ID or prevPlaceId <= TraversalConstants.NO_PLACE_ID then
		return nil
	end

	local isVisible, setIsVisible
	if FFlagTraversalBackUseSettingsSignal then
		isVisible, setIsVisible = React.useState(false)
		React.useEffect(function()
			local settingShowConn = SettingsShowSignal:connect(function(isOpen)
				setIsVisible(isOpen)
			end)
			return function()
				settingShowConn:Disconnect()
			end
		end, {})
	else
		isVisible = props.isVisible :: never
	end

	React.useEffect(function()
		if not FFlagFixUnibarRefactoringInTopBarApp or isVisible then
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

	-- Place Name
	local historyItems = useHistoryItems(2)
	local placeName
	if FFlagUseLocalTraversalHistory and typeof(historyItems[2]) == "table" and historyItems[2].name then
		placeName = historyItems[2].name
	elseif FFlagUseTeleportTraversalHistory and typeof(historyItems[1]) == "table" and historyItems[1].name then
		placeName = historyItems[1].name
	else
		placeName = localized.defaultBackButtonText
	end

	-- Animation
	local maxButtonWidth = tokens.Size.Size_2500 * 2
	local initButtonWidth
	local prevButtonWidth
	local animatedWidth, setWidthGoal
	local finalButtonWidth
	local buttonIsVisible
	if FFlagAddTraversalBackButtonAnimation then
		initButtonWidth = React.useRef(nil :: number?)
		prevButtonWidth = React.useRef(nil :: number?)
		local easeConfig = React.useMemo(function()
			return {
				duration = tokens.Time.Time_300,
				easingStyle = tokens.Ease.StandardOut,
			} :: any
		end, { tokens })
		animatedWidth, setWidthGoal = ReactOtter.useAnimatedBinding(ANIMATION_START_VALUE, function(finalValue: number)
			initButtonWidth.current = nil
			prevButtonWidth.current = nil
		end)
		React.useEffect(function()
			if isVisible then
				setWidthGoal(ReactOtter.ease(ANIMATION_FINAL_VALUE, easeConfig))
			else
				setWidthGoal(ReactOtter.ease(ANIMATION_START_VALUE, easeConfig))
			end
		end, { isVisible, easeConfig })
		finalButtonWidth = React.useCallback(function(widthAnimationProgress: number)
			-- maxButtonWidth is too large, need to truncate once TeleportButton reaches its max width
			if isVisible and buttonRef.current then
				local currentButtonWidth = buttonRef.current.AbsoluteSize.X
				if not initButtonWidth.current then
					initButtonWidth.current = buttonRef.current.AbsoluteSize.X
				end
				if prevButtonWidth.current and prevButtonWidth.current >= currentButtonWidth then
					return  UDim2.new(0, prevButtonWidth.current, 0, 0)
				-- button has initial button width, do not use to set limit
				elseif initButtonWidth.current and initButtonWidth.current ~= currentButtonWidth then
					prevButtonWidth.current = currentButtonWidth
				end
			end
			local progressWidth = widthAnimationProgress * maxButtonWidth
			return UDim2.new(0, progressWidth, 0, 0)
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
		return (not FFlagFixUnibarRefactoringInTopBarApp or isVisible) and React.createElement(View, {
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
