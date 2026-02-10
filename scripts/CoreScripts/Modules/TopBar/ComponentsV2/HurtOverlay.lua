-- Services
local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")
local StarterGui = game:GetService("StarterGui")

-- Paths
local Components = script.Parent
local TopBar = Components.Parent
local Constants = require(TopBar.Constants)

-- Modules
local CachedPolicyService = require(CorePackages.Workspace.Packages.CachedPolicyService)
local CoreGuiCommon = require(CorePackages.Workspace.Packages.CoreGuiCommon)
local Foundation = require(CorePackages.Packages.Foundation)
local Motion = require(CorePackages.Packages.Motion)
local React = require(CorePackages.Packages.React)
local Signals = require(CorePackages.Packages.Signals)
local SignalsReact = require(CorePackages.Packages.SignalsReact)

-- Flags
local FFlagUseNewHurtOverlayImage = require(TopBar.Flags.FFlagUseNewHurtOverlayImage)

-- Components
local Image = Foundation.Image
local View = Foundation.View

local MOTOR_OPTIONS = {
	frequency = 0.75,
	dampingRatio = 1,
}

local RED_OVERLAY_COLOR = Color3.fromRGB(187, 0, 4)
local WHITE_OVERLAY_COLOR = Color3.new(1, 1, 1)

local ANIMATION_STATES = {
    showOverlay = Motion.createState({
        size = UDim2.fromScale(1.5, 1.5),
        transparency = 0,
    }, {
        default = Motion.transition(Motion.TransitionPreset.Default, { duration = 0 }),
    }),
    hideOverlay = Motion.createState({
        size = UDim2.fromScale(3, 3),
        transparency = 1,
    }, {
        default = Motion.transition(Motion.TransitionPreset.Default, { duration = 0.3 }),
    })
}

type HurtOverlayProps = {}

function HurtOverlay(props: HurtOverlayProps)
    local animationValues, animate = Motion.useMotion(ANIMATION_STATES.hideOverlay)
    local isAnimating, setIsAnimating = React.useBinding(false)

    local mountHurtOverlay, setMountHurtOverlay = React.useState(StarterGui:GetCoreGuiEnabled(Enum.CoreGuiType.Health))

	local localHumanoidStore = SignalsReact.useSignalState(CoreGuiCommon.Stores.GetLocalHumanoidStore)
    local prevHealthValue = React.useRef(localHumanoidStore.getHealthValue(false))

    React.useEffect(function()
        local disposeHealthConnection = Signals.createEffect(function(scope)
            local healthValue = localHumanoidStore.getHealthValue(scope)
            local prevHealth = prevHealthValue.current 
            prevHealthValue.current = healthValue

            if not (healthValue.health and healthValue.maxHealth and prevHealthValue.current.health)
                or not (healthValue.isDead and prevHealthValue.current.isDead) then 
                return
            end
                
            local damageTaken = prevHealthValue.current.health - healthValue.health
            if damageTaken / healthValue.maxHealth < Constants.HealthPercentForOverlay then
                return 
            end

            animate(ANIMATION_STATES.showOverlay, {
                onAnimationComplete = function(propertyOrComplete)
                    if propertyOrComplete == true then 
                        animate(ANIMATION_STATES.hideOverlay)
                    end
                end,
            })
        end)

        local coreGuiChangedSignalConn = StarterGui.CoreGuiChangedSignal:Connect(
            function(coreGuiType: Enum.CoreGuiType, enabled: boolean)
                if coreGuiType == Enum.CoreGuiType.Health or coreGuiType == Enum.CoreGuiType.All then
                    setMountHurtOverlay(enabled)
                end
            end)

        return function() 
            disposeHealthConnection()
            coreGuiChangedSignalConn:Disconnect()
        end
    end, { localHumanoidStore })

	local hurtOverlayImage = if FFlagUseNewHurtOverlayImage 
		then "rbxasset://textures/ui/TopBar/HurtOverlayAsset.png" 
		else "rbxasset://textures/ui/TopBar/WhiteOverlayAsset.png"
	local hurtOverlayColor = RED_OVERLAY_COLOR
	if CachedPolicyService:IsSubjectToChinaPolicies() then
		hurtOverlayColor = WHITE_OVERLAY_COLOR
	end

	return if mountHurtOverlay then React.createElement(Image, {
        tag = "anchor-center-center position-center-center",
		Image = hurtOverlayImage,
		imageStyle = animationValues.transparency:map(function(transparency) 
            return { 
                Color3 = hurtOverlayColor, 
                Transparency = transparency,
            }
        end),
        ScaleType = Enum.ScaleType.Crop,
		Size = animationValues.size,
	}) else nil
end

return React.memo(HurtOverlay)