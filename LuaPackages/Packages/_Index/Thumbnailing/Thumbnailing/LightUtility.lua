--[[
	Utility functions for reading out and implementing lighting info for a thumbnail.
	- array of point lights, with relative position and color.
	- ambient light stuff like time of day.
]]

local module = {}

local Lighting = game:GetService("Lighting")

local ColorUtility = require(script.Parent.ColorUtility)
local VectorUtility = require(script.Parent.VectorUtility)

export type LightDescType = {
	color: Color3,
	worldPos: Vector3,
}

export type JsonLightDescType = {
	color: string,
	pos: string,
}

export type LightExtraParamsType = {
	pointLights: { JsonLightDescType }?,
	clockTime: number?,
	brightness: number?,
}

module.AddLight = function(lightDesc: LightDescType, index: number)
	local part = Instance.new("Part")
	part.Anchored = true
	part.Transparency = 1
	part.Shape = Enum.PartType.Ball
	part.Color = lightDesc.color
	part.Name = "ThumbnailLightAnchor_" .. tostring(index)
	part.Parent = workspace

	local light = Instance.new("PointLight")
	light.Color = lightDesc.color
	light.Brightness = 3
	light.Range = 10
	light.Shadows = true
	light.Name = "PointLight_" .. tostring(index)
	light.Parent = part

	part.Position = lightDesc.worldPos
end

module.AddLightsFromExtraParams = function(extraParams: LightExtraParamsType?, targetCFrame: CFrame): boolean
	local changedSomething = false
	local epLights = extraParams and extraParams.pointLights

	if epLights then
		for i, lightDesc in ipairs(epLights) do
			local convertedLightDesc = {
				color = ColorUtility.Color3FromString(lightDesc.color),
				worldPos = targetCFrame * VectorUtility.Vector3FromJson(lightDesc.pos),
			}
			module.AddLight(convertedLightDesc, i)
			changedSomething = true
		end
	end

	local clockTime = extraParams and extraParams.clockTime
	if clockTime then
		Lighting.ClockTime = clockTime
		changedSomething = true
	end

	local brightness = extraParams and extraParams.brightness
	if brightness then
		Lighting.Brightness = brightness
		changedSomething = true
	end

	return changedSomething
end

-- We position the point light at this position relative to character's
-- humanoid root part's cframe.
local DefaultPointLightRelativePosition = Vector3.new(-5, 7, -5)

module.AddDefaultPointLightRelativeTo = function(cFrame: CFrame)
	local worldPos = cFrame * DefaultPointLightRelativePosition
	local lightDesc = {
		color = Color3.new(1, 1, 1),
		worldPos = worldPos,
	}
	module.AddLight(lightDesc, 0)
end

return module
