return function()
	local Modules = game:GetService("CoreGui").RobloxGui.Modules
	local BodyColors = require(Modules.LuaApp.Reducers.AvatarEditor.BodyColors)
	local SetBodyColors = require(Modules.LuaApp.Actions.SetBodyColors)
	local SetOutfit = require(Modules.LuaApp.Actions.SetOutfit)

	it("all colors should be 194 by default", function()
		local state = BodyColors(nil, {})

		expect(state).to.be.a("table")
		expect(state.HeadColor).to.equal(194)
		expect(state.LeftArmColor).to.equal(194)
		expect(state.LeftLegColor).to.equal(194)
		expect(state.RightArmColor).to.equal(194)
		expect(state.RightLegColor).to.equal(194)
		expect(state.TorsoColor).to.equal(194)
	end)

	it("should be updated using SetBodyColors", function()
		local state = BodyColors(nil, {})

        state = BodyColors(state, SetBodyColors({
			HeadColor = 100,
			LeftArmColor = 120,
			LeftLegColor = 160,
			RightArmColor = 140,
			RightLegColor = 180,
			TorsoColor = 100
		}))

        expect(state).to.be.a("table")
        expect(state.HeadColor).to.equal(100)
        expect(state.LeftArmColor).to.equal(120)
        expect(state.LeftLegColor).to.equal(160)
        expect(state.RightArmColor).to.equal(140)
        expect(state.RightLegColor).to.equal(180)
        expect(state.TorsoColor).to.equal(100)
	end)

    it("should be updated using SetOutfit", function()
        local state = BodyColors(nil, {})

        state = BodyColors(state, SetOutfit({}, {
            HeadColor = 100,
            LeftArmColor = 120,
            LeftLegColor = 160,
            RightArmColor = 140,
            RightLegColor = 180,
            TorsoColor = 100
        }))

        expect(state).to.be.a("table")
        expect(state.HeadColor).to.equal(100)
        expect(state.LeftArmColor).to.equal(120)
        expect(state.LeftLegColor).to.equal(160)
        expect(state.RightArmColor).to.equal(140)
        expect(state.RightLegColor).to.equal(180)
        expect(state.TorsoColor).to.equal(100)
    end)

	it("should be unchanged by other actions", function()
		local state = BodyColors(nil, {})

		state = BodyColors(state, {
            type = "Do the thing!",
            bodyColors =
            {
                HeadColor = 100,
                LeftArmColor = 120,
                LeftLegColor = 160,
                RightArmColor = 140,
                RightLegColor = 180,
                TorsoColor = 100
            }
		})

		expect(state).to.be.a("table")
		expect(state.HeadColor).to.equal(194)
		expect(state.LeftArmColor).to.equal(194)
		expect(state.LeftLegColor).to.equal(194)
		expect(state.RightArmColor).to.equal(194)
		expect(state.RightLegColor).to.equal(194)
		expect(state.TorsoColor).to.equal(194)
	end)
end