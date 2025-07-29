--!strict

local CorePackages = game:GetService("CorePackages")

local RobloxAppHooks = require(CorePackages.Workspace.Packages.RobloxAppHooks)
local RoactServiceTags = require(CorePackages.Workspace.Packages.RoactServiceTags)
local SendGameImpressions = require(CorePackages.Workspace.Packages.GameCollections).SendGameImpressions
local React = require(CorePackages.Packages.React)
local Foundation = require(CorePackages.Packages.Foundation)
local Localization = require(CorePackages.Workspace.Packages.Localization)

local useNextUpSort = require(script.Parent.useNextUpSort)
local NextUpTile = require(script.Parent.NextUpTile)
local NextUpState = require(script.Parent.NextUpState)

local FFlagEnableInGameExitModalNextUpUiRequestCache =
	require(script.Parent.Flags.FFlagEnableInGameExitModalNextUpUiRequestCache)

local useRoactService = RobloxAppHooks.useRoactService
local AppEventIngestService = RoactServiceTags.AppEventIngestService
local RoactAnalytics = RoactServiceTags.RoactAnalytics
local View = Foundation.View
local Text = Foundation.Text
local Divider = Foundation.Divider
local useTokens = Foundation.Hooks.useTokens
local useLocalization = Localization.Hooks.useLocalization

local N_TILES = 4

local function tilePairComponent(props: { LayoutOrder: number, tilePairWidth: number, children: any })
	return React.createElement(View, {
		tag = "row flex-x-fill auto-y gap-medium no-wrap align-x-center",
		Size = UDim2.fromOffset(props.tilePairWidth, 0),
		LayoutOrder = props.LayoutOrder,
	}, props.children)
end

local function getImpressionIndices(entries: { useNextUpSort.SortEntry }): { number }
	local impressionsToSend = {}
	for i = 1, math.min(N_TILES, #entries) do
		local entryData = entries[i]
		table.insert(impressionsToSend, entryData.uiIndex)
	end
	return impressionsToSend
end

type SortEntry = useNextUpSort.SortEntry

type Props = {
	tilePairWidth: number,
	nextUpSort: useNextUpSort.NextUpSort?,
}

type ImpressionList = { number }

local function NextUpComponent(props: Props)
	local eventIngest = useRoactService(AppEventIngestService)
	local appAnalytics = useRoactService(RoactAnalytics)
	local tokens = useTokens()
	local localized = useLocalization({
		NextUpHeader = "CoreScripts.InGameMenu.NextUpExitMenu.Title",
	})

	local nextUpSort = (
		if FFlagEnableInGameExitModalNextUpUiRequestCache then props.nextUpSort else useNextUpSort()
	) :: useNextUpSort.NextUpSort
	local sortData = nextUpSort.data
	local loading = nextUpSort.loading

	local sendImpressions = React.useCallback(
		function(impressionsToSend: ImpressionList, entries: { SortEntry }, topicId: string)
			SendGameImpressions.sendFromInGameExitModal(
				eventIngest,
				appAnalytics,
				topicId,
				impressionsToSend,
				entries :: { any }
			)
		end,
		{ eventIngest, appAnalytics } :: { any }
	)

	local impressionsSent, setImpressionsSent = React.useState(false)
	local currentImpressionIndices, setCurrentImpressionIndices: (ImpressionList?) -> () =
		React.useState(nil :: ImpressionList?)
	React.useEffect(function(): ()
		if not sortData then
			return nil
		end

		setCurrentImpressionIndices(getImpressionIndices(sortData.entries))
		setImpressionsSent(false)
		NextUpState.setNextUpTilesLoaded(true)

		return function()
			setCurrentImpressionIndices(nil)
			NextUpState.setNextUpTilesLoaded(false)
		end
	end, { sortData } :: { any })

	React.useEffect(
		function()
			if not (sortData and currentImpressionIndices) then
				return
			end

			if impressionsSent then
				return
			end

			setImpressionsSent(true)
			sendImpressions(currentImpressionIndices, sortData.entries, sortData.topicId)
		end,
		{
			sortData,
			currentImpressionIndices,
			impressionsSent,
			sendImpressions,
		} :: { any }
	)

	local createTile = React.useCallback(function(positionIndex: number)
		return React.createElement(NextUpTile, {
			entryData = if sortData then sortData.entries[positionIndex] else nil,
			topicId = if sortData then sortData.topicId else "",
			positionIndex = positionIndex,
		})
	end, { sortData } :: { any })

	-- if we aren't loading or don't have any data, don't render the next-up section
	if not (sortData or loading) then
		return React.None
	end

	return React.createElement(React.Fragment, nil, {
		divider = React.createElement(Divider, {
			LayoutOrder = 2,
		}),
		nextUpSection = React.createElement(View, {
			tag = "size-full-0 auto-y col gap-xxlarge",
			LayoutOrder = 3,
		}, {
			header = React.createElement(View, {
				tag = "size-full-0 auto-y row align-x-left gap-small",
				LayoutOrder = 1,
			}, {
				text = React.createElement(Text, {
					tag = "text-heading-small text-wrap auto-xy shrink",
					Text = localized.NextUpHeader,
					textStyle = tokens.Color.Extended.White.White_100,
				}),
			}),

			rowContainer = React.createElement(View, {
				tag = "size-full-0 auto-y row gap-medium wrap align-x-center flex-x-fill",
				LayoutOrder = 2,
			}, {
				tilesSection1 = React.createElement(
					tilePairComponent,
					{ LayoutOrder = 1, tilePairWidth = props.tilePairWidth },
					{
						tile1 = createTile(1),
						tile2 = createTile(2),
					}
				),
				tilesSection2 = React.createElement(
					tilePairComponent,
					{ LayoutOrder = 2, tilePairWidth = props.tilePairWidth },
					{
						tile3 = createTile(3),
						tile4 = createTile(4),
					}
				),
			}),
		}),
	})
end

return React.memo(NextUpComponent)
