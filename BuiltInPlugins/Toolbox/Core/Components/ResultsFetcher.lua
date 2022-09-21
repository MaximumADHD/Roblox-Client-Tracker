--!strict
local Plugin = script:FindFirstAncestor("Toolbox")
local Packages = Plugin.Packages

local FFlagToolboxFixAssetsNoVoteData2 = game:GetFastFlag("ToolboxFixAssetsNoVoteData2")
local FFlagToolboxUseVerifiedIdAsDefault = game:GetFastFlag("ToolboxUseVerifiedIdAsDefault2")
local FFlagToolboxUseQueryForCategories2 = game:GetFastFlag("ToolboxUseQueryForCategories2")

local FFlagToolboxIncludeSearchSource = game:GetFastFlag("ToolboxIncludeSearchSource")

local Roact = require(Packages.Roact)
local RoactRodux = require(Packages.RoactRodux)
local Framework = require(Packages.Framework)
local deepEqual = Framework.Util.deepEqual
local Dash = Framework.Dash
local Promise = Framework.Util.Promise
local Math = Framework.Util.Math

local NetworkInterface = require(Plugin.Core.Networking.NetworkInterface)
local HttpResponse = require(Plugin.Libs.Http.HttpResponse)

local AssetInfo = require(Plugin.Core.Models.AssetInfo)

local HomeTypes = require(Plugin.Core.Types.HomeTypes)

local Actions = Plugin.Core.Actions
local GetAssets = require(Actions.GetAssets)
local GetAssetsVotingData = FFlagToolboxFixAssetsNoVoteData2 and require(Actions.GetAssetsVotingData)

local ResultsFetcher = Roact.PureComponent:extend("ResultsFetcher")

export type ResultsFetcherError = {
	message: string?,
	error: HttpResponse.HttpResponse?,
}

export type ResultsState = {
	loading: boolean,
	error: ResultsFetcherError?,
	total: number?,
	fetchNextPage: ((pageSize: number) -> ())?,
	assets: { AssetInfo.AssetInfo },
	assetMap: { [number]: AssetInfo.AssetInfo }, -- This should be internal. But need to refactor assetGrid to not need them first
	assetIds: { number }, -- This should be internal. But need to refactor assetGrid to not need them first
}

type InternalResultsState = ResultsState & {
	nextPageCursor: string?,
}

export type ResultsFetcherProps = {
	networkInterface: any,
	render: (resultsState: ResultsState) -> (),

	categoryName: string,
	sectionName: string?, -- "trending" | "newest" | "essential"
	sortName: string?,
	searchTerm: string?,
	initialPageSize: number,
	tags: { string }?,
	includeOnlyVerifiedCreators: boolean?, -- TODO: Remove with FFlagToolboxUseVerifiedIdAsDefault
	includeUnverifiedCreators: boolean?,
	queryParams: HomeTypes.SubcategoryQueryParams?,
	searchSource: string?,
}

function ResultsFetcher:init(props: ResultsFetcherProps)
	self.loadingMutex = false -- We'll use an instance mutex because setState is not synchronous

	local initialResultsState: InternalResultsState = {
		loading = false,
		error = Roact.None,
		total = Roact.None,
		fetchNextPage = Roact.None,
		assets = {},
		assetMap = {},
		assetIds = {},
		nextPageCursor = Roact.None,
	}
	self.INITIAL_RESULTS_STATE = table.freeze(initialResultsState)

	self.fetchNextPage = function(pageSize: number)
		self:fetchResults({ pageSize = pageSize })
	end

	self:setState(function()
		local stateUpdate: InternalResultsState = Dash.join(self.INITIAL_RESULTS_STATE)
		return stateUpdate
	end)

	self:fetchResults({ initialPage = true })
end

function ResultsFetcher:didUpdate(previousProps: ResultsFetcherProps)
	local filterRender = function(_, propName)
		return propName ~= "render"
	end
	local prev = Dash.filter(previousProps, filterRender)
	local current = Dash.filter(self.props, filterRender)

	if not deepEqual(prev, current) then
		self.canceled = self.loadingMutex
		self.loadingMutex = false

		self:fetchResults({ initialPage = true })
	end
end

