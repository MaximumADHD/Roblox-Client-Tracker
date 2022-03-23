--!strict
local Plugin = script:FindFirstAncestor("Toolbox")
local Packages = Plugin.Packages
local Framework = require(Packages.Framework)
local Sort = require(Plugin.Core.Types.Sort)
local Promise = Framework.Util.Promise
local Dash = Framework.Dash

local JestGlobals = require(Packages.Dev.JestGlobals)
local jest = JestGlobals.jest
local expect = JestGlobals.expect

local Roact = require(Packages.Roact)

local HttpResponse = require(Plugin.Libs.Http.HttpResponse)
local NetworkInterfaceMock = require(Plugin.Core.Networking.NetworkInterfaceMock)
local networkInterfaceFactory = NetworkInterfaceMock.new()

local ResultsFetcher = require(Plugin.Core.Components.ResultsFetcher)
local Category = require(Plugin.Core.Types.Category)
local AssetInfo = require(Plugin.Core.Models.AssetInfo)

local TOTAL_RESULTS = 737
type NetworkInterfaceMockArgs = {
	getToolboxItems: (() -> {})?,
	getItemDetailsAssetIds: (() -> {})?,
	delayGetToolboxItems: boolean?,
	delayGetItemDetailsAssetIds: boolean?,
}
local function buildNetworkInterfaceMock(undefaultedArgs: NetworkInterfaceMockArgs?)
	local args: NetworkInterfaceMockArgs = undefaultedArgs or {}
	local getToolboxItemsDeferred = {}
	local getItemDetailsAssetIdsDeferred = {}

	local getToolboxItems = args.getToolboxItems
		or function(_, getToolboxItemsArgs)
			local searchTerm = getToolboxItemsArgs.keyword
			local cursor = getToolboxItemsArgs.cursor
			local limit = getToolboxItemsArgs.limit
			local startValue: number
			if searchTerm then
				_, _, startValue = string.find(searchTerm, "start(%d+)")
			end
			startValue = startValue or 1
			startValue = tonumber(cursor) or startValue

			local response = {
				responseBody = {
					totalResults = TOTAL_RESULTS,
					data = nil,
					nextPageCursor = tostring(startValue + limit),
				},
			}
			local data = {}
			for i = startValue, startValue + limit - 1, 1 do
				table.insert(data, networkInterfaceFactory:fakeToolboxItemFactory(i))
			end
			response.responseBody.data = data :: any

			if args.delayGetToolboxItems then
				local promise = Promise.new(function(resolve, reject: (error: any) -> ())
					getToolboxItemsDeferred.resolver = function()
						return resolve(response)
					end
					getToolboxItemsDeferred.reject = reject
				end)
				return promise
			else
				return Promise.resolve(response)
			end
		end

	local getItemDetailsAssetIds = args.getItemDetailsAssetIds
		or function(_, assetIds)
			local responseData = {}
			for _, assetId in ipairs(assetIds) do
				local res = networkInterfaceFactory:fakeAssetFactory(assetId)

				table.insert(responseData, res)
			end
			local response = {
				responseBody = {
					data = responseData,
				},
			}
			if args.delayGetItemDetailsAssetIds then
				local promise = Promise.new(function(resolve, reject: (error: any) -> ())
					getItemDetailsAssetIdsDeferred.resolver = function()
						return resolve(response)
					end
					getItemDetailsAssetIdsDeferred.reject = reject
				end)
				return promise
			else
				return Promise.resolve(response)
			end
		end

	return {
		getToolboxItems = jest.fn().mockImplementation(getToolboxItems),
		getItemDetailsAssetIds = jest.fn().mockImplementation(getItemDetailsAssetIds),
		getToolboxItemsDeferred = getToolboxItemsDeferred,
		getItemDetailsAssetIdsDeferred = getItemDetailsAssetIdsDeferred,
	}
end

local latestState: ResultsFetcher.ResultsState
local function createResultsFetcher(networkInterfaceMock, props: any?)
	props = props or {}

	local finalProps: ResultsFetcher.ResultsFetcherProps = Dash.join({
		networkInterface = networkInterfaceMock,
		categoryName = Category.FREE_MODELS.name,
		sortName = Sort.getDefaultSortNameForCategory(Category.FREE_MODELS.name),
		searchTerm = nil,
		initialPageSize = 10,
		render = function(state)
			latestState = state
		end,
	}, props)

	return ResultsFetcher.Generator(finalProps)
end

local function renderResultsFetcher(networkInterfaceMock: any?, props: any?)
	local instance = createResultsFetcher(networkInterfaceMock or buildNetworkInterfaceMock(), props)
	return {
		instance = instance,
		tree = Roact.mount(instance),
	}
