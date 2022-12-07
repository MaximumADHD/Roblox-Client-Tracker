--[[
	Adds a Lua listener to external c++ AssetService.h events,
	so that we can open a lua prompt when we receive a game-engine signal.
	This file is not a Roact component because we need to ensure that AssetService events are connected immediately
	on startup. This prevents a potential bug where prompts would not open if triggered early.
	More info here: https://jira.rbx.com/browse/AVBURST-10955
]]

--local AssetService = game:GetService("AssetService")

--local PublishAssetPrompt = script.Parent

--local OpenPublishAssetPrompt = require(PublishAssetPrompt.Thunks.OpenSetFavoritePrompt)

local function ConnectAssetServiceEvents(store)
	local connections = {}

	-- TODO nkyger: uncomment this once OpenPromptPublishAsset event has been added to game-engine
	-- (this currently causes a CI build failure due to missing event)
	--table.insert(connections, AssetService.OpenPromptPublishAsset:Connect(function(assetInstance, assetType)
	--	store:dispatch(OpenPublishAssetPrompt(assetInstance, assetType))
	--end))

	return connections
end

return ConnectAssetServiceEvents
