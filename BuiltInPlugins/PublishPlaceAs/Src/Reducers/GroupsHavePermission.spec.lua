return function()
	local Plugin = script.Parent.Parent.Parent
	local Cryo = require(Plugin.Packages.Cryo)
	local testImmutability = require(Plugin.Src.TestHelpers.testImmutability)

	local Reducer = require(script.Parent.GroupsHavePermission)

	it("should return a table with the correct members", function()
		local state = Reducer(nil, {})

		expect(type(state)).to.equal("table")
		expect(state.groupInfo).to.ok()
	end)

	describe("SetGroupInfo action", function()
		local SetGroupInfo = require(Plugin.Src.Actions.SetGroupInfo)

		it("should validate its inputs", function()
			expect(function()
				SetGroupInfo("place1")
			end).to.throw()

			expect(function()
				SetGroupInfo(Cryo.None)
			end).to.throw()

			expect(function()
				SetGroupInfo({ groups = "yeet", })
			end).to.throw()

		end)

		it("should not mutate the state", function()
			testImmutability(Reducer, SetGroupInfo({ groups = {} }))
			testImmutability(Reducer, SetGroupInfo({
				groups = { {groupId = 1337, name = "yeet"} }
			}))
        end)
        
        it("should set groups", function()
			local state = Reducer(nil, {})
			expect(Cryo.isEmpty(state.groupInfo.groups)).to.equal(true)

			state = Reducer(state, SetGroupInfo({
				groups = { {groupId = 1337, name = "yeet"} }
            }))
            expect(#state.groupInfo.groups).to.equal(1)
            expect(state.groupsInfo.groups.groupId).to.equal(1337)
            expect(state.groupsInfo.groups.name).to.equal("yeet")

			state = Reducer(state, SetGroupInfo())
			expect(Cryo.isEmpty(state.groupInfo.groups)).to.equal(true)
        end)       
	end)

end