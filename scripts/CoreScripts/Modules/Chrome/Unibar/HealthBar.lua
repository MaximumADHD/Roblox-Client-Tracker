local CorePackages = game:GetService("CorePackages")
local React = require(CorePackages.Packages.React)
local Constants = require(script.Parent.Constants)

local Chrome = script.Parent.Parent
local useHealthBinding = require(Chrome.Hooks.useHealthBinding)
local useCoreGuiEnabled = require(Chrome.Hooks.useCoreGuiEnabled)
local useChromeMenuStatus = require(Chrome.Hooks.useChromeMenuStatus)
local ChromeService = require(Chrome.Service)

export type HealthBarProps = {
	size: React.Binding<UDim2>,
}

local function color3ToVector3(color3)
	return Vector3.new(color3.R, color3.G, color3.B)
end
local healthColorToPosition = {
	[color3ToVector3(Constants.HEALTH.RED)] = Constants.HEALTH.RED_THRESHOLD,
	[color3ToVector3(Constants.HEALTH.YELLOW)] = Constants.HEALTH.YELLOW_THRESHOLD,
	[color3ToVector3(Constants.HEALTH.GREEN)] = Constants.HEALTH.GREEN_THRESHOLD,
}

-- Keep the same color Interpolation logic from standalone version
local function getHealthBarColor(healthPercent)
	if healthPercent <= Constants.HEALTH.RED_THRESHOLD then
		return Constants.HEALTH.RED
	elseif healthPercent >= Constants.HEALTH.GREEN_THRESHOLD then
		return Constants.HEALTH.GREEN
	end

	-- Shepard's Interpolation
	local numeratorSum = Vector3.new(0, 0, 0)
	local denominatorSum = 0
	for color, samplePoint in pairs(healthColorToPosition) do
		local distance = healthPercent - samplePoint
		if distance == 0 then
			-- If we are exactly on an existing sample value then we don't need to interpolate
			return Color3.new(color.X, color.Y, color.Z)
		else
			local wi = 1 / (distance * distance)
			numeratorSum = numeratorSum + wi * color
			denominatorSum = denominatorSum + wi
		end
	end
	local result = numeratorSum / denominatorSum
	return Color3.new(result.X, result.Y, result.Z)
end

function HealthBar(props: HealthBarProps)
	local health = useHealthBinding()

	return React.createElement("Frame", {
		Name = "HealthBar",
		AnchorPoint = Vector2.new(0, 1),
		Position = UDim2.new(0, 0, 1, -1),
		Size = health:map(function(v)
			local d = (0.5 - v) * 2 -- distance from center point [-1 .. 1]
			return UDim2.new(v, (Constants.ICON_CELL_WIDTH / 4) * d, 0, 2)
		end),
		BorderSizePixel = 0,
		BackgroundTransparency = 1,
		ClipsDescendants = true,
		Visible = health:map(function(v)
			return v < 1
		end),
	}, {
		React.createElement("Frame", {
			AnchorPoint = Vector2.new(0, 1),
			Position = UDim2.new(0, 0, 1, 0),
			Size = props.size,
			BackgroundColor3 = health:map(getHealthBarColor),
		}, {
			React.createElement("UICorner", {
				CornerRadius = UDim.new(1, 0),
			}),
		}),
	})
end

function HealthBarToggled(props: HealthBarProps)
	local menuOpen = useChromeMenuStatus() == ChromeService.MenuStatus.Open
	local healthEnabled = useCoreGuiEnabled(Enum.CoreGuiType.Health)
	if healthEnabled and menuOpen then
		return React.createElement(HealthBar, props)
	end
	return nil :: any
end

return HealthBarToggled
