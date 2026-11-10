local CorePackages = game:GetService("CorePackages")

local JestGlobals = require(CorePackages.Packages.Dev.JestGlobals3)
local describe = JestGlobals.describe
local it = JestGlobals.it
local expect = JestGlobals.expect

local Roact = require(CorePackages.Packages.Roact)
local Rodux = require(CorePackages.Packages.Rodux)
local RoactRodux = require(CorePackages.Packages.RoactRodux)
local UnitTestHelpers = require(CorePackages.Workspace.Packages.UnitTestHelpers)
local findFirstInstance = UnitTestHelpers.findFirstInstance

local PublishAssetPromptFolder = script.Parent.Parent
local Reducer = require(PublishAssetPromptFolder.Reducer)
local OpenPublishAssetPrompt = require(PublishAssetPromptFolder.Actions.OpenPublishAssetPrompt)
local PromptType = require(PublishAssetPromptFolder.PromptType)

local EngineFeatureEnableImagePublish = game:GetEngineFeature("EnableImagePublish")

local function mountWithAsset(assetInstance, assetType)
	local PublishAssetPromptSingleStep = require(script.Parent.PublishAssetPromptSingleStep)

	local store = Rodux.Store.new(Reducer, nil, {
		Rodux.thunkMiddleware,
	})

	store:dispatch(
		OpenPublishAssetPrompt(
			PromptType.PublishAssetSingleStep,
			assetInstance,
			assetType,
			"test-guid-12345",
			{ Enum.ExperienceAuthScope.CreatorAssetsCreate }
		)
	)

	local element = Roact.createElement(RoactRodux.StoreProvider, {
		store = store,
	}, {
		ThemeProvider = UnitTestHelpers.createStyleProvider({
			PublishAssetPromptSingleStep = Roact.createElement(PublishAssetPromptSingleStep, {
				screenSize = Vector2.new(1920, 1080),
			}),
		}),
	})

	local container = Instance.new("Folder")
	local instance = Roact.mount(element, container)
	return instance, container
end

local function rendersImagePreview(container)
	-- The preview tiles the checkerboard behind the image; nothing else in the prompt tiles.
	return findFirstInstance(container, {
		ClassName = "ImageLabel",
		ScaleType = Enum.ScaleType.Tile,
	}) ~= nil
end

local function rendersObjectViewport(container)
	return findFirstInstance(container, { ClassName = "ViewportFrame" }) ~= nil
end

describe("PublishAssetPromptSingleStep", function()
	local modelAssetTypes = {
		{ name = "Model", assetType = Enum.AssetType.Model },
		{ name = "Package", assetType = Enum.AssetType.Package },
		{ name = "TShirtAccessory", assetType = Enum.AssetType.TShirtAccessory },
		{ name = "ShirtAccessory", assetType = Enum.AssetType.ShirtAccessory },
		{ name = "PantsAccessory", assetType = Enum.AssetType.PantsAccessory },
		{ name = "HairAccessory", assetType = Enum.AssetType.HairAccessory },
	}

	for _, entry in ipairs(modelAssetTypes) do
		it("should create and destroy without errors for " .. entry.name, function()
			local model = Instance.new("Model")
			local instance = mountWithAsset(model, entry.assetType)
			Roact.unmount(instance)
		end)
	end

	describe("Image asset type", function()
		if EngineFeatureEnableImagePublish then
			it("should preview the texture rather than the viewport for a Decal", function()
				local decal = Instance.new("Decal")
				local instance, container = mountWithAsset(decal, Enum.AssetType.Image)

				expect(rendersImagePreview(container)).toBe(true)
				expect(rendersObjectViewport(container)).toBe(false)

				Roact.unmount(instance)
			end)

			it("should fall back to ObjectViewport when the asset is not a Decal", function()
				local model = Instance.new("Model")
				local instance, container = mountWithAsset(model, Enum.AssetType.Image)

				expect(rendersObjectViewport(container)).toBe(true)
				expect(rendersImagePreview(container)).toBe(false)

				Roact.unmount(instance)
			end)
		else
			it("should fall back to ObjectViewport when the feature is disabled", function()
				local model = Instance.new("Model")
				local instance, container = mountWithAsset(model, Enum.AssetType.Image)

				expect(rendersObjectViewport(container)).toBe(true)
				expect(rendersImagePreview(container)).toBe(false)

				Roact.unmount(instance)
			end)
		end
	end)
end)
