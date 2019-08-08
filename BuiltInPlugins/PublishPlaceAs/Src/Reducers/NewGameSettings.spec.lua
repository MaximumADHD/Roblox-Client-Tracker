return function()
	local Plugin = script.Parent.Parent.Parent
	local Cryo = require(Plugin.Packages.Cryo)
	local testImmutability = require(Plugin.Src.TestHelpers.testImmutability)

	local Reducer = require(script.parent.NewGameSettings)

	it("should return a table with the correct members", function()
		local state = Reducer(nil, {})

		expect(type(state)).to.equal("table")
		expect(state.current).to.ok()
		expect(state.changed).to.be.ok()
		expect(state.errors).to.be.ok()
	end)

	describe("AddChange action", function()
		local AddChange = require(Plugin.Src.Actions.AddChange)

		it("should validate its inputs", function()
			expect(function()
				AddChange(nil, nil)
			end).to.throw()

			expect(function()
				AddChange("key", nil)
			end).to.throw()
		end)

		it("should not mutate the state", function()
			testImmutability(Reducer, AddChange("a", Cryo.None))
			testImmutability(Reducer, AddChange({}, {}))
			testImmutability(Reducer, AddChange("setting", "value"))
			testImmutability(Reducer, AddChange("horse", "cat"))
		end)

		it("should only set changed if it will be different than current", function()
			local key1 = {"create new keys to make sure changed works"}
			local val1 = {"changed only holds hav"}
			local key2 = {"another pair"}
			local val2 = {"to test"}
			local val3 = {"third val"}

			local state = Reducer(nil, {})
			state = Cryo.Dictionary.join(state, { current = { [key1] = val1, }})
			expect(state.current[key1]).to.equal(val1)
			expect(Cryo.isEmpty(state.changed)).to.equal(false)
			expect(state.changed.playableDevices.Computer).to.equal(true)

			state = Reducer(state, AddChange(key2, val2))
			expect(state.current[key1]).to.equal(val1)
			expect(state.current[key2]).to.equal(nil)
			expect(state.changed[key1]).to.equal(nil)
			expect(state.changed[key2]).to.equal(val2)

			state = Reducer(state, AddChange(key1, val3))
			expect(state.current[key1]).to.equal(val1)
			expect(state.current[key2]).to.equal(nil)
			expect(state.changed[key1]).to.equal(val3)
			expect(state.changed[key2]).to.equal(val2)

			state = Reducer(state, AddChange(key1, Cryo.None))
			expect(state.current[key1]).to.equal(val1)
			expect(state.current[key2]).to.equal(nil)
			expect(state.changed[key1]).to.equal(nil)
			expect(state.changed[key2]).to.equal(val2)

			state = Reducer(state, AddChange(key2, Cryo.None))
			expect(state.current[key1]).to.equal(val1)
			expect(state.current[key2]).to.equal(nil)
			expect(state.changed[key1]).to.equal(nil)
			expect(state.changed[key2]).to.equal(nil)
		end)
	end)

	describe("AddErrors action", function()
		local AddErrors = require(Plugin.Src.Actions.AddErrors)

		it("should validate its inputs", function()
			expect(function()
				AddErrors(nil)
			end).to.throw()

			expect(function()
				AddErrors("no tables")
			end).to.throw()

			expect(function()
				AddErrors(Cryo.None)
			end).to.throw()
		end)

		it("should not mutate the state", function()
			testImmutability(Reducer, AddErrors({}))
			testImmutability(Reducer, AddErrors({ a = "setting"}))
			testImmutability(Reducer, AddErrors({ cat = "horse"}))
		end)

		it("should replace the current errors", function()
			local state = Reducer(nil, {})
			expect(Cryo.isEmpty(state.errors)).to.equal(true)

			state = Reducer(state, AddErrors({first = "asdf"}))
			expect(state.errors.first).to.equal("asdf")

			local key1 = {'new key'}
			local val1 = {'new val'}
			state = Reducer(state, AddErrors({ [key1] = val1 }))

			for k,v in pairs(state.errors) do
				expect(
					(k == "first" and v == "asdf") or
					(k == key1 and v == val1)
				).to.equal(true)
			end

			state = Reducer(state, AddErrors({ [key1] = Cryo.None }))
			expect(state.errors.first).to.equal("asdf")
			expect(state.errors[key1]).to.equal(nil)
		end)
	end)

end
