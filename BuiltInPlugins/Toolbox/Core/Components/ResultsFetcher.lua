--!strict
local Plugin = script:FindFirstAncestor("Toolbox")
local Packages = Plugin.Packages

local FFlagToolboxAudioDiscovery = require(Plugin.Core.Util.Flags.AudioDiscovery).FFlagToolboxAudioDiscovery()
local FFlagToolboxFixAssetFetcherOnUpdate = game:GetFastFlag("ToolboxFixAssetFetcherOnUpdate")
local FFlagToolboxShowIdVerifiedFilter = game:GetFastFlag("ToolboxShowIdVerifiedFilter")

local Roact = require(Packages.Roact)
local Framework = require(Packages.Framework)
local deepEqual = Framework.Util.deepEqual
local Dash = Framework.Dash
local Promise = Framework.Util.Promise
local Math = Framework.Util.Math

local NetworkInterface = require(Plugin.Core.Networking.NetworkInterface)
local HttpResponse = require(Plugin.Libs.Http.HttpResponse)

local AssetInfo = require(Plugin.Core.Models.AssetInfo)

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
	includeOnlyVerifiedCreators: boolean?,
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
		if FFlagToolboxFixAssetFetcherOnUpdate then
			self.canceled = self.loadingMutex
			self.loadingMutex = false
		end
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
		local includeOnlyVerifiedCreators = if FFlagToolboxShowIdVerifiedFilter
			then self.props.includeOnlyVerifiedCreators
			else nil		

		local promiseError
		local assetIdsResponse = networkInterface
			:getToolboxItems({
				categoryName = props.categoryName,
				sectionName = props.sectionName,
				sortType = props.sortName,
				keyword = props.searchTerm,
				tags = if FFlagToolboxAudioDiscovery then props.tags else nil,
				cursor = nextPageCursor,
				limit = pageSize,
				includeOnlyVerifiedCreators = includeOnlyVerifiedCreators,
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

		if FFlagToolboxFixAssetFetcherOnUpdate then
			if self.canceled then
				self.canceled = false
				return
			end
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

function TypedResultsFetcher(props: ResultsFetcherProps, children: any?)
	return Roact.createElement(ResultsFetcher, props, children)
end

return { Component = ResultsFetcher, Generator = TypedResultsFetcher }
