--[[
	The item info rows for the publish prompt. Displays the creator, game name,
	and type of the asset being published.
]]

local CorePackages = game:GetService("CorePackages")
local React = require(CorePackages.Packages.React)
local ItemInfoList = require(CorePackages.Workspace.Packages.ItemDetails).ItemInfoList
local useLocalization = require(CorePackages.Workspace.Packages.Localization).Hooks.useLocalization

local HttpRbxApiService = game:GetService("HttpRbxApiService")
local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local httpRequest: any = require(RobloxGui.Modules.Common.httpRequest)
local httpImpl = httpRequest(HttpRbxApiService :: any)

local GetGameNameAndDescription = require(CorePackages.Workspace.Packages.GameDetailRodux).GetGameNameAndDescription

local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

export type Props = {
	LayoutOrder: number?,
	typeName: string,
}

local function PublishInfoList(props: Props)
	local isMounted = React.useRef(false)

	-- LocalPlayer should always be available
	assert(LocalPlayer, "LocalPlayer must not be nil")
	local localPlayerName = LocalPlayer.Name
	local gameName, setGameName = React.useState(nil)
	local typeName = props.typeName
	local LayoutOrder = props.LayoutOrder

	local localized = useLocalization({
		creatorText = "Feature.Catalog.Label.Filter.Creator",
		attributionText = "Feature.Catalog.Label.Attribution",
		typeText = "Feature.Catalog.Label.CategoryType",
	})

	React.useEffect(function()
		isMounted.current = true
		GetGameNameAndDescription(httpImpl :: any, game.GameId):andThen(function(result)
			if isMounted.current and result.Name then
				setGameName(result.Name)
			end
		end)
		return function()
			isMounted.current = false
		end
	end, {})

	return React.createElement(ItemInfoList, {
		rowData = {
			{
				infoName = localized.creatorText,
				infoData = localPlayerName,
				hasVerifiedBadge = LocalPlayer.HasVerifiedBadge,
				isLoading = localPlayerName == nil,
				Selectable = false,
			},
			{
				infoName = localized.attributionText,
				infoData = gameName,
				isLoading = gameName == nil,
				Selectable = false,
			},
			{
				infoName = localized.typeText,
				infoData = typeName,
				isLoading = typeName == nil,
				Selectable = false,
			},
		},
		LayoutOrder = LayoutOrder,
	})
end

return PublishInfoList
