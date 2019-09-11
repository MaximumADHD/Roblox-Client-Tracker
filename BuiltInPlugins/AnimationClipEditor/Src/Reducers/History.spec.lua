return function()
	local Plugin = script.Parent.Parent.Parent
	local Rodux = require(Plugin.Rodux)

	local MainReducer = require(script.Parent.MainReducer)
	local History = require(script.Parent.History)
	local SetAnimationData = require(Plugin.Src.Actions.SetAnimationData)

	local SetMaxWaypointSize = require(Plugin.Src.Actions.SetMaxWaypointSize)
	local SetFuture = require(Plugin.Src.Actions.SetFuture)
	local SetPast = require(Plugin.Src.Actions.SetPast)
	local AddWaypoint = require(Plugin.Src.Thunks.History.AddWaypoint)
	local Undo = require(Plugin.Src.Thunks.History.Undo)
	local Redo = require(Plugin.Src.Thunks.History.Redo)

	local testWaypoint = {
		{
			AnimationData = {
				TheFuture = "IsBright",
				Instances = {},
			},
			Tracks = {},
		},
	}

	local function createTestHistory()
		local middlewares = {Rodux.thunkMiddleware}
		local store = Rodux.Store.new(History, nil, middlewares)
		return store
	end

	local function createTestStore()
		local middlewares = {Rodux.thunkMiddleware}
		local store = Rodux.Store.new(MainReducer, nil, middlewares)
		return store
	end

	describe("SetPast", function()
		it("should set the Past", function()
			local store = createTestHistory()
			store:dispatch(SetPast({
				SomeKey = "SomeValue"
			}))

			local history = store:getState()
			expect(history).to.be.ok()
			expect(history.Past).to.be.ok()
			expect(history.Past.SomeKey).to.equal("SomeValue")
		end)
	end)

	describe("SetFuture", function()
		it("should set the Future", function()
			local store = createTestHistory()
			store:dispatch(SetFuture({
				SomeKey = "SomeValue"
			}))

			local history = store:getState()
			expect(history).to.be.ok()
			expect(history.Future).to.be.ok()
			expect(history.Future.SomeKey).to.equal("SomeValue")
		end)
	end)

	describe("SetMaxWaypointSize", function()
		it("should set the maximum waypoint size", function()
			local store = createTestHistory()
			store:dispatch(SetMaxWaypointSize(5))

			local history = store:getState()
			expect(history.MaxWaypointSize).to.equal(5)
		end)
	end)

	describe("AddWaypoint", function()
		it("should add a waypoint to Past", function()
			local store = createTestStore()
			store:dispatch(SetAnimationData({
				Instances = {},
			}))
			store:dispatch(AddWaypoint())

			local history = store:getState().History
			expect(history).to.be.ok()
			expect(history.Past).to.be.ok()
			expect(#history.Past).to.equal(1)
		end)

		it("should remove the oldest waypoint if Past is larger than MaxWaypointSize", function()
			local store = createTestStore()
			store:dispatch(SetMaxWaypointSize(2))
			store:dispatch(SetAnimationData({
				Order = "First",
				Instances = {},
			}))
			store:dispatch(AddWaypoint())
			store:dispatch(SetAnimationData({
				Order = "Second",
				Instances = {},
			}))
			store:dispatch(AddWaypoint())
			store:dispatch(SetAnimationData({
				Order = "Third",
				Instances = {},
			}))
			store:dispatch(AddWaypoint())

			local history = store:getState().History
			expect(#history.Past).to.equal(2)
			expect(history.Past[1].AnimationData.Order).to.equal("Third")
			expect(history.Past[2].AnimationData.Order).to.equal("Second")
		end)

		it("should remove all waypoints from Future", function()
			local store = createTestStore()
			store:dispatch(SetAnimationData({
				Instances = {},
			}))
			store:dispatch(SetFuture({
				Selection = {},
			}))
			store:dispatch(AddWaypoint())

			local history = store:getState().History
			expect(#history.Future).to.equal(0)
		end)
	end)

	describe("Undo", function()
		it("should replace the current AnimationData with the Past", function()
			local store = createTestStore()
			store:dispatch(SetAnimationData({
				ThePresent = "IsCool",
				Instances = {},
			}))
			store:dispatch(AddWaypoint())
			store:dispatch(SetAnimationData({
				TheFuture = "IsBright",
				Instances = {},
			}))
			store:dispatch(Undo())
			local state = store:getState()
			expect(state.AnimationData).to.be.ok()
			expect(state.AnimationData.TheFuture).never.to.be.ok()
			expect(state.AnimationData.ThePresent).to.equal("IsCool")
		end)

		it("should add the current AnimationData to the Future", function()
			local store = createTestStore()
			store:dispatch(SetAnimationData({
				ThePresent = "IsCool",
				Instances = {},
			}))
			store:dispatch(AddWaypoint())
			store:dispatch(SetAnimationData({
				TheFuture = "IsBright",
				Instances = {},
			}))
			store:dispatch(Undo())
			local state = store:getState()
			expect(state.History.Future).to.be.ok()
			expect(#state.History.Future).to.equal(1)
			expect(state.History.Future[1]).to.be.ok()
			expect(state.History.Future[1].AnimationData.TheFuture).to.equal("IsBright")
		end)

		it("should pop the top of the Past stack", function()
			local store = createTestStore()
			store:dispatch(SetAnimationData({
				Instances = {},
			}))
			store:dispatch(SetPast(testWaypoint))
			store:dispatch(Undo())
			local state = store:getState()
			expect(#state.History.Past).to.equal(0)
		end)

		it("should do nothing if there is no Past", function()
			local store = createTestStore()
			store:dispatch(SetAnimationData({
				ThePresent = "IsCool",
				Instances = {},
			}))
			store:dispatch(Undo())
			local state = store:getState()
			expect(state.AnimationData).to.be.ok()
			expect(state.AnimationData.ThePresent).to.equal("IsCool")
		end)
	end)

	describe("Redo", function()
		it("should replace the current AnimationData with the Future", function()
			local store = createTestStore()
			store:dispatch(SetAnimationData({
				ThePresent = "IsCool",
				Instances = {},
			}))
			store:dispatch(SetFuture(testWaypoint))
			store:dispatch(Redo())
			local state = store:getState()
			expect(state.AnimationData).to.be.ok()
			expect(state.AnimationData.ThePresent).never.to.be.ok()
			expect(state.AnimationData.TheFuture).to.equal("IsBright")
		end)

		it("should add the current AnimationData to the Past", function()
			local store = createTestStore()
			store:dispatch(SetAnimationData({
				ThePresent = "IsCool",
				Instances = {},
			}))
			store:dispatch(SetFuture(testWaypoint))
			store:dispatch(Redo())
			local state = store:getState()
			expect(state.History.Past).to.be.ok()
			expect(#state.History.Past).to.equal(1)
			expect(state.History.Past[1]).to.be.ok()
			expect(state.History.Past[1].AnimationData.ThePresent).to.equal("IsCool")
		end)

		it("should pop the top of the Future stack", function()
			local store = createTestStore()
			store:dispatch(SetAnimationData({
				Instances = {},
			}))
			store:dispatch(SetFuture(testWaypoint))
			store:dispatch(Redo())
			local state = store:getState()
			expect(#state.History.Future).to.equal(0)
		end)

		it("should do nothing if there is no Future", function()
			local store = createTestStore()
			store:dispatch(SetAnimationData({
				ThePresent = "IsCool",
				Instances = {},
			}))
			store:dispatch(Redo())
			local state = store:getState()
			expect(state.AnimationData).to.be.ok()
			expect(state.AnimationData.ThePresent).to.equal("IsCool")
		end)
	end)

	it("should be able to Undo and Redo without loss", function()
		local store = createTestStore()
		store:dispatch(SetAnimationData({
			Order = "First",
			Instances = {},
		}))
		store:dispatch(AddWaypoint())
		store:dispatch(SetAnimationData({
			Order = "Second",
			Instances = {},
		}))
		store:dispatch(Undo())
		store:dispatch(Redo())
		store:dispatch(Undo())
		store:dispatch(Redo())

		local state = store:getState()
		local history = state.History
		expect(#history.Past).to.equal(1)
		expect(#history.Future).to.equal(0)
		expect(history.Past[1].AnimationData.Order).to.equal("First")
		local data = state.AnimationData
		expect(data.Order).to.equal("Second")
	end)

	it("should work on deep tables", function()
		local store = createTestStore()
		store:dispatch(SetAnimationData({
			OrderTable = {
				Order = "First",
			},
			Instances = {},
		}))
		store:dispatch(AddWaypoint())
		store:dispatch(SetAnimationData({
			OrderTable = {
				Order = "Second",
			},
			Instances = {},
		}))
		store:dispatch(Undo())

		local state = store:getState()
		local data = state.AnimationData
		expect(data.OrderTable.Order).to.equal("First")
	end)
end