end

local function mapAssetIds(assets: { AssetInfo.AssetInfo })
	return Dash.map(assets, function(asset: AssetInfo.AssetInfo)
		return asset.Asset and asset.Asset.Id
	end)
end

return function()
	local networkInterfaceMock

	it("should set proper state on normal run", function()
		local networkInterfaceMock = buildNetworkInterfaceMock()
		local roactState = renderResultsFetcher(networkInterfaceMock)
		wait()
		expect(networkInterfaceMock.getToolboxItems).toHaveBeenCalledTimes(1)
		expect(networkInterfaceMock.getItemDetailsAssetIds).toHaveBeenCalledTimes(1)
		expect(latestState.loading).toBe(false)
		expect(latestState.error).toBe(nil)
		expect(latestState.total).toBe(737)
		expect(mapAssetIds(latestState.assets)).toEqual({ 1, 2, 3, 4, 5, 6, 7, 8, 9, 10 })
		Roact.unmount(roactState.tree)
	end)

	it("should have loading=true while getToolboxItems is waiting", function()
		local networkInterfaceMock = buildNetworkInterfaceMock({ delayGetToolboxItems = true })
		local roactState = renderResultsFetcher(networkInterfaceMock)
		wait()
		expect(latestState.loading).toBe(true)
		expect(latestState.error).toBe(nil)
		expect(mapAssetIds(latestState.assets)).toEqual({})

		networkInterfaceMock.getToolboxItemsDeferred.resolver()
		wait()
		expect(latestState.loading).toBe(false)
		expect(latestState.error).toBe(nil)
		expect(latestState.total).toBe(737)
		expect(mapAssetIds(latestState.assets)).toEqual({ 1, 2, 3, 4, 5, 6, 7, 8, 9, 10 })
		Roact.unmount(roactState.tree)
	end)

	it("should have loading=true while getItemDetailsAssetIds is waiting", function()
		local networkInterfaceMock = buildNetworkInterfaceMock({ delayGetItemDetailsAssetIds = true })
		local roactState = renderResultsFetcher(networkInterfaceMock)
		wait()
		expect(latestState.loading).toBe(true)
		expect(latestState.error).toBe(nil)
		expect(mapAssetIds(latestState.assets)).toEqual({})

		networkInterfaceMock.getItemDetailsAssetIdsDeferred.resolver()
		wait()
		expect(latestState.loading).toBe(false)
		expect(latestState.error).toBe(nil)
		expect(latestState.total).toBe(737)
		expect(mapAssetIds(latestState.assets)).toEqual({ 1, 2, 3, 4, 5, 6, 7, 8, 9, 10 })
		Roact.unmount(roactState.tree)
	end)

	it("should set error when raised in getToolboxItems", function()
		local networkInterfaceMock = buildNetworkInterfaceMock({ delayGetToolboxItems = true })
		local roactState = renderResultsFetcher(networkInterfaceMock)
		wait()
		expect(latestState.loading).toBe(true)
		expect(latestState.error).toBe(nil)
		expect(mapAssetIds(latestState.assets)).toEqual({})

		local error = HttpResponse.new(nil, 100, 500, "GET", "")
		networkInterfaceMock.getToolboxItemsDeferred.reject(error)
		wait()
		expect(latestState.loading).toBe(false)
		expect(latestState.error and latestState.error.error).toBe(error)
		expect(mapAssetIds(latestState.assets)).toEqual({})
		Roact.unmount(roactState.tree)
	end)

	it("should set error when raised in getItemDetailsAssetIds", function()
		local networkInterfaceMock = buildNetworkInterfaceMock({ delayGetItemDetailsAssetIds = true })
		local roactState = renderResultsFetcher(networkInterfaceMock)
		wait()
		expect(latestState.loading).toBe(true)
		expect(latestState.error).toBe(nil)
		expect(mapAssetIds(latestState.assets)).toEqual({})

		local error = HttpResponse.new(nil, 100, 500, "GET", "")
		networkInterfaceMock.getItemDetailsAssetIdsDeferred.reject(error)
		wait()
		expect(latestState.loading).toBe(false)
		expect(latestState.error and latestState.error.error).toBe(error)
		expect(mapAssetIds(latestState.assets)).toEqual({})
		Roact.unmount(roactState.tree)
	end)

	it("should clear results when props update", function()
		local networkInterfaceMock = buildNetworkInterfaceMock()
		local roactState = renderResultsFetcher(networkInterfaceMock, { searchTerm = "abc" })
		wait()
		expect(latestState.loading).toBe(false)
		expect(latestState.error).toBe(nil)
		expect(latestState.total).toBe(737)
		expect(mapAssetIds(latestState.assets)).toEqual({ 1, 2, 3, 4, 5, 6, 7, 8, 9, 10 })

		local updatedElement = createResultsFetcher(networkInterfaceMock, { searchTerm = "start20" })
		Roact.update(roactState.tree, updatedElement)
		wait()
		expect(latestState.loading).toBe(false)
		expect(latestState.error).toBe(nil)
		expect(latestState.total).toBe(737)
		expect(mapAssetIds(latestState.assets)).toEqual({ 20, 21, 22, 23, 24, 25, 26, 27, 28, 29 })

		Roact.unmount(roactState.tree)
	end)

	it("should fetch the proper number of initial results", function()
		local networkInterfaceMock = buildNetworkInterfaceMock()
		local roactState = renderResultsFetcher(networkInterfaceMock, { initialPageSize = 15 })
		wait()
		expect(latestState.loading).toBe(false)
		expect(latestState.error).toBe(nil)
		expect(latestState.total).toBe(737)
		expect(mapAssetIds(latestState.assets)).toEqual({ 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15 })

		Roact.unmount(roactState.tree)
	end)

	it("should fetch more assets", function()
		local networkInterfaceMock = buildNetworkInterfaceMock()
		local roactState = renderResultsFetcher(networkInterfaceMock)
		wait()
		expect(latestState.loading).toBe(false)
		expect(latestState.error).toBe(nil)
		expect(latestState.total).toBe(737)
		expect(mapAssetIds(latestState.assets)).toEqual({ 1, 2, 3, 4, 5, 6, 7, 8, 9, 10 })
		expect((latestState :: any).nextPageCursor).toBe("11")

		if latestState.fetchNextPage then
			latestState.fetchNextPage(5)
		end
		wait()
		expect(latestState.loading).toBe(false)
		expect(latestState.error).toBe(nil)
		expect(latestState.total).toBe(737)
		expect(mapAssetIds(latestState.assets)).toEqual({ 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15 })
		expect((latestState :: any).nextPageCursor).toBe("16")

		Roact.unmount(roactState.tree)
	end)

	it("should not be able to fetchNewPage during load", function()
		local networkInterfaceMock = buildNetworkInterfaceMock({ delayGetToolboxItems = true })
		local roactState = renderResultsFetcher(networkInterfaceMock)
		wait()
		expect(latestState.fetchNextPage).toBe(nil)
	end)

	it("should not be able to fetchNewPage during next page load", function()
		local networkInterfaceMock = buildNetworkInterfaceMock({ delayGetToolboxItems = true })
		local roactState = renderResultsFetcher(networkInterfaceMock)
		wait()

		networkInterfaceMock.getToolboxItemsDeferred.resolver()
		wait()

		expect(latestState.fetchNextPage).never.toBeNil()
		if latestState.fetchNextPage then
			latestState.fetchNextPage(5)
		end
		wait()

		expect(latestState.fetchNextPage).toBeNil()
	end)

	it("should not make two network requests if fetchNextPage called more than once", function()
		local networkInterfaceMock = buildNetworkInterfaceMock()
		local roactState = renderResultsFetcher(networkInterfaceMock)
		wait()

		expect(latestState.fetchNextPage).never.toBeNil()
		if latestState.fetchNextPage then
			local fetchNextPage = latestState.fetchNextPage
			fetchNextPage(5)
			fetchNextPage(5)
		end
		wait()

		expect(networkInterfaceMock.getToolboxItems).toHaveBeenCalledTimes(2)
	end)

	it("should handle network request throws", function()
		local errorMessage = "too much gnar"
		local networkInterfaceMock = buildNetworkInterfaceMock({
			getToolboxItems = function()
				error(errorMessage)
			end,
		})
		local roactState = renderResultsFetcher(networkInterfaceMock)
		wait()
		expect(latestState.loading).toBe(false)
		expect(latestState.error and latestState.error.message).toContain(errorMessage)
	end)

	it("should send section when available", function()
		local networkInterfaceMock = buildNetworkInterfaceMock()
		local roactState = renderResultsFetcher(
			networkInterfaceMock,
			{ sectionName = "trending", sortName = Dash.None }
		)
		wait()
		expect(networkInterfaceMock.getToolboxItems).toHaveBeenCalledWith(
			networkInterfaceMock, -- because we're calling it as an instance method
			expect.objectContaining({ sectionName = "trending" })
		)
		expect(networkInterfaceMock.getToolboxItems).toHaveBeenCalledWith(
			networkInterfaceMock, -- because we're calling it as an instance method
			expect.never.objectContaining({ sortName = expect.anything() })
		)
	end)
end
