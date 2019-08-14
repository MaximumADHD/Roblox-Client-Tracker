return function()
	local Plugin = script.Parent.Parent.Parent
	local Cryo = require(Plugin.Packages.Cryo)
	local testImmutability = require(Plugin.Src.TestHelpers.testImmutability)

	local Reducer = require(script.parent.ExistingGame)

	it("should return a table with the correct members", function()
		local state = Reducer(nil, {})

		expect(type(state)).to.equal("table")
		expect(state.gameInfo).to.ok()
		expect(state.gameInfo.games).to.ok()
		expect(state.placeInfo).to.ok()
		expect(state.placeInfo.places).to.ok()
	end)

	describe("SetGameInfo action", function()
		local SetGameInfo = require(Plugin.Src.Actions.SetGameInfo)

		it("should validate its inputs", function()
			expect(function()
				SetGameInfo("game1")
			end).to.throw()

			expect(function()
				SetGameInfo(Cryo.None)
			end).to.throw()

			expect(function()
				SetGameInfo({ games = true, })
			end).to.throw()

			expect(function()
				SetGameInfo({ previousPageCursor = {}, })
			end).to.throw()

			expect(function()
				SetGameInfo({ nextPageCursor = {}, })
			end).to.throw()
		end)

		it("should not mutate the state", function()
			testImmutability(Reducer, SetGameInfo(nil))
			testImmutability(Reducer, SetGameInfo({}))
			testImmutability(Reducer, SetGameInfo({
				games = { {name = "a"}, { name = "b", }},
				nextPageCursor = "not actually a cursor?",
				previousPageCursor = "goto magick",
			}))
		end)

		it("should set games", function()
			local state = Reducer(nil, {})
			expect(Cryo.isEmpty(state.gameInfo.games)).to.equal(true)

			state = Reducer(state, SetGameInfo({
				games = { { name = "game 1", }},
			}))
			expect(#state.gameInfo.games).to.equal(1)
			expect(state.gameInfo.games[1].name == "game 1").to.equal(true)

			state = Reducer(state, SetGameInfo())
			expect(Cryo.isEmpty(state.gameInfo.games)).to.equal(true)
		end)

		it("should set the cursors", function()
			local state = Reducer(nil, {})
			expect(Cryo.isEmpty(state.gameInfo.games)).to.equal(true)

			local a = tostring(math.random())
			local b = tostring(math.random())
			state = Reducer(state, SetGameInfo({
				nextPageCursor = a,
				previousPageCursor = b,
			}))
			expect(state.gameInfo.nextPageCursor).to.equal(a)
			expect(state.gameInfo.previousPageCursor).to.equal(b)

			state = Reducer(state, SetGameInfo({games = { "some random value", },}))
			expect(state.gameInfo.nextPageCursor).to.equal(nil)
			expect(state.gameInfo.previousPageCursor).to.equal(nil)
		end)
	end)

	describe("SetPlaceInfo action", function()
		local SetPlaceInfo = require(Plugin.Src.Actions.SetPlaceInfo)

		it("should validate its inputs", function()
			expect(function()
				SetPlaceInfo("place1")
			end).to.throw()

			expect(function()
				SetPlaceInfo(Cryo.None)
			end).to.throw()

			expect(function()
				SetPlaceInfo({ places = true, })
			end).to.throw()

			expect(function()
				SetPlaceInfo({ previousPageCursor = {}, })
			end).to.throw()

			expect(function()
				SetPlaceInfo({ nextPageCursor = {}, })
			end).to.throw()

			expect(function()
				SetPlaceInfo({ parentGame = {}, })
			end).to.throw()

			expect(function()
				SetPlaceInfo({ parentGame = { universeId = 10 }, })
			end).to.throw()

			expect(function()
				SetPlaceInfo({ parentGame = 3, })
			end).to.throw()
		end)

		it("should not mutate the state", function()
			testImmutability(Reducer, SetPlaceInfo(nil))
			testImmutability(Reducer, SetPlaceInfo({}))
			testImmutability(Reducer, SetPlaceInfo({
				places = { {name = "a"}, { name = "b", }},
				parentGame = { name = "asdf", universeId = 24, },
			}))
			testImmutability(Reducer, SetPlaceInfo({
				places = { {name = "a"}, { name = "b", }},
				nextPageCursor = "not actually a cursor?",
				previousPageCursor = "goto magick",
			}))
		end)

		it("should set the parentGame source", function()
			local state = Reducer(nil, {})
			expect(Cryo.isEmpty(state.placeInfo.places)).to.equal(true)

			state = Reducer(state, SetPlaceInfo({
				parentGame = { name = "asd", universeId = 13, }
			}))
			expect(state.placeInfo.parentGame.name).to.equal("asd")
			expect(state.placeInfo.parentGame.universeId).to.equal(13)

			state = Reducer(state, SetPlaceInfo())
			expect(state.placeInfo.parentGame).to.equal(nil)
		end)

		it("should set places", function()
			local state = Reducer(nil, {})
			expect(Cryo.isEmpty(state.placeInfo.places)).to.equal(true)

			state = Reducer(state, SetPlaceInfo({
				places = { { name = "place 1", }},
			}))
			expect(#state.placeInfo.places).to.equal(1)
			expect(state.placeInfo.places[1].name == "place 1").to.equal(true)

			state = Reducer(state, SetPlaceInfo())
			expect(Cryo.isEmpty(state.placeInfo.places)).to.equal(true)
		end)

		it("should set the cursors", function()
			local state = Reducer(nil, {})
			expect(Cryo.isEmpty(state.placeInfo.places)).to.equal(true)

			local a = tostring(math.random())
			local b = tostring(math.random())
			state = Reducer(state, SetPlaceInfo({
				nextPageCursor = a,
				previousPageCursor = b,
			}))
			expect(state.placeInfo.nextPageCursor).to.equal(a)
			expect(state.placeInfo.previousPageCursor).to.equal(b)

			state = Reducer(state, SetPlaceInfo({places = { "some random value", },}))
			expect(state.placeInfo.nextPageCursor).to.equal(nil)
			expect(state.placeInfo.previousPageCursor).to.equal(nil)
		end)
	end)

end
