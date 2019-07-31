return function()
	local Plugin = script.Parent.Parent.Parent
	local Cryo = require(Plugin.Packages.Cryo)
	local testImmutability = require(Plugin.Src.TestHelpers.testImmutability)

	local Reducer = require(script.parent.ExistingGame)

	it("should return a table with the correct members", function()
		local state = Reducer(nil, {})

		expect(type(state)).to.equal("table")
		expect(state.games).to.ok()
		expect(state.gamesLock).to.be.ok()
	end)

	describe("SetGames action", function()
		local SetGames = require(Plugin.Src.Actions.SetGames)

		it("should validate its inputs", function()
			expect(function()
				SetGames("game1")
			end).to.throw()

			expect(function()
				SetGames(Cryo.None)
			end).to.throw()
		end)

		it("should not mutate the state", function()
			testImmutability(Reducer, SetGames(nil))
			testImmutability(Reducer, SetGames({}))
			testImmutability(Reducer, SetGames({ nil, }))
			testImmutability(Reducer, SetGames({ g = 10, }))
			testImmutability(Reducer, SetGames({ g = 10, }))
		end)

		it("should set loading", function()
			local state = Reducer(nil, {})
			expect(Cryo.isEmpty(state.games)).to.equal(true)

			state = Reducer(state, SetGames(nil))
			expect(Cryo.isEmpty(state.games)).to.equal(true)

			state = Reducer(state, SetGames({}))
			expect(Cryo.isEmpty(state.games)).to.equal(true)

			state = Reducer(state, SetGames({ g = 10, }))
			expect(Cryo.isEmpty(state.games)).to.equal(false)
			expect(state.games.g).to.equal(10)

			state = Reducer(state, SetGames({}))
			expect(Cryo.isEmpty(state.games)).to.equal(true)
		end)
	end)

	describe("SetGamesLock action", function()
		local SetGamesLock = require(Plugin.Src.Actions.SetGamesLock)

		it("should validate its inputs", function()
			expect(function()
				SetGamesLock(nil)
			end).to.throw()

			expect(function()
				SetGamesLock("false")
			end).to.throw()

			expect(function()
				SetGamesLock({})
			end).to.throw()

			expect(function()
				SetGamesLock(Cryo.None)
			end).to.throw()
		end)

		it("should not mutate the state", function()
			testImmutability(Reducer, SetGamesLock(false))
			testImmutability(Reducer, SetGamesLock(true))
		end)

		it("should set loading", function()
			local state = Reducer(nil, {})
			expect(state.gamesLock).to.equal(false)

			state = Reducer(state, SetGamesLock(false))
			expect(state.gamesLock).to.equal(false)

			state = Reducer(state, SetGamesLock(true))
			expect(state.gamesLock).to.equal(true)
		end)
	end)
end
