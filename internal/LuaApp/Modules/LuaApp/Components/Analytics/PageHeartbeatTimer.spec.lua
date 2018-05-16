return function()
	local Modules = game:GetService("CoreGui").RobloxGui.Modules

	local AppPage = require(Modules.LuaApp.AppPage)
	local RoactAnalytics = require(Modules.LuaApp.Services.RoactAnalytics)
	local Analytics = require(Modules.Common.Analytics)
	local Roact = require(Modules.Common.Roact)
	local Signal = require(Modules.Common.Signal)

	local PageHeartbeatTimer = require(Modules.LuaApp.Components.Analytics.PageHeartbeatTimer)
	local mockServices = require(Modules.LuaApp.TestHelpers.mockServices)

	--test helper method
	local function createMockAnalytics(initFakeEventStream)
		local analytics = Analytics.mock()
		initFakeEventStream(analytics.EventStream)

		return analytics
	end

	describe("new", function()
		it("should create and destroy without errors", function()
			local element = mockServices({
				PageHeartbeatTimer = Roact.createElement(PageHeartbeatTimer, {
					currentPageGoal = AppPage.None,
				}),
			}, {
				includeStoreProvider = true,
			})

			local instance = Roact.reify(element)
			Roact.teardown(instance)
		end)
	end)

	describe("sendHeartbeatSignal", function()
		it("should increment eventContext by one per pulse", function()

			local savedHeartbeats = {
				heartbeat1 = 0,
				heartbeat2 = 0,
			}
			local mockAnalytics = createMockAnalytics(function(eventStreamImpl)
				function eventStreamImpl:setRBXEventStream(eventContext, eventName, extraArgs)
					if eventName == "pageHeartbeat" then
						savedHeartbeats[eventContext] = savedHeartbeats[eventContext] + 1
					end
				end

				return eventStreamImpl
			end)

			local component = Roact.Component:extend("TestComponent")
			local setUseHeartBeatSignal

			function component:init()
				self.state = {
					heartBeatSignal = nil,
				}
				setUseHeartBeatSignal = function(heartBeatSignal)
					self:setState({
						heartBeatSignal = heartBeatSignal
					})
				end
			end

			function component:render()
				return Roact.createElement(PageHeartbeatTimer, {
					currentPageGoal = AppPage.None,
					sendHeartbeatSignal = self.state.heartBeatSignal,
				})
			end

			local element = mockServices({
				testComp = Roact.createElement(component),
			}, {
				includeStoreProvider = true,
				extraServices = {
					[RoactAnalytics] = mockAnalytics
				},
			})

			local instance = Roact.reify(element)

			local pulseSignal = Signal.new()
			setUseHeartBeatSignal(pulseSignal)

			pulseSignal:Fire()
			expect(savedHeartbeats.heartbeat1).to.equal(1)
			pulseSignal:Fire()
			expect(savedHeartbeats.heartbeat2).to.equal(1)
			Roact.teardown(instance)
		end)

		it("should reset eventContext to 0 when currentPageGoal changes", function()
			local savedHeartbeats = {
				heartbeat1 = 0,
				heartbeat2 = 0,
			}
			local mockAnalytics = createMockAnalytics(function(eventStreamImpl)
				function eventStreamImpl:setRBXEventStream(eventContext, eventName, extraArgs)
					if eventName == "pageHeartbeat" then
						savedHeartbeats[eventContext] = savedHeartbeats[eventContext] + 1
					end
				end

				return eventStreamImpl
			end)

			local component = Roact.Component:extend("TestComponent")
			local setUseHeartBeatSignal
			local setCurrentPage

			function component:init()
				self.state = {
					heartBeatSignal = nil,
				}
				setUseHeartBeatSignal = function(heartBeatSignal)
					self:setState({
						heartBeatSignal = heartBeatSignal
					})
				end
				setCurrentPage = function(currentPageGoal)
					self:setState({
						currentPageGoal = currentPageGoal
					})
				end
			end

			function component:render()
				return Roact.createElement(PageHeartbeatTimer, {
					currentPageGoal = self.state.currentPageGoal,
					sendHeartbeatSignal = self.state.heartBeatSignal,
				})
			end

			local element = mockServices({
				testComp = Roact.createElement(component),
			}, {
				includeStoreProvider = true,
				extraServices = {
					[RoactAnalytics] = mockAnalytics
				},
			})

			local instance = Roact.reify(element)

			local pulseSignal = Signal.new()
			setUseHeartBeatSignal(pulseSignal)

			pulseSignal:Fire()
			expect(savedHeartbeats.heartbeat1).to.equal(1)
			pulseSignal:Fire()
			expect(savedHeartbeats.heartbeat2).to.equal(1)
			setCurrentPage(AppPage.Home)
			pulseSignal:Fire()
			expect(savedHeartbeats.heartbeat1).to.equal(2)
			Roact.teardown(instance)
		end)
	end)
end