return function()
	local Packages = script:FindFirstAncestor("Packages")
	local jest = require(Packages.Dev.JestRoblox).Globals
	local expect = jest.expect

	local DeveloperTools = require(Packages.DeveloperTools)
	local Roact17Worker = require(Packages.DeveloperTools.Roact17.Classes.Roact17Worker)

	local worker

	local rootInstance = {
		Name = "Root"
	}

	local mockData = {
		dataForRoots = {
			[1] = {
				commitData = {
					{
						changeDescriptions = {
							[1] = {1, {
								isFirstMount = true,
								props = {"test"},
							}}
						},
						fiberActualDurations = {
							{1, 10}
						},
						fiberSelfDurations = {
							{1, 11}
						},
					}
				}
			}
		}
	}

	local function getProfiler()
		local inspector = DeveloperTools.forLibrary("TestLibrary", {})
		local mockBridge = {}
		function mockBridge:addListener(_name, callback) end
		local mockAgent = {}
		function mockAgent:startProfiling() end
		function mockAgent:stopProfiling() end
		function mockAgent:getProfilingData() end
		local mockStore = {}
		function mockStore:getElementByID()
			return {
				key = "Test",
				displayName = "Frame"
			}
		end
		function mockStore:getRendererIDForElement()
			return 1
		end
		worker = Roact17Worker.new(inspector, "", "", {
			bridge = mockBridge,
			agent = mockAgent,
			store = mockStore,
		}, 1)
		function worker:showProfileData(data)
			self.testData = data
		end
		function worker:getHostInstance()
			return rootInstance
		end
		function worker:getHostNode()
			return {
				id = 1
			}
		end
		function worker:getPath()
			return {"1.2.3"}
		end
		return worker.profiler
	end

	local profiler

	beforeEach(function()
		profiler = getProfiler()
		profiler:setActive(true)
	end)

	afterEach(function()
		profiler:setActive(false)
		profiler:clearData()
	end)

	describe("Roact17Profiler", function()
		it('can activate', function()
			expect(profiler.active).toEqual(true)
			profiler:updateRows({
				dataForRoots = {
					[1] = {
						commitData = {}
					}
				}
			})
			expect(worker.testData).toEqual({
				componentRows = {},
				eventCount = 0,
				eventRows = {},
				instanceEventCount = 0,
				rowCount = 0,
			})
		end)
		
		it('can collect an update, preserving records when deactivated', function()
			profiler:getData({
				componentSliceStart = 1,
				componentSliceEnd = 100,
				eventSliceStart = 1,
				eventSliceEnd = 100
			})
			profiler:updateRows(mockData)
			profiler:setActive(false)
			expect(worker.testData.componentRows).toEqual({
				expect.objectContaining({
					count = 1,
					depth = 1,
					instanceId = 1,
					instanceName = "Test: Frame",
					path = {"1.2.3"},
					pathString = "Root",
					renderTime = 11,
					time = 10
				})
			})
		end)

		it('can collect an update and drill down on events', function()
			profiler:getData({
				componentSliceStart = 1,
				componentSliceEnd = 100,
				eventSliceStart = 1,
				eventSliceEnd = 100
			})
			profiler:selectInstance(1)
			profiler:updateRows(mockData)
			expect(worker.testData.eventRows).toEqual({
				expect.objectContaining({
					cause = "mount",
					details = [[{"test"} ]],
					detailsTip = [[{"test"} ]],
					log = "",
					renderTime = 11,
					time = 10,
					updateTrace = "",
				})
			})
		end)

		it('can set the search term and include / exclude a component', function()
			profiler:getData({
				componentSliceStart = 1,
				componentSliceEnd = 100,
				eventSliceStart = 1,
				eventSliceEnd = 100
			})
			profiler:setSearchTerm("Nope")
			profiler:updateRows(mockData)
			expect(worker.testData.componentRows).toEqual({})
			-- Permit lowercase
			profiler:setSearchTerm("Frame")
			profiler:updateRows(mockData)
			expect(worker.testData.componentRows).toEqual({
				expect.objectContaining({
					count = 1,
					depth = 1,
					instanceId = 1,
					instanceName = "Test: Frame",
					path = {"1.2.3"},
					pathString = "Root",
				})
			})
		end)

	end)
end
