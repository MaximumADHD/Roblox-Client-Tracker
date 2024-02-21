return function()
    local CorePackages = game:GetService("CorePackages")
    local Roact = require(CorePackages.Roact)
    local RoactRodux = require(CorePackages.RoactRodux)
    local Store = require(CorePackages.Rodux).Store
    local DataProvider = require(script.Parent.Parent.DataProvider)

    local ProfilerExportView = require(script.Parent.ProfilerExportView)

    it("should create and destroy without errors", function()
        local store = Store.new(function()
            return {
                MainView = {
                    currTabIndex = 0
                },
                ScriptProfiler = {
                    isClientView = true,
                    usePercentages = false,
                    isExporting = true,
                    client = { isProfiling = false, data = nil, frequency = 1000,
                        timedProfilingThread = nil, timedProfilingTimerThread = nil,
                        timedProfilingDuration = 0, timedProfilingCountdown = 0,
                        isFunctionsView = false, average = 1, searchTerm = "",
                        searchFilterGraph = {}, searchFilterFlat = {},
                        rootNode = 0, rootNodeName = nil,
                        liveUpdate = false, liveUpdateThread = nil, },
                    server = { isProfiling = false, data = nil, frequency = 1000,
                        timedProfilingThread = nil, timedProfilingTimerThread = nil,
                        timedProfilingDuration = 0, timedProfilingCountdown = 0,
                        isFunctionsView = false, average = 1, searchTerm = "",
                        searchFilterGraph = {}, searchFilterFlat = {},
                        rootNode = 0, rootNodeName = nil,
                        liveUpdate = false, liveUpdateThread = nil, },
                },
            }
        end)

        local element = Roact.createElement(RoactRodux.StoreProvider, {
            store = store,
        }, {
            DataProvider = Roact.createElement(DataProvider, {}, {
                ProfilerExportView = Roact.createElement(ProfilerExportView, {
                    size = UDim2.new(),
                    tabList = {},
                })
            })
        })

        local instance = Roact.mount(element)
        Roact.unmount(instance)
    end)
end