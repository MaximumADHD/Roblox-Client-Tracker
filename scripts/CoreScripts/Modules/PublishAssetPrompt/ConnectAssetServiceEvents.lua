--[[
	Adds a Lua listener to external c++ AssetService.h events,
	so that we can open a lua prompt when we receive a game-engine signal.
	This file is not a Roact component because we need to ensure that AssetService events are connected immediately
	on startup. This prevents a potential bug where prompts would not open if triggered early.
	More info here: https://jira.rbx.com/browse/AVBURST-10955
]]

local ExpAuthSvc = game:GetService("ExperienceAuthService")

local PublishAssetPrompt = script.Parent
local OpenPublishAssetPrompt = require(PublishAssetPrompt.Thunks.OpenPublishAssetPrompt)

local function ConnectAssetServiceEvents(store)
	local connections = {}

	-- Only subscribe to event if it exists
	if game:GetEngineFeature("ExperienceAuthReflectionFixes") then
		-- Event that fires when the dev triggers the in-experience "Publish Asset" prompt.
		table.insert(
			connections,
			ExpAuthSvc.OpenAuthPrompt:Connect(function(guid, scopes, metadata)
				-- Check scopes; we only want to show the publish prompt for the CreatorAssetsCreate scope
				if #scopes == 1 and scopes[1] == Enum.ExperienceAuthScope.CreatorAssetsCreate then
					store:dispatch(
						OpenPublishAssetPrompt(metadata["instanceToPublish"], metadata["assetType"], guid, scopes)
					)
				end
			end)
		)
	end

	return connections
end

return ConnectAssetServiceEvents
