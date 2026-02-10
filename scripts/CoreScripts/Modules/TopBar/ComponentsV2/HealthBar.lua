-- Services
local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")
local StarterGui = game:GetService("StarterGui")

-- Paths
local Components = script.Parent
local TopBar = Components.Parent
local Constants = require(TopBar.Constants)

-- Modules
local CoreGuiCommon = require(CorePackages.Workspace.Packages.CoreGuiCommon)
local Foundation = require(CorePackages.Packages.Foundation)
local React = require(CorePackages.Packages.React)
local RobloxAppHooks = require(CorePackages.Workspace.Packages.RobloxAppHooks)
local RobloxAppEnums = require(CorePackages.Workspace.Packages.RobloxAppEnums)
local Signals = require(CorePackages.Packages.Signals)
local SignalsReact = require(CorePackages.Packages.SignalsReact)

-- Flags
local FFlagClampHealthPercentage = CoreGuiCommon.Flags.FFlagClampHealthPercentage

-- Components
local View = Foundation.View
local useDeviceOrientation = RobloxAppHooks.useDeviceOrientation

local HEALTHBAR_COLORS: {[string]: {Color: Color3, Fraction: number}} = {
    Red = {
        Color = Constants.HealthRedColor,
        Fraction = 0.1,
    },
    Yellow = {
        Color = Constants.HealthYellowColor,
        Fraction = 0.5,
    },
    Green = {
        Color = Constants.HealthGreenColor,
        Fraction = 0.8,
    },
}

local function getHealthBarColor(healthPercent)
	if healthPercent <= HEALTHBAR_COLORS.Red.Fraction then
		return HEALTHBAR_COLORS.Red.Color
	elseif healthPercent >= HEALTHBAR_COLORS.Green.Fraction then
		return HEALTHBAR_COLORS.Green.Color
	end

	-- Shepard's Interpolation
	local numeratorSum = Vector3.new(0, 0, 0)
	local denominatorSum = 0
	for _, barColor in HEALTHBAR_COLORS do
        local colorSampleValue = Vector3.new(barColor.Color.R, barColor.Color.G, barColor.Color.B)
        local samplePoint = barColor.Fraction
		local distance = healthPercent - samplePoint
		if distance == 0 then
			-- If we are exactly on an existing sample value then we don't need to interpolate
			return Color3.new(colorSampleValue.X, colorSampleValue.Y, colorSampleValue.Z)
		else
			local wi = 1 / (distance * distance)
			numeratorSum = numeratorSum + wi * colorSampleValue
			denominatorSum = denominatorSum + wi
		end
	end
	local result = numeratorSum / denominatorSum
	return Color3.new(result.X, result.Y, result.Z)
end

type HealthBarProps = {layoutOrder: number?}

local function HealthBar(props: HealthBarProps) 
    local tokens = Foundation.Hooks.useTokens()
    local deviceOrientation = useDeviceOrientation()
	local localHumanoidStore = SignalsReact.useSignalState(CoreGuiCommon.Stores.GetLocalHumanoidStore)

    local mountHealthBar, setMountHealthBar = React.useState(StarterGui:GetCoreGuiEnabled(Enum.CoreGuiType.Health))

    local health, setHealth = React.useBinding(Constants.InitialHealth)
    local maxHealth, setMaxHealth = React.useBinding(Constants.InitialHealth)
    local isDead, setIsDead = React.useBinding(false)
    
    local healthPercent = React.joinBindings({ health, maxHealth, isDead }):map(function(values)
        local health = values[1]
        local maxHealth = values[2]
        local isDead = values[3]

        local healthPercent = 1
        if isDead then
            healthPercent = 0
        elseif maxHealth > 0 then
            if FFlagClampHealthPercentage then
                healthPercent = math.clamp(health / maxHealth, 0, 1)
            else
                healthPercent = health / maxHealth
            end
        end

        return healthPercent
    end)

    local healthVisible = React.joinBindings({ health, maxHealth }):map(function(values: {number})
        return values[1] < values[2]
    end)

    React.useEffect(function()
        local disposeHealthConnection = Signals.createEffect(function(scope)
            local healthValue = localHumanoidStore.getHealthValue(scope)

            setHealth(healthValue.health or Constants.InitialHealth)
            setMaxHealth(healthValue.maxHealth or Constants.InitialHealth)
            setIsDead(healthValue.isDead or false)
        end)

        local coreGuiChangedSignalConn = StarterGui.CoreGuiChangedSignal:Connect(
            function(coreGuiType: Enum.CoreGuiType, enabled: boolean)
                if coreGuiType == Enum.CoreGuiType.Health or coreGuiType == Enum.CoreGuiType.All then
                    setMountHealthBar(enabled)
                end
            end)

		return function() 
            disposeHealthConnection()
			coreGuiChangedSignalConn:Disconnect()
		end
	end, { localHumanoidStore })

    return if mountHealthBar then React.createElement(View, {
        tag = "anchor-top-right position-top-right",
		Visible = healthVisible,
		Size = UDim2.fromOffset(
            if deviceOrientation == RobloxAppEnums.DeviceOrientationMode.Portrait
                then tokens.Size.Size_2000 else tokens.Size.Size_3000, 
            tokens.Size.Size_400
            ),
		LayoutOrder = props.layoutOrder,
	}, {
		HealthBar = React.createElement(View, {
            tag = "bg-surface-300 radius-medium size-full",
            backgroundStyle = {
                Color3 = tokens.Color.Extended.Gray.Gray_700.Color3,
                Transparency = 0.2,
            },
            stroke = {
                Thickness = tokens.Stroke.Thicker,
                Transparency = 0.2,
                BorderStrokePosition = Enum.BorderStrokePosition.Outer,
            },
			Position = UDim2.fromScale(0, 0.5),
			AnchorPoint = Vector2.new(0, 0.5),
		}, {
			Fill = React.createElement(View, {
                tag = "anchor-left-center radius-medium",
                backgroundStyle = healthPercent:map(function(healthPercent) 
                    return {
                        Color3 = getHealthBarColor(healthPercent), 
                        Transparency = 0
                    } 
                end),
				Size = healthPercent:map(function(healthPercent)
					return UDim2.fromScale(healthPercent, 1)
				end),
			}),
		}),
	}) else nil
end

return React.memo(HealthBar)