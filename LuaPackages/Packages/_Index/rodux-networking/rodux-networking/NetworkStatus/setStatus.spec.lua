return function()
	local Freeze = require(script.Parent.Freeze)
	local EnumNetworkStatus = require(script.Parent.EnumNetworkStatus)
	local Promise = require(script.Parent.Promise)
	local setStatus = require(script.Parent.setStatus)({
		keyPath = "testingKeyPath",
	})
	local mockStore = require(script.Parent.Parent.mockStore)

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
		})

		describe("GIVEN multiple ids with a valid keymapper and promise function", function()
			local ids = { "123", "456", "789" }
			local keymapper = function(id)
				return "key" .. tostring(id)
			end

			describe("WHEN there are no ongoing requests", function()
				it("SHOULD not filter any ids", function()
					roduxStore:setState({
						testingKeyPath = Freeze.UnorderedMap.new({}),
					})

					local promiseFunction = function(store, filteredIds)
						expect(store).to.be.ok()
						expect(#filteredIds).to.equal(#ids)
						return Promise.resolve(filteredIds)
					end

					setStatus(roduxStore, ids, keymapper, promiseFunction)
				end)

				it("SHOULD only dispatch relevant actions", function()
					expect(#actionHistory).to.equal(2)

					local secondToLastAction = actionHistory[#actionHistory - 1]
					expect(secondToLastAction).to.be.ok()
					expect(type(secondToLastAction)).to.equal("table")
					expect(secondToLastAction.type).to.equal("networkStatus:testingKeyPath")
					expect(secondToLastAction.status).to.equal(EnumNetworkStatus.Fetching)

					local lastAction = actionHistory[#actionHistory]
					expect(lastAction).to.be.ok()
					expect(type(lastAction)).to.equal("table")
					expect(lastAction.type).to.equal("networkStatus:testingKeyPath")
					expect(lastAction.status).to.equal(EnumNetworkStatus.Done)
				end)
			end)

			describe("WHEN there is already an ongoing request", function()
				it("SHOULD filter the ids that are currently ongoing", function()
					actionHistory = {}
					roduxStore:setState({
						testingKeyPath = Freeze.UnorderedMap.new({
							[keymapper("123")] = EnumNetworkStatus.Fetching,
							[keymapper("456")] = EnumNetworkStatus.Fetching,
							[keymapper("789")] = EnumNetworkStatus.Fetching,
						}),
					})
					local promiseFunction = function(store, filteredIds)
						expect(store).to.be.ok()
						expect(#filteredIds).to.equal(0)
						return Promise.resolve(filteredIds)
					end

					setStatus(roduxStore, ids, keymapper, promiseFunction)
				end)

				it("SHOULD still fire any actions if there are no ids", function()
					expect(#actionHistory).to.equal(2)
				end)
			end)
		end)
	end)
end
