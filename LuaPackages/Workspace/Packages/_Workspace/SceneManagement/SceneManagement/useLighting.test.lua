local LightingService = game:GetService("Lighting")
local Packages = script:FindFirstAncestor("SceneManagement").Parent
local React = require(Packages.React)
local ReactRoblox = require(Packages.ReactRoblox)
local JestGlobals = require(Packages.Dev.JestGlobals)
local it = JestGlobals.it
local expect = JestGlobals.expect
local beforeEach = JestGlobals.beforeEach

local useLighting = require(script.Parent.useLighting)

local testConfigs = {
	LightingConfig = {
		Brightness = 2,
		ColorShift_Bottom = Color3.new(1, 0, 0),
		ColorShift_Top = Color3.new(0, 1, 0),
		OutdoorAmbient = Color3.new(1, 0, 1),
		Ambient = Color3.new(1, 1, 0),
		ClockTime = 8.5,
		GeographicLatitude = 12,
		TimeOfDay = "08:30:00",
		FogColor = Color3.new(0, 1, 1),
		FogEnd = 20,
		FogStart = 30,
	},
	SkyConfig = {
		CelestialBodiesShown = true,
		StarCount = 520,
		SkyboxAssetLocation = "rbxasset://textures/sky/white.png",
	},
	BloomEnabled = true,
	BloomConfig = {
		Intensity = 1,
		Size = 19,
		Threshold = 3,
	},
	ColorCorrectionEnabled = true,
	ColorCorrectionConfig = {
		Brightness = 1,
		Contrast = 2,
		Saturation = 3,
	},
}

beforeEach(function()
	for _, instance in LightingService:GetChildren() do
		instance:Destroy()
	end
end)

it("should create, update and destroy without errors with default props", function()
	local container = Instance.new("Folder")
	local root = ReactRoblox.createRoot(container)

	expect(LightingService:FindFirstChild("Sky")).toBeNil()
	expect(LightingService:FindFirstChild("Bloom")).toBeNil()
	expect(LightingService:FindFirstChild("ColorCorrection")).toBeNil()

	ReactRoblox.act(function()
		root:render(React.createElement(useLighting))
	end)

	expect(LightingService:FindFirstChild("Sky")).never.toBeNil()
	expect(LightingService:FindFirstChild("Bloom")).toBeNil()
	expect(LightingService:FindFirstChild("ColorCorrection")).toBeNil()

	-- update with test props
	ReactRoblox.act(function()
		root:render(React.createElement(useLighting, testConfigs))
	end)

	local sky = LightingService:FindFirstChild("Sky") :: Sky
	local bloom = LightingService:FindFirstChild("Bloom") :: BloomEffect
	local colorCorrection = LightingService:FindFirstChild("ColorCorrection") :: ColorCorrectionEffect

	expect(colorCorrection).never.toBeNil()

	expect(LightingService.Brightness).toEqual(testConfigs.LightingConfig.Brightness)
	expect(LightingService.ColorShift_Bottom).toEqual(testConfigs.LightingConfig.ColorShift_Bottom)
	expect(LightingService.ColorShift_Top).toEqual(testConfigs.LightingConfig.ColorShift_Top)
	expect(LightingService.OutdoorAmbient).toEqual(testConfigs.LightingConfig.OutdoorAmbient)
	expect(LightingService.Ambient).toEqual(testConfigs.LightingConfig.Ambient)
	expect(LightingService.ClockTime).toEqual(testConfigs.LightingConfig.ClockTime)
	expect(LightingService.GeographicLatitude).toEqual(testConfigs.LightingConfig.GeographicLatitude)
	expect(LightingService.TimeOfDay).toEqual(testConfigs.LightingConfig.TimeOfDay)
	expect(LightingService.FogColor).toEqual(testConfigs.LightingConfig.FogColor)
	expect(LightingService.FogEnd).toEqual(testConfigs.LightingConfig.FogEnd)
	expect(LightingService.FogStart).toEqual(testConfigs.LightingConfig.FogStart)

	expect(bloom).never.toBeNil()
	expect(bloom.Intensity).toEqual(testConfigs.BloomConfig.Intensity)
	expect(bloom.Size).toEqual(testConfigs.BloomConfig.Size)
	expect(bloom.Threshold).toEqual(testConfigs.BloomConfig.Threshold)

	expect(sky).never.toBeNil()
	expect(colorCorrection.Brightness).toEqual(testConfigs.ColorCorrectionConfig.Brightness)
	expect(colorCorrection.Contrast).toEqual(testConfigs.ColorCorrectionConfig.Contrast)
	expect(colorCorrection.Saturation).toEqual(testConfigs.ColorCorrectionConfig.Saturation)

	root:unmount()
end)

