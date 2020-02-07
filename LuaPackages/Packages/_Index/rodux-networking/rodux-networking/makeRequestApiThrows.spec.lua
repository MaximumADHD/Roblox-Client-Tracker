return function()
	local root = script.Parent
	local Freeze = require(root.Freeze)
	local EnumNetworkStatus = require(root.NetworkStatus.EnumNetworkStatus)
	local Promise = require(root.Promise)
	local mockNetworkImpl = function(url, method, options)
		return Promise.reject("networkError")
	end
	local mockStore = require(root.mockStore)

	local GET = require(root.makeRequestApi)({
		methodType = "GET",
		keyPath = "hello.world",
		networkImpl = mockNetworkImpl,
	})

	local function noOpt()
	end

	describe("GIVEN a store", function()
		local actionHistory = {}
		local roduxStore = mockStore.config({
			dispatch = function(self, action)
				if type(action) == "function" then
					return action(self)
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

			describe("WHEN thunk is dispatched", function()
				it("SHOULD invoke builder function given to GET constructor", function()
					roduxStore:dispatch(mockGETChannels.API("announcements")):catch(noOpt)
					expect(hasBuilderFunctionRun).to.equal(true)
					expect(receivedChannelArgument).to.equal("announcements")
				end)

				it("SHOULD dispatch network status actions and payload action", function()
					actionHistory = {}
					roduxStore:dispatch(mockGETChannels.API("announcements")):catch(noOpt)
					local action1 = actionHistory[1]
					expect(action1).to.be.ok()
					expect(action1.type).to.equal("networkStatus:hello.world")
					expect(action1.status).to.equal(EnumNetworkStatus.Fetching)
				end)

				it("SHOULD dispatch a failed network status action", function()
					actionHistory = {}
					roduxStore:dispatch(mockGETChannels.API("announcements")):catch(noOpt)
					local action2 = actionHistory[2]
					expect(action2).to.be.ok()
					local isFound = string.find(action2.type, "Failed")
					expect(isFound).to.be.ok()
				end)

				it("SHOULD allow the promise to be caught", function()
					local itWasCaught = false
					roduxStore:dispatch(mockGETChannels.API("announcements")):catch(function()
						itWasCaught = true
					end)

					assert(itWasCaught, "Promise was not able to be caught when network fails")
				end)
			end)
		end)
	end)
end