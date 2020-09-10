--!strict
type Array<T> = {[number]: T};

return function() 

    local FFlagToolboxNewAssetAnalytics = game:GetFastFlag("ToolboxNewAssetAnalytics")

    if not FFlagToolboxNewAssetAnalytics then
        return
    end

    local AssetAnalytics = require(script.Parent.AssetAnalytics)

    local function getStubPageInfo()
        return {
            currentTab = "Inventory",
            searchTerm = "abc",
            targetPage = 1,
            searchId = "4581e024-c0f4-4d22-a107-18282b426833",
            categoryIndex = 1,
            categoryName = "MyModels",
            categories = {
                {
                    category = "MyModelsExceptPackage",
                    name = "MyModels",
                    ownershipType = 1,
                    assetType = 0,
                },
            },
            sortIndex = 1,
            sorts = {
                {
                    sort = "Relevance",
                    name = "Relevance",
                },
            },
        }
    end

    local function getStubAssets() : Array<any>
       return {
            {
                Asset = {
                    Id = 123,
                    TypeId = Enum.AssetType.Model.Value,
                }
            },
            {
                Asset = {
                    Id = 124,
                    TypeId = Enum.AssetType.Model.Value,
                }
            },
        }
    end

    it("pageInfoToContext", function()
        local stubPageInfo = getStubPageInfo()
        local context = AssetAnalytics.pageInfoToContext(stubPageInfo)

        expect(context.category).to.equal("MyModelsExceptPackage")
        expect(context.toolboxTab).to.equal("Inventory")
        expect(context.sort).to.equal("Relevance")
        expect(context.searchKeyword).to.equal("abc")
        expect(context.page).to.equal(1)
        expect(context.searchId).to.equal(stubPageInfo.searchId)
    end)

    it("addContextToAssetResults", function()
        local stubPageInfo = getStubPageInfo()
        local assets = getStubAssets()

        AssetAnalytics.addContextToAssetResults(assets, stubPageInfo)

        expect(assets[1].Context).to.be.ok()
        expect(assets[2].Context).to.be.ok()

        -- Ensure context object is not shared
        assets[1].Context.position = 1
        expect(assets[2].Context.position).to.equal(nil)
    end)

    it("getAssetCategoryName", function()
        expect(AssetAnalytics.getAssetCategoryName(Enum.AssetType.Model.Value)).to.equal("Model")
        expect(AssetAnalytics.getAssetCategoryName(-1)).to.equal("")
    end)

    it("logImpression", function()
        local stubPageInfo = getStubPageInfo()
        local assets = getStubAssets()

        local assetAnalytics = AssetAnalytics.mock()
        local stubSenders: any = assetAnalytics.senders
        local sendEventDeferredCalls = stubSenders.sendEventDeferredCalls

        -- Ignores assets with no context
        assetAnalytics:logImpression(assets[1])
        expect(#sendEventDeferredCalls).to.equal(0)

        AssetAnalytics.addContextToAssetResults(assets, stubPageInfo)

        -- Logs an impression for a search
        assetAnalytics:logImpression(assets[1])
        expect(#sendEventDeferredCalls).to.equal(1)
        expect(sendEventDeferredCalls[1][1]).to.equal("studio")
        expect(sendEventDeferredCalls[1][2]).to.equal("toolbox")
        expect(sendEventDeferredCalls[1][3]).to.equal("MarketplaceAssetImpression")
        expect(sendEventDeferredCalls[1][4].assetId).to.equal(tostring(assets[1].Asset.Id))
        expect(sendEventDeferredCalls[1][4].page).to.equal("1")
        expect(sendEventDeferredCalls[1][4].category).to.equal("MyModelsExceptPackage")
        expect(sendEventDeferredCalls[1][4].assetType).to.equal("Model")

        -- Does not log an impression twice for the same search
        assetAnalytics:logImpression(assets[1])
        expect(#sendEventDeferredCalls).to.equal(1)

        -- Logs a new impression for a different asset in the same search
        assetAnalytics:logImpression(assets[2])
        expect(#sendEventDeferredCalls).to.equal(2)

        -- Logs a new impression if the asset is seen in a new search
        assets[1].Context.searchId = "foo"
        assetAnalytics:logImpression(assets[1])
        expect(#sendEventDeferredCalls).to.equal(3)
    end)

    it("logPreview", function()
        local stubPageInfo = getStubPageInfo()
        local assets = getStubAssets()

        AssetAnalytics.addContextToAssetResults(assets, stubPageInfo)

        local assetAnalytics = AssetAnalytics.mock()
        local stubSenders: any = assetAnalytics.senders
        local sendEventDeferredCalls = stubSenders.sendEventDeferredCalls

        -- Ignores assets with no context
        assetAnalytics:logPreview(assets[1])
        expect(#sendEventDeferredCalls).to.equal(1)
        expect(sendEventDeferredCalls[1][1]).to.equal("studio")
        expect(sendEventDeferredCalls[1][2]).to.equal("toolbox")
        expect(sendEventDeferredCalls[1][3]).to.equal("MarketplaceAssetPreview")
        expect(sendEventDeferredCalls[1][4].assetId).to.equal(tostring(assets[1].Asset.Id))
        expect(sendEventDeferredCalls[1][4].page).to.equal("1")
        expect(sendEventDeferredCalls[1][4].category).to.equal("MyModelsExceptPackage")
        expect(sendEventDeferredCalls[1][4].assetType).to.equal("Model")
    end)
end
