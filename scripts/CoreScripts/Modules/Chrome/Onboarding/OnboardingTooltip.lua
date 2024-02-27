local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local GuiService = game:GetService("GuiService")

local UserInputService = game:GetService("UserInputService")
local VoiceChatServiceManager = require(RobloxGui.Modules.VoiceChat.VoiceChatServiceManager).default

local GetFStringFTUXVersion = require(script.Parent.GetFStringFTUXVersion)
local GetFIntFTUXDelay = require(script.Parent.GetFIntFTUXDelay)

local ReactFocusNavigation = require(CorePackages.Packages.ReactFocusNavigation)
local useLastInputMode = ReactFocusNavigation.useLastInputMode

local useLocalization = require(CorePackages.Workspace.Packages.Localization).Hooks.useLocalization

local React = require(CorePackages.Packages.React)
local Chrome = script.Parent.Parent
local Cryo = require(CorePackages.Cryo)
local ChromeService = require(Chrome.Service)

local LocalStore = require(RobloxGui.Modules.Chrome.Service.LocalStore)
local OnboardingTooltipAnchor = require(script.Parent.OnboardingTooltipAnchor)
local OnboardingAnalytics = require(script.Parent.OnboardingAnalytics)

local FTUX_LAST_SEEN_KEY = GetFStringFTUXVersion() .. "_LAST"
local FTUX_DISMISSED_TS = GetFStringFTUXVersion() .. "_DISMISSED_TS"
local FTUX_DISMISSED_COUNT = GetFStringFTUXVersion() .. "_DISMISSED_COUNT"
local FTUX_COMPLETED = GetFStringFTUXVersion() .. "_COMPLETED"

local UNIBAR_ANIMATION_DELAY = 0.2

local FTUX_PROMPT_DELAYS = {
	[1] = 86400,
	[2] = 259200,
	[3] = 604800,
}