it("should create, update and destroy without errors with props", function()
	local container = Instance.new("Folder")
	local root = ReactRoblox.createRoot(container)

	expect(LightingService:FindFirstChild("Sky")).toBeNil()
	expect(LightingService:FindFirstChild("Bloom")).toBeNil()
	expect(LightingService:FindFirstChild("ColorCorrection")).toBeNil()

	ReactRoblox.act(function()
		root:render(React.createElement(useLighting, testConfigs))
	end)

	local sky = LightingService:FindFirstChild("Sky") :: Sky
	local bloom = LightingService:FindFirstChild("Bloom") :: BloomEffect
	local colorCorrection = LightingService:FindFirstChild("ColorCorrection") :: ColorCorrectionEffect

	expect(colorCorrection).never.toBeNil()
	expect(LightingService.Brightness).toEqual(testConfigs.LightingConfig.Brightness)
	expect(LightingService.ColorShift_Bottom).toEqual(testConfigs.LightingConfig.ColorShift_Bottom)
	expect(LightingService.ColorShift_Top).toEqual(testConfigs.LightingConfig.ColorShift_Top)
	expect(LightingService.OutdoorAmbient).toEqual(testConfigs.LightingConfig.OutdoorAmbient)
	expect(LightingService.Ambient).toEqual(testConfigs.LightingConfig.Ambient)
	expect(LightingService.ClockTime).toEqual(testConfigs.LightingConfig.ClockTime)
	expect(LightingService.GeographicLatitude).toEqual(testConfigs.LightingConfig.GeographicLatitude)
	expect(LightingService.TimeOfDay).toEqual(testConfigs.LightingConfig.TimeOfDay)
	expect(LightingService.FogColor).toEqual(testConfigs.LightingConfig.FogColor)
	expect(LightingService.FogEnd).toEqual(testConfigs.LightingConfig.FogEnd)
	expect(LightingService.FogStart).toEqual(testConfigs.LightingConfig.FogStart)

	expect(bloom).never.toBeNil()
	expect(bloom.Enabled).toBeTruthy()
	expect(bloom.Intensity).toEqual(testConfigs.BloomConfig.Intensity)
	expect(bloom.Size).toEqual(testConfigs.BloomConfig.Size)
	expect(bloom.Threshold).toEqual(testConfigs.BloomConfig.Threshold)

	expect(sky).never.toBeNil()
	expect(colorCorrection.Enabled).toBeTruthy()
	expect(colorCorrection.Brightness).toEqual(testConfigs.ColorCorrectionConfig.Brightness)
	expect(colorCorrection.Contrast).toEqual(testConfigs.ColorCorrectionConfig.Contrast)
	expect(colorCorrection.Saturation).toEqual(testConfigs.ColorCorrectionConfig.Saturation)

	-- update with default props
	ReactRoblox.act(function()
		root:render(React.createElement(useLighting))
	end)

	expect(LightingService:FindFirstChild("Sky")).never.toBeNil()
	expect(LightingService:FindFirstChild("Bloom")).never.toBeNil()
	expect(LightingService:FindFirstChild("ColorCorrection")).never.toBeNil()
	expect(bloom.Enabled).toBeFalsy()
	expect(colorCorrection.Enabled).toBeFalsy()

	root:unmount()
end)
