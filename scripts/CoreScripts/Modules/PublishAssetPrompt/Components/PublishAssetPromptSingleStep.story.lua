local CorePackages = game:GetService("CorePackages")

local Roact = require(CorePackages.Packages.Roact)

local PublishAssetPromptSingleStep = require(script.Parent.PublishAssetPromptSingleStep)
local PromptType = require(script.Parent.Parent.PromptType)

local SCREEN_SIZE = Vector2.new(1920, 1080)

-- Built once so the prompt isn't handed a fresh instance on every re-render.
local function makeModel(): Model
	local model = Instance.new("Model")
	local part = Instance.new("Part")
	part.Size = Vector3.new(4, 4, 4)
	part.Color = Color3.fromRGB(0, 162, 255)
	part.Anchored = true
	part.Parent = model
	model.PrimaryPart = part
	return model
end

local modelAsset = makeModel()

return {
	summary = "The full single-step publish prompt. This story uses a Model asset so it renders "
		.. "regardless of the EnableImagePublish engine feature. The image-preview path only renders "
		.. "when that engine feature and passes through an EditableImage.",
	stories = {
		ModelAsset = function()
			return Roact.createElement(PublishAssetPromptSingleStep, {
				screenSize = SCREEN_SIZE,
			})
		end,
	},
	state = {
		promptRequest = {
			promptInfo = {
				promptType = PromptType.PublishAssetSingleStep,
				assetInstance = modelAsset,
				assetType = Enum.AssetType.Model,
				guid = "story-guid",
				scopes = { Enum.ExperienceAuthScope.CreatorAssetsCreate },
			},
			queue = {},
		},
	},
}
