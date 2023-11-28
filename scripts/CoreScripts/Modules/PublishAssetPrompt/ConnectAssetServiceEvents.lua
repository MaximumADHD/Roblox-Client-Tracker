--[[
	Adds a Lua listener to external c++ AssetService.h events,
	so that we can open a lua prompt when we receive a game-engine signal.
	This file is not a Roact component because we need to ensure that AssetService events are connected immediately
	on startup. This prevents a potential bug where prompts would not open if triggered early.
	More info here: https://jira.rbx.com/browse/AVBURST-10955
]]
local AssetService = game:GetService("AssetService")
local ExpAuthSvc = game:GetService("ExperienceAuthService")

local PublishAssetPrompt = script.Parent
local OpenPublishAssetPrompt = require(PublishAssetPrompt.Thunks.OpenPublishAssetPrompt)
local OpenPublishAvatarPrompt = require(PublishAssetPrompt.Thunks.OpenPublishAvatarPrompt)
local OpenResultModal = require(PublishAssetPrompt.Thunks.OpenResultModal)

local FFlagInExperiencePublishDeserializeAsset = game:DefineFastFlag("InExperiencePublishDeserializeAsset", false)
local FFlagNewInExperienceSerializationFix = game:DefineFastFlag("NewInExperienceSerializationFix", false)
local FFlagPublishAvatarPromptEnabled = require(script.Parent.FFlagPublishAvatarPromptEnabled)

local EngineFeaturePromptImportAnimationClipFromVideoAsyncEnabled =
	game:GetEngineFeature("PromptImportAnimationClipFromVideoAsyncEnabled")

local function ConnectAssetServiceEvents(store)
	local connections = {}

	-- Event that fires when the dev triggers the in-experience "Publish Asset" prompt.
	table.insert(
		connections,
		ExpAuthSvc.OpenAuthPrompt:Connect(function(guid, scopes, metadata)
			local isVideoToAnimationFlow = EngineFeaturePromptImportAnimationClipFromVideoAsyncEnabled
				and metadata["isVideoToAnimationFlow"]
			-- Check scopes; we only want to show the publish prompt for the CreatorAssetsCreate scope (but not for videoToAnimationFlow)
			if
				#scopes == 1
				and scopes[1] == Enum.ExperienceAuthScope.CreatorAssetsCreate
				and not isVideoToAnimationFlow
			then
				if FFlagNewInExperienceSerializationFix then
					-- We need to handle asset passed as either instance or as serialized string.
					if metadata["instanceToPublish"] then
						store:dispatch(
							OpenPublishAssetPrompt(metadata["instanceToPublish"], metadata["assetType"], guid, scopes)
						)
					elseif metadata["serializedInstance"] then
						local instance = AssetService:DeserializeInstance(metadata["serializedInstance"])
						store:dispatch(OpenPublishAssetPrompt(instance, metadata["assetType"], guid, scopes))
					elseif FFlagPublishAvatarPromptEnabled and metadata["outfitToPublish"] then
						local model = AssetService:DeserializeInstance(metadata["outfitToPublish"]) :: Model
						store:dispatch(OpenPublishAvatarPrompt(model, guid, scopes))
					end
				else
					if
						game:GetEngineFeature("AssetServiceDeserializeInstance")
						and FFlagInExperiencePublishDeserializeAsset
					then
						if FFlagPublishAvatarPromptEnabled and metadata["outfitToPublish"] then
							local model = AssetService:DeserializeInstance(metadata["outfitToPublish"]) :: Model
							store:dispatch(OpenPublishAvatarPrompt(model, guid, scopes))
						else
							local instance = AssetService:DeserializeInstance(metadata["serializedInstance"])

							store:dispatch(OpenPublishAssetPrompt(instance, metadata["assetType"], guid, scopes))
						end
					else
						if FFlagPublishAvatarPromptEnabled and metadata["outfitToPublish"] then
							local model = AssetService:DeserializeInstance(metadata["outfitToPublish"]) :: Model
							store:dispatch(OpenPublishAvatarPrompt(model, guid, scopes))
						else
							store:dispatch(
								OpenPublishAssetPrompt(
									metadata["instanceToPublish"],
									metadata["assetType"],
									guid,
									scopes
								)
							)
						end
					end
				end
			end
		end)
	)

	-- Event that fires when the publish flow succeeds or fails and we want to inform the user.
	-- Examples: publish success, bad name/description, server error.
	table.insert(
		connections,
		AssetService.OpenPublishResultModal:Connect(function(statusCode)
			store:dispatch(OpenResultModal(statusCode))
		end)
	)

	return connections
end

return ConnectAssetServiceEvents