function ResultsFetcher:fetchResults(args: { pageSize: number?, initialPage: boolean })
	local props: ResultsFetcherProps = self.props
	local networkInterface = props.networkInterface :: NetworkInterface.NetworkInterface

	-- luau can't figure this out without an explicit cast
	local pageSize: number = ((args and args.pageSize) or props.initialPageSize) :: number
	local state: InternalResultsState = self.state
	local nextPageCursor: string? = if args.initialPage then nil else state.nextPageCursor

	if self.loadingMutex then
		return
	end

	self.loadingMutex = true
	self:setState(function()
		local stateUpdate: InternalResultsState = if args.initialPage then Dash.join(self.INITIAL_RESULTS_STATE) else {}
		stateUpdate.loading = true
		stateUpdate.error = Roact.None
		stateUpdate.fetchNextPage = Roact.None
		return stateUpdate
	end)

	local innerFetch = function()
		local includeOnlyVerifiedCreators
		local includeUnverifiedCreators
		if FFlagToolboxUseVerifiedIdAsDefault then
			includeUnverifiedCreators = self.props.includeUnverifiedCreators
		else
			includeOnlyVerifiedCreators = self.props.includeOnlyVerifiedCreators
		end

		local promiseError
		local assetIdsResponse = networkInterface
			:getToolboxItems({
				categoryName = props.categoryName,
				sectionName = props.sectionName,
				sortType = props.sortName,
				keyword = props.searchTerm,
				tags = props.tags,
				cursor = nextPageCursor,
				limit = pageSize,
				includeOnlyVerifiedCreators = if FFlagToolboxUseVerifiedIdAsDefault
					then not includeUnverifiedCreators
					else includeOnlyVerifiedCreators,
				queryParams = if FFlagToolboxUseQueryForCategories2 then props.queryParams else nil,
				searchSource = if FFlagToolboxIncludeSearchSource then props.searchSource else nil,
			})
			:catch(function(error: HttpResponse.HttpResponse)
				promiseError = true
				self.loadingMutex = false
				self:setState(function()
					local stateUpdate: InternalResultsState = {} :: any -- Partial<InternalResultsState>
					stateUpdate.loading = false
					stateUpdate.error = { error = error } :: any -- luau bug
					return stateUpdate
				end)
			end)
			:await()

		if promiseError then
			return -- early exit on error
		end
		local toolboxItems = assetIdsResponse.responseBody

		local assetIds = {}
		for _, assetInfo in ipairs(toolboxItems.data) do
			table.insert(assetIds, assetInfo.id)
		end

		local detailsResponse = networkInterface
			:getItemDetailsAssetIds(assetIds)
			:catch(function(error: HttpResponse.HttpResponse)
				promiseError = true
				self.loadingMutex = false
				self:setState(function()
					local stateUpdate: InternalResultsState = {} :: any -- Partial<InternalResultsState>
					stateUpdate.loading = false
					stateUpdate.error = { error = error } :: any -- luau bug
					return stateUpdate
				end)
			end)
			:await()

		if promiseError then
			return -- early exit on error
		end

		local detailsData = detailsResponse.responseBody
		local assetMap: { [number]: AssetInfo.AssetInfo } = {}

		for _, asset in pairs(detailsData.data) do
			local formattedAsset = AssetInfo.fromItemDetailsRequest(asset)
			if formattedAsset.Asset then
				assetMap[formattedAsset.Asset.Id] = formattedAsset
			end
		end

		self.loadingMutex = false

		if self.canceled then
			self.canceled = false
			return
		end

		self:setState(function(previousState)
			local stateUpdate: InternalResultsState = {} :: any -- Partial<InternalResultsState>

			stateUpdate.assetIds = Dash.append({}, previousState.assetIds, assetIds)
			stateUpdate.assetMap = Dash.join(previousState.assetMap, assetMap)

			local currTotal = #previousState.assets
			local newAssets = {}
			for index, assetId in ipairs(assetIds) do
				local assetData = assetMap[assetId]
				local position = currTotal + index
				local page = Math.round(currTotal / pageSize) + 1

				assetData.Context = {
					page = page,
					pagePosition = index,
					position = position,
				}
				newAssets[index] = assetData
			end

			stateUpdate.assets = Dash.append({}, previousState.assets, newAssets)
			stateUpdate.loading = false
			stateUpdate.error = Roact.None
			stateUpdate.total = args.initialPage and assetIdsResponse.responseBody.totalResults or nil
			stateUpdate.nextPageCursor = assetIdsResponse.responseBody.nextPageCursor
			stateUpdate.fetchNextPage = self.fetchNextPage
			if FFlagToolboxFixAssetsNoVoteData2 and self.props.dispatchGetAssetsVotingData then
				self.props.dispatchGetAssetsVotingData(stateUpdate.assets)
			end

			return stateUpdate
		end)
	end

	spawn(function()
		local status, err = (pcall :: any)(innerFetch)
		if not status then
			self.loadingMutex = false
			self:setState(function()
				local stateUpdate: InternalResultsState = {} :: any -- Partial<InternalResultsState>
				stateUpdate.loading = false
				stateUpdate.error = { message = tostring(err) } :: any -- luau bug
				return stateUpdate
			end)
		end
	end)
end

function ResultsFetcher:render()
	return self.props.render(self.state)
end

if FFlagToolboxFixAssetsNoVoteData2 then
	local ResultsFetcherRoduxWrapper = Roact.PureComponent:extend("ResultsFetcherRoduxWrapper")

	function ResultsFetcherRoduxWrapper:render()
		return Roact.createElement(ResultsFetcher, self.props)
	end

	local function mapDispatchToProps(dispatch)
		return {
			dispatchGetAssetsVotingData = function(assetResults)
				dispatch(GetAssetsVotingData(assetResults))
			end,
		}
	end

	function TypedResultsFetcher(props: ResultsFetcherProps, children: any?)
		return Roact.createElement(ResultsFetcherRoduxWrapper, props, children)
	end

	function NoRoduxTypedResultsFetcher(props: ResultsFetcherProps, children: any?)
		return Roact.createElement(ResultsFetcher, props, children)
	end

	ResultsFetcherRoduxWrapper = RoactRodux.connect(nil, mapDispatchToProps)(ResultsFetcherRoduxWrapper)

	return {
		Component = ResultsFetcher,
		Generator = TypedResultsFetcher,
		NoRoduxGenerator = NoRoduxTypedResultsFetcher,
	}
else
	function NoRoduxTypedResultsFetcher(props: ResultsFetcherProps, children: any?)
		return nil
	end

	function TypedResultsFetcher(props: ResultsFetcherProps, children: any?)
		return Roact.createElement(ResultsFetcher, props, children)
	end

	return {
		Component = ResultsFetcher,
		Generator = TypedResultsFetcher,
		NoRoduxGenerator = NoRoduxTypedResultsFetcher,
	}
end
