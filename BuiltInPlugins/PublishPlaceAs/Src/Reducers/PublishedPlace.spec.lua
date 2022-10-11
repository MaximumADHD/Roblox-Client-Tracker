return function()
	local Plugin = script.Parent.Parent.Parent
	local Cryo = require(Plugin.Packages.Cryo)
	local Rodux = require(Plugin.Packages.Rodux)

	local testImmutability = require(Plugin.Src.TestHelpers.testImmutability)

	local PublishedPlace = require(script.Parent.PublishedPlace)

	it("should return a table with the correct members", function()
		local state = PublishedPlace(nil, {})

		expect(type(state)).to.equal("table")
		expect(state.isPublishing).to.be.ok()
		expect(state.publishInfo).to.be.ok()
	end)

	describe("SetIsPublishing action", function()
		local SetIsPublishing = require(Plugin.Src.Actions.SetIsPublishing)
		it("should validate its inputs", function()
			expect(function()
				SetIsPublishing(nil)
			end).to.throw()

			expect(function()
				SetIsPublishing({ key = "value" })
			end).to.throw()

			expect(function()
				SetIsPublishing(1)
			end).to.throw()
		end)

		it("should preserve immutability", function()
			local immutabilityPreserved = testImmutability(PublishedPlace, SetIsPublishing(true))
			expect(immutabilityPreserved).to.equal(true)
		end)

		it("should set screen", function()
			local r = Rodux.Store.new(PublishedPlace)
			local state = r:getState()
			expect(state.isPublishing).to.equal(false)

			state = PublishedPlace(state, SetIsPublishing(true))
			expect(state.isPublishing).to.equal(true)
		end)
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
				SetPublishInfo({ id = "wow" })
			end).to.throw()

			expect(function()
				SetPublishInfo({ name = {} })
			end).to.throw()

			expect(function()
				SetPublishInfo({ parentGameId = {} })
			end).to.throw()

			expect(function()
				SetPublishInfo({ parentGameName = 3 })
			end).to.throw()

			expect(function()
				SetPublishInfo({ settings = "oof" })
			end).to.throw()

			expect(function()
				SetPublishInfo({ settings = {} })
			end).to.throw()

			expect(function()
				SetPublishInfo({ settings = { name = 3, description = 3, genre = 3, playableDevices = {} } })
			end).to.throw()

			expect(function()
				SetPublishInfo({
					settings = { name = "yeet", description = "yeet", genre = "yeet", playableDevices = {} },
				})
			end).to.throw()
		end)

		it("should not mutate the state", function()
			local immutabilityPreserved = testImmutability(PublishedPlace, SetPublishInfo({ id = 0, name = "" }))
			expect(immutabilityPreserved).to.equal(true)
			immutabilityPreserved = testImmutability(
				PublishedPlace,
				SetPublishInfo({
					id = 12,
					name = "yeet",
					parentGameName = "yote",
				})
			)
			expect(immutabilityPreserved).to.equal(true)
			immutabilityPreserved = testImmutability(
				PublishedPlace,
				SetPublishInfo({
					id = 35,
					name = "yeet",
					parentGameName = "yote",
					parentGameId = 12,
				})
			)
			expect(immutabilityPreserved).to.equal(true)
			immutabilityPreserved = testImmutability(
				PublishedPlace,
				SetPublishInfo({
					id = 0,
					name = "yeet",
					parentGameName = "yote",
					parentGameId = 0,
					settings = {
						name = "yeet",
						description = "yeet",
						genre = "yeet",
						playableDevices = { Computer = true },
					},
				})
			)
			expect(immutabilityPreserved).to.equal(true)
		end)

		it("should set id", function()
			local r = Rodux.Store.new(PublishedPlace)
			local state = r:getState()
			expect(state.publishInfo.id).to.equal(0)

			state = PublishedPlace(
				state,
				SetPublishInfo({
					id = 12,
				})
			)
			expect(state.publishInfo.id).to.equal(12)

			state = PublishedPlace(state, SetPublishInfo())
			expect(state.publishInfo.id).to.equal(0)
		end)

		it("should set the name", function()
			local r = Rodux.Store.new(PublishedPlace)
			local state = r:getState()
			expect(state.publishInfo.id).to.equal(0)

			state = PublishedPlace(
				state,
				SetPublishInfo({
					name = "name",
				})
			)
			expect(state.publishInfo.name).to.equal("name")

			state = PublishedPlace(state, SetPublishInfo())
			expect(state.publishInfo.name).to.equal("")
		end)

		it("should set parentGameId", function()
			local r = Rodux.Store.new(PublishedPlace)
			local state = r:getState()
			expect(state.publishInfo.parentGameId).to.equal(0)

			state = PublishedPlace(
				state,
				SetPublishInfo({
					parentGameId = 12,
				})
			)
			expect(state.publishInfo.parentGameId).to.equal(12)

			state = PublishedPlace(state, SetPublishInfo())
			expect(state.publishInfo.parentGameId).to.equal(0)
		end)

		it("should set the parentGameName", function()
			local r = Rodux.Store.new(PublishedPlace)
			local state = r:getState()
			expect(state.publishInfo.id).to.equal(0)

			state = PublishedPlace(
				state,
				SetPublishInfo({
					parentGameName = "name",
				})
			)
			expect(state.publishInfo.parentGameName).to.equal("name")

			state = PublishedPlace(state, SetPublishInfo())
			expect(state.publishInfo.parentGameName).to.equal("")
		end)

		it("should set settings", function()
			local r = Rodux.Store.new(PublishedPlace)
			local state = r:getState()
			expect(state.publishInfo.id).to.equal(0)

			state = PublishedPlace(
				state,
				SetPublishInfo({
					settings = {
						name = "yeet",
						description = "yeet",
						genre = "yeet",
						playableDevices = { Computer = true },
					},
				})
			)
			expect(state.publishInfo.settings.name).to.equal("yeet")
			expect(state.publishInfo.settings.description).to.equal("yeet")
			expect(state.publishInfo.settings.genre).to.equal("yeet")
			expect(#state.publishInfo.settings.playableDevices).to.equal(1)

			state = PublishedPlace(state, SetPublishInfo())
			expect(state.publishInfo.settings).to.equal(nil)
		end)
	end)
end
