local CorePackages = game:GetService("CorePackages")

local JestGlobals = require(CorePackages.Packages.Dev.JestGlobals3)
local afterEach = JestGlobals.afterEach
local beforeEach = JestGlobals.beforeEach
local describe = JestGlobals.describe
local expect = JestGlobals.expect
local it = JestGlobals.it
local jest = JestGlobals.jest

local Roact = require(CorePackages.Packages.Roact)
local ReactRoblox = require(CorePackages.Packages.ReactRoblox)
local Rodux = require(CorePackages.Packages.Rodux)
local RoactRodux = require(CorePackages.Packages.RoactRodux)
local RobloxTranslator = require(CorePackages.Workspace.Packages.RobloxTranslator)
local UnitTestHelpers = require(CorePackages.Workspace.Packages.UnitTestHelpers)
local findFirstInstance = UnitTestHelpers.findFirstInstance
local waitForEvents = require(CorePackages.Workspace.Packages.TestUtils).DeferredLuaHelpers.waitForEvents
local act = ReactRoblox.act

local FFlagDisablePublishPlatformContentWithoutName =
	require(script.Parent.Parent.Flags.FFlagDisablePublishPlatformContentWithoutName)

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

local SUBMIT_TEXT = RobloxTranslator:FormatByKey("CoreScripts.PublishAssetPrompt.Submit")
local CANCEL_TEXT = RobloxTranslator:FormatByKey("CoreScripts.PublishAssetPrompt.Cancel")

type MountedPrompt = typeof(Roact.mount(Roact.createElement("Frame")))

local mountedInstance: MountedPrompt? = nil
local mountedContainer: Folder? = nil
local mountedModel: Model? = nil

local function cleanupMountedPrompt()
	if mountedInstance ~= nil then
		Roact.unmount(mountedInstance)
		mountedInstance = nil
	end
	if mountedContainer ~= nil then
		mountedContainer:Destroy()
		mountedContainer = nil
	end
	if mountedModel ~= nil then
		mountedModel:Destroy()
		mountedModel = nil
	end
end

local function mountPrompt(assetType: Enum.AssetType)
	cleanupMountedPrompt()
	local model = Instance.new("Model")
	mountedModel = model
	local instance, container = mountWithAsset(model, assetType)
	mountedInstance = instance
	mountedContainer = container
	return container
end

local function buttonWithText(container: Instance, text: string): GuiButton
	local label = findFirstInstance(container, {
		ClassName = "TextLabel",
		Text = text,
	})
	expect(label).never.toBeNil()
	local button = (label :: Instance):FindFirstAncestorWhichIsA("GuiButton")
	expect(button).never.toBeNil()
	return button :: GuiButton
end

local function nameTextBox(container: Instance): TextBox
	-- The description field is the multiline box inside the scrolling frame.
	local matched: TextBox? = nil
	for _, object in container:GetDescendants() do
		if object:IsA("TextBox") and object:FindFirstAncestorWhichIsA("ScrollingFrame") == nil then
			matched = object :: TextBox
			break
		end
	end
	expect(matched).never.toBeNil()
	return matched :: TextBox
end

local function advance(millis: number)
	act(function()
		jest.advanceTimersByTime(millis)
	end)
end

local function setName(container: Instance, name: string)
	-- Fake timers plus the test scheduler flush the prompt on the next advance.
	advance(0)
	local textBox = nameTextBox(container)
	act(function()
		textBox.Text = name
	end)
	-- Deferred signal behavior runs Change.Text on a later resume.
	waitForEvents.act()
	advance(0)
end

describe("publish button requires a name", function()
	beforeEach(function()
		jest.useFakeTimers().setEngineFrameTime(1000 / 60)
	end)

	afterEach(function()
		cleanupMountedPrompt()
		jest.useRealTimers()
	end)

	if FFlagDisablePublishPlatformContentWithoutName then
		it("disables publish when the name is empty", function()
			local container = mountPrompt(Enum.AssetType.Package)
			advance(0)

			-- Selectable follows isDisabled. Active stays false during the submit
			-- button's input delay even when the button is not disabled.
			local submitButton = buttonWithText(container, SUBMIT_TEXT)
			local cancelButton = buttonWithText(container, CANCEL_TEXT)
			expect(submitButton.Selectable).toBe(false)
			expect(cancelButton.Active).toBe(true)
		end)

		it("enables publish once a name is entered and leaves description optional", function()
			local container = mountPrompt(Enum.AssetType.Package)
			setName(container, "Cool Hat")
			advance(0)

			local submitButton = buttonWithText(container, SUBMIT_TEXT)
			expect(nameTextBox(container).Text).toBe("Cool Hat")
			expect(submitButton.Selectable).toBe(true)
		end)

		it("keeps publish disabled when the name is only spaces", function()
			local container = mountPrompt(Enum.AssetType.Package)
			setName(container, "   ")
			advance(0)

			expect(buttonWithText(container, SUBMIT_TEXT).Selectable).toBe(false)
		end)

		it("keeps the original placeholder after a valid name is cleared", function()
			local container = mountPrompt(Enum.AssetType.Package)
			advance(0)

			local textBox = nameTextBox(container)
			local originalPlaceholder = textBox.PlaceholderText
			setName(container, "Cool Hat")
			advance(0)
			setName(container, "")
			advance(0)

			textBox = nameTextBox(container)
			expect(textBox.Text).toBe("")
			expect(textBox.PlaceholderText).toBe(originalPlaceholder)
			expect(buttonWithText(container, SUBMIT_TEXT).Selectable).toBe(false)
		end)

		it("leaves publish enabled for a model default name", function()
			local container = mountPrompt(Enum.AssetType.Model)
			advance(0)

			local textBox = nameTextBox(container)
			expect(textBox.Text).never.toBe("")
			expect(textBox.PlaceholderText).toBe(textBox.Text)
			expect(buttonWithText(container, SUBMIT_TEXT).Selectable).toBe(true)

			local originalPlaceholder = textBox.PlaceholderText
			setName(container, "Other Name")
			advance(0)
			setName(container, "")
			advance(0)

			textBox = nameTextBox(container)
			expect(textBox.PlaceholderText).toBe(originalPlaceholder)
			expect(buttonWithText(container, SUBMIT_TEXT).Selectable).toBe(false)
		end)
	else
		it("leaves publish enabled when the name is empty", function()
			local container = mountPrompt(Enum.AssetType.Package)
			advance(0)

			local submitButton = buttonWithText(container, SUBMIT_TEXT)
			expect(submitButton.Selectable).toBe(true)
			-- The existing input delay still renders while the button is not disabled.
			local delayOverlay = nil
			for _, child in submitButton:GetDescendants() do
				if child:IsA("ImageLabel") then
					delayOverlay = child
					break
				end
			end
			expect(delayOverlay).never.toBeNil()
		end)
	end
end)