local OnboardingTooltip = function(props)
	local currentStep, setCurrentStep = React.useState(0)
	local children = {}
	local tooltipRef = React.useRef(nil)
	local opportunistic, setOpportunistic = React.useState(false)
	local showLabels, setShowLabels = React.useState(true)
	local dismissed, setDismissed = React.useState(false)
	local lastInputMode = useLastInputMode()

	-- Timestamp of the last shown tooltip
	local timestamp = React.useRef(os.time())

	local localized = useLocalization({
		onboardHeader = "CoreScripts.FTUX.Onboard.Header",
		onboardBody = "CoreScripts.FTUX.Onboard.Body",
		micHeader = "CoreScripts.FTUX.Mic.Header",
		micBody = "CoreScripts.FTUX.Mic.Body",
		selfViewHeader = "CoreScripts.FTUX.SelfView.Header",
		selfViewBody = "CoreScripts.FTUX.SelfView.Body",
		toolsHeader = "CoreScripts.FTUX.Tools.Header",
		toolsBody = "CoreScripts.FTUX.Tools.Body",
		completeLabel = "Feature.SettingsHub.Prompt.GotIt",
		next = "CoreScripts.VRFTUX.Action.Next",
		showMe = "CoreScripts.FTUX.Onboard.ShowMe",
	})

	local onboardingSteps = React.useMemo(function()
		local steps = {
			{
				id = "unibar-open",
				canShow = function()
					-- show if no other tutorial steps were cleared
					local shownBefore = LocalStore.getValue("unibar-open")
					local openedBefore = LocalStore.getValue("chrome_toggle")
					local show = not shownBefore and not openedBefore
					if not show then
						setShowLabels(false)
					end
					return show
				end,
				before = function()
					ChromeService:open(true)
				end,
				target = function()
					local result = nil
					local TopBarApp = CoreGui:WaitForChild("TopBarApp")
					if TopBarApp then
						result = TopBarApp:FindFirstChild("chrome_toggle", true)
					end
					return result
				end,
				headerText = localized.onboardHeader,
				bodyText = localized.onboardBody,
				buttonText = localized.showMe,
			},

			{
				id = "opportunistic-open",
				canShow = function()
					-- only show if the open step was activated
					return LocalStore.getValue("unibar-open") or LocalStore.getValue("chrome_toggle")
				end,
				before = function()
					setOpportunistic(true)
				end,
				target = function()
					return nil
				end,
				after = function()
					setOpportunistic(false)
				end,
			},

			{
				id = "9-dot",
				before = function() end,
				canShow = function()
					-- show if no other tutorial steps were cleared
					local shownBefore = LocalStore.getValue("9-dot")
					local usedBefore = LocalStore.getValue("nine_dot")
					return not shownBefore and not usedBefore
				end,
				target = function()
					local result = nil
					local TopBarApp = CoreGui:WaitForChild("TopBarApp")
					if TopBarApp then
						result = TopBarApp:FindFirstChild("nine_dot", true)
					end
					return result
				end,
				headerText = localized.toolsHeader,
				bodyText = localized.toolsBody,
				buttonText = localized.next,
			},

			{
				id = "mic",
				canShow = function()
					local shownBefore = LocalStore.getValue("mic")
					local usedBefore = LocalStore.getValue("toggle_mic_mute")
					local voiceService = VoiceChatServiceManager:getService()
					return voiceService and not (shownBefore or usedBefore)
				end,
				before = function() end,
				target = function()
					local result = nil
					local TopBarApp = CoreGui:WaitForChild("TopBarApp")
					if TopBarApp then
						result = TopBarApp:FindFirstChild("toggle_mic_mute", true)
					end
					return result
				end,
				headerText = localized.micHeader,
				bodyText = localized.micBody,
				buttonText = localized.next,
			},

			{
				id = "self-view",
				before = function() end,
				canShow = function()
					-- show if no other tutorial steps were cleared
					local shownBefore = LocalStore.getValue("self-view")
					local usedBefore = LocalStore.getValue("selfie_view")
					return not shownBefore and not usedBefore
				end,
				target = function()
					local result = nil
					local TopBarApp = CoreGui:WaitForChild("TopBarApp")
					if TopBarApp then
						result = TopBarApp:FindFirstChild("selfie_view", true)
					end
					return result
				end,
				headerText = localized.selfViewHeader,
				bodyText = localized.selfViewBody,
				buttonText = localized.next,
			},
		} :: { any }

		local result = Cryo.List.filter(steps, function(step)
			return not step.canShow or step.canShow()
		end)

		-- Ensure we are not just showing the intro step
		-- and the user already completed the other steps
		if #result == 1 and (result[1].id == "unibar-open" or result[1].id == "opportunistic-open") then
			result = {}
		end
		return result
	end, {})

	local onSoftDismissal = React.useCallback(function()
		local timestampCurrent: number = if timestamp.current then timestamp.current else 0
		local timeOnScreen = os.time() - timestampCurrent
		setDismissed(true)

		local currentStepConfig = onboardingSteps[currentStep]
		if currentStepConfig then
			OnboardingAnalytics.dismissEvent({
				id = currentStepConfig.id,
				deliver_timestamp = timestampCurrent,
				duration = timeOnScreen,
				step = currentStep,
				hard_dismiss = false,
				maxSteps = #onboardingSteps,
			})
		end

		if currentStep == #onboardingSteps then
			LocalStore.storeForLocalPlayer(FTUX_COMPLETED, os.time())
		else
			local dismissCount = LocalStore.getValue(FTUX_DISMISSED_COUNT) or 0
			LocalStore.storeForLocalPlayer(FTUX_DISMISSED_COUNT, dismissCount + 1)
			LocalStore.storeForLocalPlayer(FTUX_DISMISSED_TS, os.time())
		end
	end, { #onboardingSteps, currentStep, OnboardingAnalytics } :: { any })

	local onHardDismissal = React.useCallback(function()
		local timestampCurrent: number = if timestamp.current then timestamp.current else 0
		local timeOnScreen = os.time() - timestampCurrent

		local currentStepConfig = onboardingSteps[currentStep]
		if currentStepConfig then
			OnboardingAnalytics.dismissEvent({
				id = currentStepConfig.id,
				deliver_timestamp = timestampCurrent,
				duration = timeOnScreen,
				step = currentStep,
				hard_dismiss = true,
				maxSteps = #onboardingSteps,
			})
		end

		setCurrentStep(#onboardingSteps)
		setDismissed(true)
		LocalStore.storeForLocalPlayer(FTUX_COMPLETED, os.time())
	end, { #onboardingSteps, currentStep, OnboardingAnalytics } :: { any })

	local target: any = React.useMemo(function()
		if onboardingSteps[currentStep] ~= nil then
			return onboardingSteps[currentStep].target()
		end
		return nil
	end, { currentStep, onboardingSteps })

	React.useEffect(function()
		local conn: RBXScriptConnection | nil = nil
		if target ~= nil then
			conn = GuiService.MenuOpened:Connect(function()
				if conn then
					conn:Disconnect()
					conn = nil
				end
				if not dismissed then
					onSoftDismissal()
				end
			end)
		end

		return function()
			if conn then
				conn:Disconnect()
				conn = nil
			end
		end
	end, { target, dismissed, onSoftDismissal })

	React.useEffect(function()
		local dismissalConnection: RBXScriptConnection? = nil
		if target ~= nil and not dismissed then
			dismissalConnection = UserInputService.InputBegan:Connect(function(input)
				if
					(
						input.UserInputType == Enum.UserInputType.Touch
						or input.UserInputType == Enum.UserInputType.MouseButton1
					) and tooltipRef.current ~= nil
				then
					local inputPosition = input.Position
					local guiPosition = tooltipRef.current.AbsolutePosition
					local guiSize = tooltipRef.current.AbsoluteSize

					-- If the input is outside the tooltip box
					if
						not (
							inputPosition.X >= guiPosition.X
							and inputPosition.X <= guiPosition.X + guiSize.X
							and inputPosition.Y >= guiPosition.Y
							and inputPosition.Y <= guiPosition.Y + guiSize.Y
						)
					then
						onSoftDismissal()
					end
				end
			end)
		end

		return function()
			if dismissalConnection then
				dismissalConnection:Disconnect()
				dismissalConnection = nil
			end
		end
	end, { target, dismissed, onSoftDismissal } :: { any })

	React.useEffect(function()
		-- Check FTUX display criteria
		-- TODO - Controller handling not supported for the 1st FTUX version
		if lastInputMode == "Focus" then
			return
		end

		local ts = os.time()

		-- Skip if already completed
		if LocalStore.getValue(FTUX_COMPLETED) ~= nil then
			return
		end

		-- Check time if previously dismissed
		local dismissCount = LocalStore.getValue(FTUX_DISMISSED_COUNT) or 0
		local dismissTs = LocalStore.getValue(FTUX_DISMISSED_TS) or 0
		local coolDown = FTUX_PROMPT_DELAYS[dismissCount]

		if dismissCount > 0 and coolDown ~= nil and ts - dismissTs < coolDown then
			return
		end

		coroutine.wrap(function(setCurrentStep)
			if #onboardingSteps > 0 then
				task.wait(GetFIntFTUXDelay())

				-- Check again for eligibility criteria
				if lastInputMode == "Focus" then
					return
				end

				local step = onboardingSteps[1]
				if step.before ~= nil then
					step.before()
				end

				task.wait(UNIBAR_ANIMATION_DELAY)
				setCurrentStep(1)

				if step.id ~= "opportunistic-open" then
					LocalStore.storeForLocalPlayer(FTUX_LAST_SEEN_KEY, os.time())
					timestamp.current = os.time()
				else
					OnboardingAnalytics.displayEvent({
						id = step.id,
						step = 1,
						maxSteps = #onboardingSteps,
						deliver_timestamp = timestamp.current,
					})
				end
			end
		end)(setCurrentStep)
	end, { onboardingSteps })

	local advanceToNextStep = React.useCallback(function(targetStep)
		local nextStepIndex = if targetStep then targetStep else currentStep + 1
		local step = onboardingSteps[nextStepIndex]
		local timestampCurrent = if timestamp.current then timestamp.current else 0
		local timeOnScreen = os.time() - timestampCurrent

		local currentStepConfig = onboardingSteps[currentStep]

		if currentStepConfig then
			LocalStore.storeForLocalPlayer(currentStepConfig.id, true)
			if currentStepConfig.after ~= nil then
				currentStepConfig.after()
			end

			OnboardingAnalytics.interactEvent({
				id = currentStepConfig.id,
				deliver_timestamp = timestamp.current,
				duration = timeOnScreen,
				step = currentStep,
				maxSteps = #onboardingSteps,
			})
		end

		coroutine.wrap(function(setCurrentStep)
			task.wait(UNIBAR_ANIMATION_DELAY)

			setCurrentStep(nextStepIndex)
			timestamp.current = os.time()

			if step then
				OnboardingAnalytics.displayEvent({
					id = step.id,
					deliver_timestamp = timestamp.current,
					step = nextStepIndex,
					maxSteps = #onboardingSteps,
				})
			end
		end)(setCurrentStep)
	end, { target, currentStep, setCurrentStep, ChromeService, onboardingSteps, LocalStore })

	local onUnibarOpened = React.useMemo(function()
		return function(status)
			if opportunistic then
				if status == ChromeService.MenuStatus.Open then
					LocalStore.storeForLocalPlayer(FTUX_LAST_SEEN_KEY, os.time())
					advanceToNextStep(2)
				end
			end
		end
	end, { opportunistic, advanceToNextStep, ChromeService, currentStep, setCurrentStep } :: { any })

	React.useEffect(function()
		-- check if already open
		ChromeService:status():connect(onUnibarOpened)
	end, { opportunistic, advanceToNextStep, ChromeService, currentStep } :: { any })

	if target ~= nil and ChromeService:status():get() == ChromeService.MenuStatus.Open then
		children["Target"] = React.createElement("Frame", {
			BackgroundTransparency = 1,
			Size = UDim2.new(0, target.AbsoluteSize.X, 0, target.AbsoluteSize.Y),
			Position = UDim2.new(0, target.AbsolutePosition.X, 0, 12),
		}, {

			TooltipAnchor = React.createElement(OnboardingTooltipAnchor, {
				ref = tooltipRef,
				step = currentStep,
				maxSteps = #onboardingSteps,
				showLabels = showLabels,
				completeLabel = localized.completeLabel,
				onboardingStep = onboardingSteps[currentStep],
				onNext = advanceToNextStep,
				onDismiss = onHardDismissal,
			}),
		})
	end

	return if not dismissed
		then React.createElement("Frame", {
			Size = UDim2.new(1, 0, 1, 0),
			BackgroundTransparency = 1,
		}, children)
		else nil
end

return OnboardingTooltip
