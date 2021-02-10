return function()
	local root = script.Parent
	local Freeze = require(root.Freeze)
	local EnumNetworkStatus = require(root.NetworkStatus.EnumNetworkStatus)
	local Promise = require(root.Promise)
	local mockNetworkImpl = function(url, method, options)
		return Promise.resolve({
			responseBody = "benj",
		})
	end
	local mockStore = require(root.mockStore)

	local GET = require(root.makeRequestApi)({
		keyPath = "hello.world",
		networkImpl = mockNetworkImpl,
	}, "GET")

	describe("GIVEN a store", function()
		local actionHistory = {}
		local roduxStore = mockStore.config({
			dispatch = function(self, action)
				if type(action) == "function" then
					action(self)
				else
					table.insert(actionHistory, action)
				end
			end,

			state = {
				hello = {
					world = Freeze.UnorderedMap.new({}),
				}
			}
		})

		describe("GIVEN a module script and builderFunction w/out parameters", function()
			local hasBuilderFunctionRun = false
			local receivedChannelArgument = nil
			local mockGETChannels = GET(script, function(requestBuilder, channel)
				hasBuilderFunctionRun = true
				receivedChannelArgument = channel

				return requestBuilder("example.com"):path("v1"):path("channels"):id(channel):path("messages")
			end)

			describe("GIVEN no parameters for a url", function()
				it("SHOULD return a valid thunk", function()
					local thunk = mockGETChannels.API("weather-channel")
					expect(type(thunk)).to.equal("function")
				end)

				describe("WHEN thunk is dispatched", function()

					it("SHOULD invoke builder function given to GET constructor", function()
						roduxStore:dispatch(mockGETChannels.API("announcements"))
						expect(hasBuilderFunctionRun).to.equal(true)
						expect(receivedChannelArgument).to.equal("announcements")
					end)

					it("SHOULD dispatch network status actions and payload action", function()
						actionHistory = {}
						roduxStore:dispatch(mockGETChannels.API("announcements"))
						local action1 = actionHistory[1]
						expect(action1).to.be.ok()
						expect(action1.type).to.equal("networkStatus:hello.world")
						expect(action1.status).to.equal(EnumNetworkStatus.Fetching)
					end)
				end)
			end)

			describe("Action Creators", function()
				it("SHOULD have a Succeeded action creator", function()
					expect(mockGETChannels.Succeeded).to.be.ok()
					local action = mockGETChannels.Succeeded({}, {}, {})
					expect(action).to.be.ok()
					expect(action.ids).to.be.ok()
					expect(action.responseBody).to.be.ok()
					expect(action.namedIds).to.be.ok()
				end)

				it("SHOULD have a Failed action creator", function()
					expect(mockGETChannels.Failed).to.be.ok()
					local action = mockGETChannels.Failed({}, {}, {})
					expect(action).to.be.ok()
					expect(action.ids).to.be.ok()
					expect(action.error).to.be.ok()
					expect(action.namedIds).to.be.ok()
				end)
			end)

			describe("getStatus", function()
				it("SHOULD return Done for successful network responses", function()
					local store = mockStore.config({
						state = {
							hello = {
								world = Freeze.UnorderedMap.new({
									-- key mapper would usually generate this
									["example.com/v1/channels/faq/messages"] = "testingStatus",
								}),
							}
						}
					})

					local status = mockGETChannels.getStatus(store:getState(), "faq")
					expect(status).to.equal("testingStatus")
				end)

				it("SHOULD throw for non-GET request types", function()
					local POST = require(root.makeRequestApi)({
						keyPath = "hello.world",
						networkImpl = mockNetworkImpl,
					}, "POST")

					expect(function()
						POST.getStatus({}, "testing")
					end).to.throw()
				end)
			end)
		end)
	end)
end
