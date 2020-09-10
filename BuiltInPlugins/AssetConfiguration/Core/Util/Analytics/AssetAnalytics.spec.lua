--!strict
type Array<T> = {[number]: T};

return function() 

    local FFlagToolboxNewAssetAnalytics = game:GetFastFlag("ToolboxNewAssetAnalytics")
    local FFlagToolboxNewInsertAnalytics = game:GetFastFlag("ToolboxNewInsertAnalytics")

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
        expect(sendEventDeferredCalls[1][2]).to.equal("Marketplace")
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
        expect(sendEventDeferredCalls[1][2]).to.equal("Marketplace")
        expect(sendEventDeferredCalls[1][3]).to.equal("MarketplaceAssetPreview")
        expect(sendEventDeferredCalls[1][4].assetId).to.equal(tostring(assets[1].Asset.Id))
        expect(sendEventDeferredCalls[1][4].page).to.equal("1")
        expect(sendEventDeferredCalls[1][4].category).to.equal("MyModelsExceptPackage")
        expect(sendEventDeferredCalls[1][4].assetType).to.equal("Model")
    end)

    describe("logInsert", function()
        if not FFlagToolboxNewInsertAnalytics then
            return
        end

        local oldDelays
        local delays

        local oldSchedule
        local scheduleStub
        local scheduleCalls: Array<any>

        -- TODO STM-151: Re-enable Luau Type Checks when Luau bugs are fixed
        local assetAnalytics: any
        local sendEventDeferredCalls

        local insertionMethod = "ClickInsert"

        local stubParent
        local stubInstance
        
        local function runScheduleTo(seconds: number)
            local n = #scheduleCalls
            for i = 1, n do
                local job: any = scheduleCalls[i]
                if job and job[1] <= seconds then
                    job[2]()
                    scheduleCalls[i] = nil
                end
            end
        end

        beforeEach(function()
            oldDelays = AssetAnalytics.InsertRemainsCheckDelays
            delays = {30, 600}
            AssetAnalytics.InsertRemainsCheckDelays = delays

            oldSchedule = AssetAnalytics.schedule
            scheduleCalls = {}
            scheduleStub = function(...)
                table.insert(scheduleCalls, {...})
            end
            AssetAnalytics.schedule = scheduleStub

            assetAnalytics = AssetAnalytics.mock()

            local stubSenders: any = assetAnalytics.senders
            sendEventDeferredCalls = stubSenders.sendEventDeferredCalls

            stubInstance = Instance.new("Part")
            stubParent = Instance.new("Model")
            stubInstance.Parent = stubParent
        end)

        afterEach(function()
            AssetAnalytics.InsertRemainsCheckDelays = oldDelays
            AssetAnalytics.schedule = oldSchedule

            if stubParent then
                stubParent:Destroy()
            end
        end)

        it("logs and schedules nothing if asset is not trackable", function()
            local assets = getStubAssets()
    
            assetAnalytics:logInsert(assets[1], insertionMethod, stubInstance)

            expect(#sendEventDeferredCalls).to.equal(0)
            expect(#scheduleCalls).to.equal(0)
        end)

        describe("with trackable asset context", function()
            local asset

            beforeEach(function()
                local stubPageInfo = getStubPageInfo()
                local assets = getStubAssets()
                AssetAnalytics.addContextToAssetResults(assets, stubPageInfo)
                asset = assets[1]
            end)

            it("schedules nothing if instance is not passed", function()
                assetAnalytics:logInsert(asset, insertionMethod)
    
                expect(#sendEventDeferredCalls).to.equal(1)
                expect(#scheduleCalls).to.equal(0)
            end)

            it("logs insert and schedules and logs remains events", function()
                assetAnalytics:logInsert(asset, insertionMethod, stubInstance)

                expect(#sendEventDeferredCalls).to.equal(1)
                expect(sendEventDeferredCalls[1][1]).to.equal("studio")
                expect(sendEventDeferredCalls[1][2]).to.equal("Marketplace")
                expect(sendEventDeferredCalls[1][3]).to.equal("MarketplaceInsert")
                expect(sendEventDeferredCalls[1][4].assetId).to.equal(tostring(asset.Asset.Id))
                expect(sendEventDeferredCalls[1][4].method).to.equal(insertionMethod)

                expect(#scheduleCalls).to.equal(#delays)
                expect(scheduleCalls[1][1]).to.equal(delays[1])
                expect(scheduleCalls[2][1]).to.equal(delays[2])

                -- Run all scheduled tracks
                runScheduleTo(delays[#delays])
                expect(#sendEventDeferredCalls).to.equal(3)

                expect(sendEventDeferredCalls[2][1]).to.equal("studio")
                expect(sendEventDeferredCalls[2][2]).to.equal("Marketplace")
                expect(sendEventDeferredCalls[2][3]).to.equal("MarketplaceInsertRemains" .. tostring(delays[1]))
                expect(sendEventDeferredCalls[2][4].assetId).to.equal(tostring(asset.Asset.Id))
                expect(sendEventDeferredCalls[2][4].method).to.equal(insertionMethod)

                expect(sendEventDeferredCalls[3][1]).to.equal("studio")
                expect(sendEventDeferredCalls[3][2]).to.equal("Marketplace")
                expect(sendEventDeferredCalls[3][3]).to.equal("MarketplaceInsertRemains" .. tostring(delays[2]))
                expect(sendEventDeferredCalls[3][4].assetId).to.equal(tostring(asset.Asset.Id))
                expect(sendEventDeferredCalls[3][4].method).to.equal(insertionMethod)
            end)

            it("logs remains, then deleted event if deleted in interim", function()
                assetAnalytics:logInsert(asset, insertionMethod, stubInstance)

                expect(#sendEventDeferredCalls).to.equal(1)
                expect(sendEventDeferredCalls[1][1]).to.equal("studio")
                expect(sendEventDeferredCalls[1][2]).to.equal("Marketplace")
                expect(sendEventDeferredCalls[1][3]).to.equal("MarketplaceInsert")
                expect(sendEventDeferredCalls[1][4].assetId).to.equal(tostring(asset.Asset.Id))
                expect(sendEventDeferredCalls[1][4].method).to.equal(insertionMethod)

                expect(#scheduleCalls).to.equal(#delays)
                expect(scheduleCalls[1][1]).to.equal(delays[1])
                expect(scheduleCalls[2][1]).to.equal(delays[2])

                -- Run the first scheduled track
                runScheduleTo(delays[1])
                expect(#sendEventDeferredCalls).to.equal(2)
                expect(sendEventDeferredCalls[2][1]).to.equal("studio")
                expect(sendEventDeferredCalls[2][2]).to.equal("Marketplace")
                expect(sendEventDeferredCalls[2][3]).to.equal("MarketplaceInsertRemains" .. tostring(delays[1]))
                expect(sendEventDeferredCalls[2][4].assetId).to.equal(tostring(asset.Asset.Id))
                expect(sendEventDeferredCalls[2][4].method).to.equal(insertionMethod)

                -- Destroy the instance and run to the next scheduled track, which should be a deleted event
                stubInstance:Destroy()
                runScheduleTo(delays[2])
                expect(#sendEventDeferredCalls).to.equal(3)
                expect(sendEventDeferredCalls[3][1]).to.equal("studio")
                expect(sendEventDeferredCalls[3][2]).to.equal("Marketplace")
                expect(sendEventDeferredCalls[3][3]).to.equal("MarketplaceInsertDeleted" .. tostring(delays[2]))
                expect(sendEventDeferredCalls[3][4].assetId).to.equal(tostring(asset.Asset.Id))
                expect(sendEventDeferredCalls[3][4].method).to.equal(insertionMethod)
            end)

            it("only logs a single event for multiple root-level instances", function()
                local instances: Array<any> = {stubInstance, Instance.new("Part")}
                assetAnalytics:logInsert(asset, insertionMethod, instances)

                expect(#sendEventDeferredCalls).to.equal(1)
                expect(#scheduleCalls).to.equal(#delays)

                runScheduleTo(delays[#delays])
                expect(#sendEventDeferredCalls).to.equal(3)
            end)
        end)
    
    end)
end
