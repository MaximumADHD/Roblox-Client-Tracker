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

export type SceneLightDescType = {
	color: Color3?,
	brightness: number?,
	range: number?,
	angle: number?,
	shadows: boolean?,
	enabled: boolean?,

	lightType: string?,

	partSize: Vector3?,
	partType: Enum.PartType?,
	partCFrame: CFrame,
}

export type SunlightConfigJsonType = {
	brightness: string?,
	ambient: string?,
	colorShiftBottom: string?,
	colorShiftTop: string?,
	environmentDiffuseScale: string?,
	environmentSpecularScale: string?,
	globalShadows: string?,
	shadowSoftness: string?,
	outdoorAmbient: string?,
	clockTime: string?,
	geographicLatitude: string?,
	exposureCompensation: string?,
	timeOfDay: string?,
}

export type SpotLightsIn3PointLightingConfig = {
	rotation: string?,
	keyLight: SceneLightDescType?,
	fillLight: SceneLightDescType?,
}

export type SpotLightsIn3PointLightingJsonConfig = {
	rotation: string?,
	keyCFrame: string?,
	keyBrightness: string?,
	keyRange: string?,
	keyAngle: string?,
	keyColor: string?,
	fillCFrame: string?,
	fillBrightness: string?,
	fillRange: string?,
	fillAngle: string?,
	fillColor: string?,
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

module.SetupSunlightWithJsonConfig = function(config: SunlightConfigJsonType)
	config = config
		or {
			brightness = "1",
			ambient = [[124,124,124]],
			colorShiftBottom = [[108,94,66]],
			colorShiftTop = [[94,100,172]],
			environmentDiffuseScale = "0",
			environmentSpecularScale = "1",
			globalShadows = "true",
			shadowSoftness = "0",
			outdoorAmbient = [[0,0,0]],
			clockTime = "9.5",
			geographicLatitude = "330",
			exposureCompensation = "0",
			timeOfDay = [[09:30:00]],
		}
	Lighting.Brightness = config.brightness and tonumber(config.brightness) or 1

	local ambient = config.ambient and config.ambient:split(",") or { "124", "124", "124" } :: { string }
	Lighting.Ambient = Color3.fromRGB(tonumber(ambient[1]), tonumber(ambient[2]), tonumber(ambient[3]))

	local colorShiftBottom = config.colorShiftBottom and config.colorShiftBottom:split(",")
		or { "108", "94", "66" } :: { string }
	local colorShiftTop = config.colorShiftTop and config.colorShiftTop:split(",")
		or { "94", "100", "172" } :: { string }
	Lighting.ColorShift_Bottom =
		Color3.fromRGB(tonumber(colorShiftBottom[1]), tonumber(colorShiftBottom[2]), tonumber(colorShiftBottom[3]))
	Lighting.ColorShift_Top =
		Color3.fromRGB(tonumber(colorShiftTop[1]), tonumber(colorShiftTop[2]), tonumber(colorShiftTop[3]))

	-- Be cautious with the EnvironmentDiffuseScale value on RCC. On CPU emulation layer, it might behave weirdly by the date 09/17/2024.
	Lighting.EnvironmentDiffuseScale = config.environmentDiffuseScale and tonumber(config.environmentDiffuseScale) or 0
	Lighting.EnvironmentSpecularScale = config.environmentSpecularScale and tonumber(config.environmentSpecularScale)
		or 1
	Lighting.GlobalShadows = config.globalShadows and config.globalShadows == "true" or false
	Lighting.ShadowSoftness = config.shadowSoftness and tonumber(config.shadowSoftness) or 0

	local outdoorAmbient = config.outdoorAmbient and config.outdoorAmbient:split(",") or { "0", "0", "0" } :: { string }
	Lighting.OutdoorAmbient =
		Color3.fromRGB(tonumber(outdoorAmbient[1]), tonumber(outdoorAmbient[2]), tonumber(outdoorAmbient[3]))
	Lighting.ClockTime = config.clockTime and tonumber(config.clockTime) or 9.5
	Lighting.GeographicLatitude = config.geographicLatitude and tonumber(config.geographicLatitude) or 330
	Lighting.ExposureCompensation = config.exposureCompensation and tonumber(config.exposureCompensation) or 0
	Lighting.TimeOfDay = config.timeOfDay or "09:30:00"
end

module.SetupSceneLight = function(lightDesc: SceneLightDescType, name: string?)
	lightDesc = lightDesc or {} :: SceneLightDescType
	local lightType = lightDesc.lightType or "SpotLight"
	name = name or lightType
	local part = Instance.new("Part")
	part.Anchored = true
	part.Transparency = 1
	part.Size = lightDesc.partSize or Vector3.new(4, 1, 2)
	part.Shape = lightDesc.partType or Enum.PartType.Block
	part.Name = "ThumbnailLightAnchor_" .. tostring(name)
	part.Parent = workspace

	local light = Instance.new(lightType)
	light.Enabled = if lightDesc.enabled ~= nil then lightDesc.enabled else true
	light.Color = lightDesc.color or Color3.fromRGB(255, 255, 255)
	light.Brightness = lightDesc.brightness or 10
	light.Range = lightDesc.range or 12
	light.Angle = lightDesc.angle or 30
	light.Shadows = if lightDesc.shadows ~= nil then lightDesc.shadows else true
	light.Name = tostring(name)
	light.Parent = part

	part.CFrame = lightDesc.partCFrame
end

module.SetupSpotLight = function(lightDesc: SceneLightDescType, name: string?)
	lightDesc = lightDesc or {} :: SceneLightDescType
	lightDesc.lightType = "SpotLight"
	module.SetupSceneLight(lightDesc, name)
end

--[[
	Setup the key light and fill light for 3-point lighting.
	The default value are from the UA Avatar Scene Light Setting.
]]
module.SetupSpotLightsIn3PointLighting = function(spotLightsConfig: SpotLightsIn3PointLightingConfig)
	spotLightsConfig = spotLightsConfig
		or {
			keyLight = {
				partCFrame = CFrame.new(2.219, 103.178, 4.675) * CFrame.Angles(30, 60, -90),
				color = Color3.fromRGB(218, 196, 144),
				brightness = 11.2,
				range = 12,
				angle = 54,
			},
			fillLight = {
				partCFrame = CFrame.new(3.554, 107.01, -1.036) * CFrame.Angles(-15, 90, -90),
				color = Color3.fromRGB(255, 255, 255),
				brightness = 1.6,
				range = 12,
				angle = 36,
			},
		}
	if spotLightsConfig.keyLight then
		module.SetupSpotLight(spotLightsConfig.keyLight, "KeyLight")
	end
	if spotLightsConfig.fillLight then
		module.SetupSpotLight(spotLightsConfig.fillLight, "FillLight")
	end
end

module.SetupSpotLightsIn3PointLightingWithJsonConfig = function(spotLightsConfig: SpotLightsIn3PointLightingJsonConfig)
	spotLightsConfig = spotLightsConfig
		or {
			rotation = "105", -- rotate the keyCFrame and fillCFrame by 105 degrees around the y-axis if exist
			keyCFrame = "2.219,103.178,4.675,30,60,-90",
			keyBrightness = "11.2",
			keyRange = "12",
			keyAngle = "54",
			keyColor = [[218,196,144]],
			fillCFrame = "3.554,107.01,-1.036,-15,90,-90",
			fillBrightness = "1.6",
			fillRange = "12",
			fillAngle = "36",
			fillColor = [[255,255,255]],
		}
	local rotateDegrees = spotLightsConfig.rotation and tonumber(spotLightsConfig.rotation) or 105
	local rotateDegreesAroundYAxis = CFrame.Angles(0, math.rad(rotateDegrees), 0)

	local keySpotLightCFrameArray = spotLightsConfig.keyCFrame and spotLightsConfig.keyCFrame:split(",")
		or { "2.219", "103.178", "4.675", "30", "60", "-90" } :: { string }
	local keySpotLightCFrame = rotateDegreesAroundYAxis:ToWorldSpace(
		CFrame.new(
			tonumber(keySpotLightCFrameArray[1]) or 0,
			tonumber(keySpotLightCFrameArray[2]) or 0,
			tonumber(keySpotLightCFrameArray[3]) or 0
		)
			* CFrame.Angles(
				math.rad(tonumber(keySpotLightCFrameArray[4]) or 0),
				math.rad(tonumber(keySpotLightCFrameArray[5]) or 0),
				math.rad(tonumber(keySpotLightCFrameArray[6]) or 0)
			)
	)

	local fillSpotLightCFrameArray = spotLightsConfig.fillCFrame and spotLightsConfig.fillCFrame:split(",")
		or { "3.554", "107.01", "-1.036", "-15", "90", "-90" } :: { string }
	local fillSpotLightCFrame = rotateDegreesAroundYAxis:ToWorldSpace(
		CFrame.new(
			tonumber(fillSpotLightCFrameArray[1]) or 0,
			tonumber(fillSpotLightCFrameArray[2]) or 0,
			tonumber(fillSpotLightCFrameArray[3]) or 0
		)
			* CFrame.Angles(
				math.rad(tonumber(fillSpotLightCFrameArray[4]) or 0),
				math.rad(tonumber(fillSpotLightCFrameArray[5]) or 0),
				math.rad(tonumber(fillSpotLightCFrameArray[6]) or 0)
			)
	)

	local keyBrightness = spotLightsConfig.keyBrightness and tonumber(spotLightsConfig.keyBrightness) or 11.2
	local keyRange = spotLightsConfig.keyRange and tonumber(spotLightsConfig.keyRange) or 12
	local keyAngle = spotLightsConfig.keyAngle and tonumber(spotLightsConfig.keyAngle) or 54
	local keyColor = spotLightsConfig.keyColor and spotLightsConfig.keyColor:split(",")
		or { "218", "196", "144" } :: { string }

	local fillBrightness = spotLightsConfig.fillBrightness and tonumber(spotLightsConfig.fillBrightness) or 1.6
	local fillRange = spotLightsConfig.fillRange and tonumber(spotLightsConfig.fillRange) or 12
	local fillAngle = spotLightsConfig.fillAngle and tonumber(spotLightsConfig.fillAngle) or 36
	local fillColor = spotLightsConfig.fillColor and spotLightsConfig.fillColor:split(",")
		or { "255", "255", "255" } :: { string }

	module.SetupSpotLightsIn3PointLighting({
		keyLight = {
			partCFrame = keySpotLightCFrame,
			color = Color3.fromRGB(tonumber(keyColor[1]), tonumber(keyColor[2]), tonumber(keyColor[3])),
			brightness = keyBrightness,
			range = keyRange,
			angle = keyAngle,
		},
		fillLight = {
			partCFrame = fillSpotLightCFrame,
			color = Color3.fromRGB(tonumber(fillColor[1]), tonumber(fillColor[2]), tonumber(fillColor[3])),
			brightness = fillBrightness,
			range = fillRange,
			angle = fillAngle,
		},
	})
end

return module
