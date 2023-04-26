local LightingService = game:GetService("Lighting")
local Packages = script:FindFirstAncestor("SceneManagement").Parent
local LuauPolyfill = require(Packages.LuauPolyfill)
local Object = LuauPolyfill.Object

type LightingConfig = {
	Brightness: number?,
	ColorShift_Bottom: Color3?,
	ColorShift_Top: Color3?,
	OutdoorAmbient: Color3?,
	Ambient: Color3?,
	ClockTime: number?,
	GeographicLatitude: number?,
	TimeOfDay: string?,
	FogColor: Color3?,
	FogEnd: number?,
	FogStart: number?,
}

type SkyConfig = {
	CelestialBodiesShown: boolean?,
	StarCount: number?,
	SkyboxAssetLocation: string?,
}

type BloomConfig = {
	Intensity: number?,
	Size: number?,
	Threshold: number?,
}

type ColorCorrectionConfig = {
	Brightness: number?,
	Contrast: number?,
	Saturation: number?,
}

export type Configs = {
	LightingConfig: LightingConfig?,
	SkyConfig: SkyConfig?,
	BloomEnabled: boolean?,
	BloomConfig: BloomConfig?,
	ColorCorrectionEnabled: boolean?,
	ColorCorrectionConfig: ColorCorrectionConfig?,
}

-- Use dark theme as default since 10ft UI will only have dark theme for now
local defaultConfigs = {
	LightingConfig = {
		Brightness = 1,
		ColorShift_Bottom = Color3.fromRGB(232, 255, 146),
		ColorShift_Top = Color3.fromRGB(85, 136, 167),
		OutdoorAmbient = Color3.fromRGB(0, 0, 0),
		Ambient = Color3.fromRGB(170, 170, 170),
		ClockTime = 12,
		GeographicLatitude = 41.733,
		TimeOfDay = "12:00:00",
		FogColor = Color3.fromRGB(45, 46, 49),
		FogEnd = 92,
		FogStart = 20,
	},
	SkyConfig = {
		CelestialBodiesShown = false,
		StarCount = 0,
		SkyboxAssetLocation = "rbxasset://textures/ui/AvatarExperience/AvatarExperienceSkyboxDarkTheme.png",
	},
	BloomEnabled = false,
	BloomConfig = {
		Intensity = 0.3,
		Size = 12,
		Threshold = 0.95,
	},
	ColorCorrectionEnabled = false,
	ColorCorrectionConfig = {
		Brightness = 0,
		Contrast = 0,
		Saturation = 0,
	},
}

local function configureLighting(lightingConfig: LightingConfig?)
	local config = Object.assign({}, defaultConfigs.LightingConfig, lightingConfig or {})
	LightingService.Brightness = config.Brightness
	LightingService.ColorShift_Bottom = config.ColorShift_Bottom
	LightingService.ColorShift_Top = config.ColorShift_Top
	LightingService.OutdoorAmbient = config.OutdoorAmbient
	LightingService.Ambient = config.Ambient
	LightingService.ClockTime = config.ClockTime
	LightingService.GeographicLatitude = config.GeographicLatitude
	LightingService.TimeOfDay = config.TimeOfDay
	LightingService.FogColor = config.FogColor
	LightingService.FogEnd = config.FogEnd
	LightingService.FogStart = config.FogStart
end

local function getOrCreateSky(): Sky
	local sky = LightingService:FindFirstChild("Sky") :: Sky
	if sky == nil then
		sky = Instance.new("Sky") :: Sky
		sky.Parent = LightingService
	end
	return sky
end

local function configureSky(sky: Sky, skyConfig: SkyConfig?)
	local config = Object.assign({}, defaultConfigs.SkyConfig, skyConfig or {})
	sky.CelestialBodiesShown = config.CelestialBodiesShown
	sky.StarCount = config.StarCount
	sky.SkyboxBk = config.SkyboxAssetLocation
	sky.SkyboxDn = config.SkyboxAssetLocation
	sky.SkyboxFt = config.SkyboxAssetLocation
	sky.SkyboxLf = config.SkyboxAssetLocation
	sky.SkyboxRt = config.SkyboxAssetLocation
	sky.SkyboxUp = config.SkyboxAssetLocation
end

local function getBloom(): BloomEffect?
	return LightingService:FindFirstChild("Bloom") :: BloomEffect
end

local function getOrCreateBloom(): BloomEffect
	local bloom = getBloom() :: BloomEffect
	if bloom == nil then
		bloom = Instance.new("BloomEffect") :: BloomEffect
		bloom.Parent = LightingService
	end
	return bloom
end

local function configureBloom(bloom: BloomEffect, bloomConfig: BloomConfig?)
	local config = Object.assign({}, defaultConfigs.BloomConfig, bloomConfig or {})
	bloom.Enabled = true
	bloom.Intensity = config.Intensity
	bloom.Size = config.Size
	bloom.Threshold = config.Threshold
end

local function getColorCorrection(): ColorCorrectionEffect?
	return LightingService:FindFirstChild("ColorCorrection") :: ColorCorrectionEffect
end

local function getOrCreateColorCorrection(): ColorCorrectionEffect
	local colorCorrection = getColorCorrection() :: ColorCorrectionEffect
	if colorCorrection == nil then
		colorCorrection = Instance.new("ColorCorrectionEffect") :: ColorCorrectionEffect
		colorCorrection.Parent = LightingService
	end
	return colorCorrection
end

local function configureColorCorrection(
	colorCorrection: ColorCorrectionEffect,
	colorCorrectionConfig: ColorCorrectionConfig?
)
	local config = Object.assign({}, defaultConfigs.ColorCorrectionConfig, colorCorrectionConfig or {})
	colorCorrection.Enabled = true
	colorCorrection.Brightness = config.Brightness
	colorCorrection.Contrast = config.Contrast
	colorCorrection.Saturation = config.Saturation
end

local function configure(configs: Configs?)
	local bloomEnabled = defaultConfigs.BloomEnabled or ((configs and configs.BloomEnabled) or false)
	local colorCorrectionEnabled = defaultConfigs.ColorCorrectionEnabled
		or ((configs and configs.ColorCorrectionEnabled) or false)

	local lightingConfig = if configs then configs.LightingConfig else nil
	local skyConfig = if configs then configs.SkyConfig else nil
	local bloomConfig = if configs then configs.BloomConfig else nil
	local colorCorrectionConfig = if configs then configs.ColorCorrectionConfig else nil

	configureLighting(lightingConfig)

	local sky = getOrCreateSky()
	configureSky(sky, skyConfig)

	if bloomEnabled then
		local bloom = getOrCreateBloom()
		configureBloom(bloom, bloomConfig)
	else
		local bloom = getBloom()
		if bloom ~= nil then
			bloom.Enabled = false
		end
	end

	if colorCorrectionEnabled then
		local colorCorrection = getOrCreateColorCorrection()
		configureColorCorrection(colorCorrection, colorCorrectionConfig)
	else
		local colorCorrection = getColorCorrection()
		if colorCorrection ~= nil then
			colorCorrection.Enabled = false
		end
	end
end

return {
	configure = configure,
}
