return function()
	local CorePackages = game:GetService("CorePackages")
	local Roact = require(CorePackages.Roact)
	local RoactRodux = require(CorePackages.RoactRodux)
	local Store = require(CorePackages.Rodux).Store
	local JestGlobals = require(CorePackages.JestGlobals)
	local jestExpect = JestGlobals.expect

	local DataProvider = require(script.Parent.DataProvider)
	local DataConsumer = require(script.Parent.DataConsumer)

	it("should pass requested context from DataProvider to DataConsumer", function()
		local DataComponent = Roact.Component:extend("DataComponent")

		local capturedLogData
		local capturedMemoryData
		local capturedServerStatsData
		local capturedServerLogData

		function DataComponent:render()
			capturedLogData = self.props.ClientLogData
			capturedMemoryData = self.props.ClientMemoryData
			capturedServerStatsData = self.props.ServerStatsData
			capturedServerLogData = self.props.ServerLogData
			return nil
		end

		local TestDataConsumer = DataConsumer(DataComponent, "ClientLogData", "ServerLogData", "ClientMemoryData")

		local store = Store.new(function()
			return {
				MainView = {
					isDeveloperView = true,
				},
			}
		end)

		local element = Roact.createElement(RoactRodux.StoreProvider, {
			store = store,
		}, {
			DataProvider = Roact.createElement(DataProvider, {}, {
				TestDataConsumer = Roact.createElement(TestDataConsumer)
			})
		})

		local instance = Roact.mount(element)

		-- We passed these in as keys, to the DataConsumer, we should get something
		jestExpect(capturedLogData).toBeDefined()
		jestExpect(capturedLogData._logData).toBeDefined()
		jestExpect(capturedMemoryData).toBeDefined()
		jestExpect(capturedMemoryData._memoryData).toBeDefined()
		jestExpect(capturedServerLogData).toBeDefined()
		jestExpect(capturedServerLogData._logData).toBeDefined()

		-- We did not pass in the ServerStatsData key, this should be nil
		jestExpect(capturedServerStatsData).toBeNil()

		Roact.unmount(instance)
	end)

	it("should correctly pass all DevConsole data", function()
		local DataComponent = Roact.Component:extend("DataComponent")

		local Components = script.Parent.Parent.Components
		local LogData = require(Components.Log.LogData)
		local ClientMemoryData = require(Components.Memory.ClientMemoryData)
		local ServerMemoryData = require(Components.Memory.ServerMemoryData)
		local NetworkData = require(Components.Network.NetworkData)
		local ServerScriptsData = require(Components.Scripts.ServerScriptsData)
		local DataStoresData = require(Components.DataStores.DataStoresData)
		local ServerStatsData = require(Components.ServerStats.ServerStatsData)
		local ActionBindingsData = require(Components.ActionBindings.ActionBindingsData)
		local ServerJobsData = require(Components.ServerJobs.ServerJobsData)
		local DebugVisualizationsData = require(Components.DebugVisualizations.DebugVisualizationsData)

		local DevConsoleData = {
			ClientLogData = LogData.new(true),
			ServerLogData = LogData.new(false),
			ClientMemoryData = ClientMemoryData.new(),
			ServerMemoryData = ServerMemoryData.new(),
			ClientNetworkData = NetworkData.new(true),
			ServerNetworkData = NetworkData.new(false),
			ServerScriptsData = ServerScriptsData.new(),
			DataStoresData = DataStoresData.new(),
			ServerStatsData = ServerStatsData.new(),
			ActionBindingsData = ActionBindingsData.new(),
			ServerJobsData = ServerJobsData.new(),
			DebugVisualizationsData = DebugVisualizationsData.new(),
		}

		local capturedProps

		function DataComponent:render()
			capturedProps = self.props
			return nil
		end

		local TestDataConsumer = DataConsumer(DataComponent,
			"ClientLogData",
			"ServerLogData",
			"ClientMemoryData",
			"ServerMemoryData",
			"ClientNetworkData",
			"ServerNetworkData",
			"ServerScriptsData",
			"DataStoresData",
			"ServerStatsData",
			"ActionBindingsData",
			"ServerJobsData",
			"DebugVisualizationsData"
		)

		local store = Store.new(function()
			return {
				MainView = {
					isDeveloperView = true,
				},
			}
		end)

		local element = Roact.createElement(RoactRodux.StoreProvider, {
			store = store,
		}, {
			DataProvider = Roact.createElement(DataProvider, {}, {
				TestDataConsumer = Roact.createElement(TestDataConsumer)
			})
		})

		local instance = Roact.mount(element)

		-- Expect that the context we received is the same as the expected context
		for key, expectedDevConsoleProp in pairs(DevConsoleData) do
			local actualDevConsoleProp = capturedProps[key]
			jestExpect(type(actualDevConsoleProp)).toEqual("table")
			jestExpect(type(expectedDevConsoleProp)).toEqual("table")

			for field, _ in pairs(expectedDevConsoleProp) do
				jestExpect(actualDevConsoleProp[field]).toBeDefined()
			end
		end

		Roact.unmount(instance)
	end)

	it("should pass props through DataConsumer wrapper", function()
		local DataComponent = Roact.Component:extend("DataComponent")

		local capturedTestProp

		function DataComponent:render()
			capturedTestProp = self.props.testProp
			return nil
		end

		local TestDataConsumer = DataConsumer(DataComponent, "ClientLogData")

		local store = Store.new(function()
			return {
				MainView = {
					isDeveloperView = true,
				},
			}
		end)

		local element = Roact.createElement(RoactRodux.StoreProvider, {
			store = store,
		}, {
			DataProvider = Roact.createElement(DataProvider, {}, {
				TestDataConsumer = Roact.createElement(TestDataConsumer, {
					testProp = "test prop"
				})
			})
		})

		local instance = Roact.mount(element)

		-- We should correctly pass down the props passed into our DataConsumer wrapper
		jestExpect(capturedTestProp).toEqual("test prop")

		Roact.unmount(instance)
	end)

	it("should mount with name provided in Roact.mount", function()
		local Parent = Instance.new("Folder")

		local DataComponent = function()
			return Roact.createElement("Frame")
		end

		local TestDataConsumer = DataConsumer(DataComponent, "ClientLogData")

		local store = Store.new(function()
			return {
				MainView = {
					isDeveloperView = true,
				},
			}
		end)

		local element = Roact.createElement(RoactRodux.StoreProvider, {
			store = store,
		}, {
			MountedDataProvider = Roact.createElement(DataProvider, {}, {
				TestDataConsumer = Roact.createElement(TestDataConsumer)
			})
		})

		local instance = Roact.mount(element, Parent, "MountedDataProvider")

		jestExpect(Parent:FindFirstChild("MountedDataProvider")).toBeDefined()

		Roact.unmount(instance)

		jestExpect(Parent:FindFirstChild("MountedDataProvider")).toBeNil()
	end)
end
