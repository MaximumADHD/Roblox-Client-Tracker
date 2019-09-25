return function()
	local Plugin = script.Parent.Parent.Parent
	local Cryo = require(Plugin.Packages.Cryo)
	local testImmutability = require(Plugin.Src.TestHelpers.testImmutability)

	local Reducer = require(script.parent.PublishedPlace)

	it("should return a table with the correct members", function()
		local state = Reducer(nil, {})

		expect(type(state)).to.equal("table")
		expect(state.publishInfo).to.ok()
	end)

	describe("SetPublishInfo action", function()
		local SetPublishInfo = require(Plugin.Src.Actions.SetPublishInfo)

		it("should validate its inputs", function()
			expect(function()
				SetPublishInfo("place1")
			end).to.throw()

			expect(function()
				SetPublishInfo(Cryo.None)
			end).to.throw()

			expect(function()
				SetPublishInfo({ id = "wow", })
			end).to.throw()

			expect(function()
				SetPublishInfo({ name = {}, })
			end).to.throw()

			expect(function()
				SetPublishInfo({ parentGameId = {}, })
			end).to.throw()

			expect(function()
				SetPublishInfo({ parentGameName = 3, })
			end).to.throw()

			expect(function()
				SetPublishInfo({ settings = "oof", })
			end).to.throw()

			expect(function()
				SetPublishInfo({ settings = {}, })
			end).to.throw()

			expect(function()
				SetPublishInfo({ settings = {name = 3, description = 3, genre = 3, playableDevices = {} }, })
			end).to.throw()

			expect(function()
				SetPublishInfo({ settings = {name = "yeet", description = "yeet", genre = "yeet", playableDevices = {} }, })
			end).to.throw()
		end)

		it("should not mutate the state", function()
			testImmutability(Reducer, SetPublishInfo({ id = 0, name = ""}))
			testImmutability(Reducer, SetPublishInfo({
				id = 12,
				name = "yeet",
				parentGameName = "yote",
			}))
			testImmutability(Reducer, SetPublishInfo({
				id = 35,
				name = "yeet",
				parentGameName = "yote",
				parentGameId = 12,
			}))
			testImmutability(Reducer, SetPublishInfo({
				id = 0,
				name = "yeet",
				parentGameName = "yote",
				parentGameId = 0,
				settings = {name = "yeet", description = "yeet", genre = "yeet", playableDevices = { Computer = true, } },
			}))
        end)
        
        it("should set id", function()
			local state = Reducer(nil, {})
			expect(state.publishInfo.id).to.equal(0)

			state = Reducer(state, SetPublishInfo({
				id = 12,
			}))
			expect(state.publishInfo.id).to.equal(12)

			state = Reducer(state, SetPublishInfo())
			expect(state.publishInfo.id).to.equal(0)
        end)
        
        it("should set the name", function()
			local state = Reducer(nil, {})
			expect(state.publishInfo.id).to.equal(0)

			state = Reducer(state, SetPublishInfo({
				name = "name",
			}))
			expect(state.publishInfo.name).to.equal("name")

			state = Reducer(state, SetPublishInfo())
			expect(state.publishInfo.name).to.equal("")
		end)

		it("should set parentGameId", function()
			expect(state.publishInfo.parentGameId).to.equal(0)

			state = Reducer(state, SetPublishInfo({
				parentGameId = 12,
			}))
			expect(state.publishInfo.parentGameId).to.equal(12)

			state = Reducer(state, SetPublishInfo())
			expect(state.publishInfo.parentGameId).to.equal(0)
        end)

		it("should set the parentGameName", function()
			local state = Reducer(nil, {})
			expect(state.publishInfo.id).to.equal(0)

			state = Reducer(state, SetPublishInfo({
				parentGameName = "name",
			}))
			expect(state.publishInfo.parentGameName).to.equal("name")

			state = Reducer(state, SetPublishInfo())
			expect(state.publishInfo.parentGameName).to.equal("")
		end)

		it("should set settings", function()
			local state = Reducer(nil, {})
			expect(state.publishInfo.id).to.equal(0)

			state = Reducer(state, SetPublishInfo({
				settings = {name = "yeet", description = "yeet", genre = "yeet", playableDevices = { Computer = true, } },
			}))
			expect(state.publishInfo.settings.name).to.equal("yeet")
			expect(state.publishInfo.settings.description).to.equal("yeet")
			expect(state.publishInfo.settings.genre).to.equal("yeet")
			expect(#state.publishInfo.settings.playableDevices).to.equal(1)

			state = Reducer(state, SetPublishInfo())
			expect(state.publishInfo.settings).to.equal(nil)
		end)

		
	end)

end